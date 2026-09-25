package com.onest.credential.service;

import com.onest.credential.dto.CreateCredentialRequestDto;
import com.onest.credential.dto.CredentialRequestResponse;
import com.onest.credential.dto.EligibilityResultDto;
import com.onest.credential.entity.*;
import com.onest.credential.exception.BadRequestException;
import com.onest.credential.exception.ResourceNotFoundException;
import com.onest.credential.repository.*;
import com.onest.credential.security.UserPrincipal;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

@Service
@Transactional
public class CredentialRequestService {

    private final CredentialRequestRepository requestRepository;
    private final StudentRepository studentRepository;
    private final InstitutionRepository institutionRepository;
    private final ProgramRepository programRepository;
    private final CourseRepository courseRepository;
    private final EligibilityEngineService eligibilityEngineService;
    private final AuditService auditService;

    public CredentialRequestService(
            CredentialRequestRepository requestRepository,
            StudentRepository studentRepository,
            InstitutionRepository institutionRepository,
            ProgramRepository programRepository,
            CourseRepository courseRepository,
            EligibilityEngineService eligibilityEngineService,
            AuditService auditService) {
        this.requestRepository = requestRepository;
        this.studentRepository = studentRepository;
        this.institutionRepository = institutionRepository;
        this.programRepository = programRepository;
        this.courseRepository = courseRepository;
        this.eligibilityEngineService = eligibilityEngineService;
        this.auditService = auditService;
    }

    /**
     * Creates a new credential issuance request by a student.
     */
    public CredentialRequestResponse createRequest(CreateCredentialRequestDto dto, UserPrincipal seeker) {
        String studentId = seeker.getStudentId() != null ? seeker.getStudentId() : dto.getStudentId();

        Student student = studentRepository.findById(studentId)
                .orElseThrow(() -> new ResourceNotFoundException("Student not found with ID: " + studentId));
        Institution institution = institutionRepository.findById(dto.getInstitutionId())
                .orElseThrow(() -> new ResourceNotFoundException("Institution not found with ID: " + dto.getInstitutionId()));
        Program program = programRepository.findById(dto.getProgramCode())
                .orElseThrow(() -> new ResourceNotFoundException("Program not found with code: " + dto.getProgramCode()));
        Course course = courseRepository.findById(dto.getCourseCode())
                .orElseThrow(() -> new ResourceNotFoundException("Course not found with code: " + dto.getCourseCode()));

        CredentialRequest req = new CredentialRequest();
        req.setRequestId("REQ-" + UUID.randomUUID().toString().substring(0, 12).toUpperCase());
        req.setStudent(student);
        req.setInstitution(institution);
        req.setProgram(program);
        req.setCourse(course);
        req.setRequestedCredentialType(dto.getRequestedCredentialType());
        req.setRequestDate(LocalDateTime.now());
        req.setRequestStatus("PENDING");

        CredentialRequest saved = requestRepository.save(req);

        auditService.logEvent(
                seeker.getUsername(),
                "CREDENTIAL_REQUEST_CREATED",
                "CredentialRequest",
                saved.getRequestId(),
                "Created request for " + dto.getRequestedCredentialType() + " at " + institution.getInstitutionName()
        );

        return mapToResponse(saved);
    }

    @Transactional(readOnly = true)
    public List<CredentialRequestResponse> getRequestsForStudent(String studentId) {
        return requestRepository.findByStudent_StudentIdOrderByRequestDateDesc(studentId).stream()
                .map(this::mapToResponse)
                .collect(Collectors.toList());
    }

    @Transactional(readOnly = true)
    public List<CredentialRequestResponse> getRequestsForInstitution(String institutionId) {
        return requestRepository.findByInstitution_InstitutionIdOrderByRequestDateDesc(institutionId).stream()
                .map(this::mapToResponse)
                .collect(Collectors.toList());
    }

    /**
     * Rejects a request with an explainable reason.
     */
    public CredentialRequestResponse rejectRequest(String requestId, String reason, UserPrincipal provider) {
        CredentialRequest req = requestRepository.findById(requestId)
                .orElseThrow(() -> new ResourceNotFoundException("Credential request not found with ID: " + requestId));

        req.setRequestStatus("REJECTED");
        req.setReviewedBy(provider.getUsername());
        req.setReviewedAt(LocalDateTime.now());
        req.setRejectionReason(reason);

        CredentialRequest updated = requestRepository.save(req);

        auditService.logEvent(
                provider.getUsername(),
                "CREDENTIAL_REJECTED",
                "CredentialRequest",
                requestId,
                "Rejected by provider. Reason: " + reason
        );

        return mapToResponse(updated);
    }

    public CredentialRequestResponse mapToResponse(CredentialRequest r) {
        CredentialRequestResponse res = new CredentialRequestResponse();
        res.setRequestId(r.getRequestId());
        res.setStudentId(r.getStudent().getStudentId());
        res.setStudentName(r.getStudent().getStudentName());
        res.setInstitutionId(r.getInstitution().getInstitutionId());
        res.setInstitutionName(r.getInstitution().getInstitutionName());
        res.setProgramCode(r.getProgram().getProgramCode());
        res.setProgramName(r.getProgram().getProgramName());
        res.setCourseCode(r.getCourse().getCourseCode());
        res.setCourseName(r.getCourse().getCourseName());
        res.setRequestedCredentialType(r.getRequestedCredentialType());
        res.setRequestDate(r.getRequestDate());
        res.setRequestStatus(r.getRequestStatus());
        res.setReviewedBy(r.getReviewedBy());
        res.setReviewedAt(r.getReviewedAt());
        res.setRejectionReason(r.getRejectionReason());
        res.setEligibilitySummary(r.getEligibilitySummary());
        res.setIssuedCredentialId(r.getIssuedCredentialId());
        return res;
    }
}
