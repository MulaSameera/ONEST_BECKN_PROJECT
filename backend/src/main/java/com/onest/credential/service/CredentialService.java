package com.onest.credential.service;

import com.onest.credential.dto.CredentialIssuanceRequest;
import com.onest.credential.dto.CredentialResponse;
import com.onest.credential.dto.EligibilityResultDto;
import com.onest.credential.entity.*;
import com.onest.credential.exception.BadRequestException;
import com.onest.credential.exception.ResourceNotFoundException;
import com.onest.credential.repository.*;
import com.onest.credential.security.UserPrincipal;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.security.SecureRandom;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.Collectors;

@Service
@Transactional
public class CredentialService {

    private final CredentialRepository credentialRepository;
    private final StudentRepository studentRepository;
    private final InstitutionRepository institutionRepository;
    private final ProgramRepository programRepository;
    private final CourseRepository courseRepository;
    private final CredentialRequestRepository requestRepository;
    private final CanonicalCredentialService canonicalService;
    private final HashService hashService;
    private final QrCodeService qrCodeService;
    private final EligibilityEngineService eligibilityEngineService;
    private final AuditService auditService;

    private final SecureRandom random = new SecureRandom();

    public CredentialService(
            CredentialRepository credentialRepository,
            StudentRepository studentRepository,
            InstitutionRepository institutionRepository,
            ProgramRepository programRepository,
            CourseRepository courseRepository,
            CredentialRequestRepository requestRepository,
            CanonicalCredentialService canonicalService,
            HashService hashService,
            QrCodeService qrCodeService,
            EligibilityEngineService eligibilityEngineService,
            AuditService auditService) {
        this.credentialRepository = credentialRepository;
        this.studentRepository = studentRepository;
        this.institutionRepository = institutionRepository;
        this.programRepository = programRepository;
        this.courseRepository = courseRepository;
        this.requestRepository = requestRepository;
        this.canonicalService = canonicalService;
        this.hashService = hashService;
        this.qrCodeService = qrCodeService;
        this.eligibilityEngineService = eligibilityEngineService;
        this.auditService = auditService;
    }

    /**
     * Issues a new tamper-evident digital credential following multi-step validation.
     */
    public CredentialResponse issueCredential(CredentialIssuanceRequest request, UserPrincipal provider) {
        // 1. Verify Provider Authorization
        if (provider.getInstitutionId() != null && !provider.getInstitutionId().equalsIgnoreCase(request.getInstitutionId())) {
            throw new BadRequestException("Unauthorized: You can only issue credentials for your own institution (" + provider.getInstitutionId() + ")");
        }

        // 2. Validate Student Existence
        Student student = studentRepository.findById(request.getStudentId())
                .orElseThrow(() -> new ResourceNotFoundException("Student not found with ID: " + request.getStudentId()));

        // 3. Validate Institution
        Institution institution = institutionRepository.findById(request.getInstitutionId())
                .orElseThrow(() -> new ResourceNotFoundException("Institution not found with ID: " + request.getInstitutionId()));

        // 4. Validate Program & Course
        Program program = programRepository.findById(request.getProgramCode())
                .orElseThrow(() -> new ResourceNotFoundException("Program not found with code: " + request.getProgramCode()));
        Course course = courseRepository.findById(request.getCourseCode())
                .orElseThrow(() -> new ResourceNotFoundException("Course not found with code: " + request.getCourseCode()));

        // 5. Run Final Eligibility Recheck
        Credential tempCheck = new Credential();
        tempCheck.setAttendancePercent(request.getAttendancePercent());
        tempCheck.setFinalScore(request.getFinalScore());
        tempCheck.setCompletionStatus("Completed");
        tempCheck.setEligibilityStatus("Eligible");
        tempCheck.setCourseStartDate(request.getCourseStartDate());
        tempCheck.setCourseEndDate(request.getCourseEndDate());

        EligibilityResultDto eligibility = eligibilityEngineService.evaluateRecord(tempCheck);
        if (!eligibility.isEligible()) {
            throw new BadRequestException("Cannot issue credential: Final eligibility check failed. " + eligibility.getSummaryText());
        }

        // 6. Generate Unique Credential ID
        String credentialId = generateUniqueCredentialId();

        LocalDate issueDate = LocalDate.now();
        String dataClassification = "PUBLIC";
        String credentialStatus = "Issued";
        String verificationStatus = "Verified";

        // 7. Generate Canonical Representation
        String canonicalData = canonicalService.buildCanonicalData(
                credentialId,
                student.getStudentId(),
                institution.getInstitutionId(),
                program.getProgramCode(),
                course.getCourseCode(),
                request.getCourseStartDate(),
                request.getCourseEndDate(),
                request.getAttendancePercent(),
                request.getFinalScore(),
                "Completed",
                "Eligible",
                request.getCredentialType(),
                issueDate,
                dataClassification
        );

        // 8. Compute SHA-256 Integrity Hash
        String credentialHash = hashService.calculateSha256(canonicalData);

        // 9. Persist to PostgreSQL
        Credential credential = new Credential();
        credential.setCredentialId(credentialId);
        credential.setStudent(student);
        credential.setInstitution(institution);
        credential.setProgram(program);
        credential.setCourse(course);
        credential.setCourseStartDate(request.getCourseStartDate());
        credential.setCourseEndDate(request.getCourseEndDate());
        credential.setAttendancePercent(request.getAttendancePercent());
        credential.setFinalScore(request.getFinalScore());
        credential.setCompletionStatus("Completed");
        credential.setEligibilityStatus("Eligible");
        credential.setCredentialType(request.getCredentialType());
        credential.setIssueDate(issueDate);
        credential.setCredentialStatus(credentialStatus);
        credential.setCredentialHash(credentialHash);
        credential.setVerificationStatus(verificationStatus);
        credential.setDataClassification(dataClassification);

        Credential saved = credentialRepository.save(credential);

        // 10. Update linked CredentialRequest if present
        if (request.getRequestId() != null) {
            requestRepository.findById(request.getRequestId()).ifPresent(req -> {
                req.setRequestStatus("ISSUED");
                req.setReviewedBy(provider.getUsername());
                req.setReviewedAt(LocalDateTime.now());
                req.setIssuedCredentialId(credentialId);
                requestRepository.save(req);
            });
        }

        // 11. Audit Logging
        auditService.logEvent(
                provider.getUsername(),
                "CREDENTIAL_ISSUED",
                "Credential",
                credentialId,
                "Issued " + request.getCredentialType() + " to student " + student.getStudentId() + " (Hash: " + credentialHash.substring(0, 16) + "...)"
        );

        return mapToResponse(saved);
    }

    private String generateUniqueCredentialId() {
        for (int i = 0; i < 20; i++) {
            int num = 10000000 + random.nextInt(90000000);
            String id = "ONEST-CRED-" + num;
            if (!credentialRepository.existsById(id)) {
                return id;
            }
        }
        return "ONEST-CRED-" + System.currentTimeMillis();
    }

    @Transactional(readOnly = true)
    public CredentialResponse getCredentialById(String credentialId) {
        Credential credential = credentialRepository.findById(credentialId)
                .orElseThrow(() -> new ResourceNotFoundException("Credential not found with ID: " + credentialId));
        return mapToResponse(credential);
    }

    @Transactional(readOnly = true)
    public List<CredentialResponse> getCredentialsByStudentId(String studentId) {
        return credentialRepository.findByStudent_StudentId(studentId).stream()
                .map(this::mapToResponse)
                .collect(Collectors.toList());
    }

    @Transactional(readOnly = true)
    public Page<CredentialResponse> getCredentialsByInstitution(String institutionId, Pageable pageable) {
        return credentialRepository.findByInstitution_InstitutionId(institutionId, pageable)
                .map(this::mapToResponse);
    }

    public CredentialResponse mapToResponse(Credential c) {
        CredentialResponse res = new CredentialResponse();
        res.setCredentialId(c.getCredentialId());
        res.setStudentId(c.getStudent().getStudentId());
        res.setStudentName(c.getStudent().getStudentName());
        res.setSeekerId(c.getStudent().getSeekerId());
        res.setInstitutionId(c.getInstitution().getInstitutionId());
        res.setInstitutionName(c.getInstitution().getInstitutionName());
        res.setIssuerId(c.getInstitution().getIssuerId());
        res.setProgramCode(c.getProgram().getProgramCode());
        res.setProgramName(c.getProgram().getProgramName());
        res.setCourseCode(c.getCourse().getCourseCode());
        res.setCourseName(c.getCourse().getCourseName());
        res.setCourseStartDate(c.getCourseStartDate());
        res.setCourseEndDate(c.getCourseEndDate());
        res.setAttendancePercent(c.getAttendancePercent());
        res.setFinalScore(c.getFinalScore());
        res.setCompletionStatus(c.getCompletionStatus());
        res.setEligibilityStatus(c.getEligibilityStatus());
        res.setCredentialType(c.getCredentialType());
        res.setIssueDate(c.getIssueDate());
        res.setCredentialStatus(c.getCredentialStatus());
        res.setCredentialHash(c.getCredentialHash());
        res.setVerificationStatus(c.getVerificationStatus());
        res.setDataClassification(c.getDataClassification());

        String verificationUrl = "http://localhost:5173/verify/" + c.getCredentialId();
        res.setVerificationUrl(verificationUrl);
        try {
            res.setQrCodeBase64(qrCodeService.generateVerificationQrCodeBase64(verificationUrl, 250, 250));
        } catch (Exception ignored) {}

        return res;
    }
}
