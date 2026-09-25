package com.onest.credential.service;

import com.onest.credential.dto.EligibilityResultDto;
import com.onest.credential.dto.RuleResultDto;
import com.onest.credential.entity.Credential;
import com.onest.credential.entity.Student;
import com.onest.credential.exception.BadRequestException;
import com.onest.credential.exception.ResourceNotFoundException;
import com.onest.credential.repository.CredentialRepository;
import com.onest.credential.repository.StudentRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Service
@Transactional(readOnly = true)
public class EligibilityEngineService {

    private final CredentialRepository credentialRepository;
    private final StudentRepository studentRepository;
    private final AuditService auditService;

    public EligibilityEngineService(
            CredentialRepository credentialRepository,
            StudentRepository studentRepository,
            AuditService auditService) {
        this.credentialRepository = credentialRepository;
        this.studentRepository = studentRepository;
        this.auditService = auditService;
    }

    /**
     * Evaluates the 5 project-defined eligibility rules on a student's academic record.
     */
    public EligibilityResultDto evaluateEligibility(String studentId, String institutionId, String courseCode, String actor) {
        Student student = studentRepository.findById(studentId)
                .orElseThrow(() -> new ResourceNotFoundException("Student not found with ID: " + studentId));

        // Find existing academic credential or course enrollment record
        List<Credential> studentRecords = credentialRepository.findByStudent_StudentId(studentId);
        Credential record = studentRecords.stream()
                .filter(c -> (courseCode == null || c.getCourse().getCourseCode().equalsIgnoreCase(courseCode))
                        && (institutionId == null || c.getInstitution().getInstitutionId().equalsIgnoreCase(institutionId)))
                .findFirst()
                .orElse(null);

        if (record == null && !studentRecords.isEmpty()) {
            record = studentRecords.get(0);
        }

        if (record == null) {
            throw new BadRequestException("No academic course record found for Student ID " + studentId + " to evaluate eligibility.");
        }

        EligibilityResultDto result = evaluateRecord(record);
        result.setStudentId(student.getStudentId());
        result.setStudentName(student.getStudentName());
        result.setInstitutionId(record.getInstitution().getInstitutionId());
        result.setInstitutionName(record.getInstitution().getInstitutionName());
        result.setCourseCode(record.getCourse().getCourseCode());
        result.setCourseName(record.getCourse().getCourseName());

        // Audit check
        auditService.logEvent(
                actor != null ? actor : "PROVIDER",
                "ELIGIBILITY_CHECKED",
                "Student",
                studentId,
                "Eligibility evaluation result: " + result.getOverallResult() + " for course " + record.getCourse().getCourseCode()
        );

        return result;
    }

    public EligibilityResultDto evaluateRecord(Credential c) {
        List<RuleResultDto> rules = new ArrayList<>();
        boolean allPassed = true;

        // Rule 1: Attendance >= 75%
        BigDecimal attendance = c.getAttendancePercent();
        boolean rule1Pass = attendance != null && attendance.compareTo(BigDecimal.valueOf(75.0)) >= 0;
        rules.add(new RuleResultDto(
                "Rule 1: Attendance Requirement",
                "ATTENDANCE",
                rule1Pass,
                attendance != null ? attendance.toPlainString() + "%" : "N/A",
                ">= 75.00%",
                rule1Pass ? "Attendance meets the minimum threshold requirement." : "Attendance (" + (attendance != null ? attendance : "0") + "%) is below the minimum required 75.00%."
        ));
        if (!rule1Pass) allPassed = false;

        // Rule 2: Final Score >= 50
        BigDecimal score = c.getFinalScore();
        boolean rule2Pass = score != null && score.compareTo(BigDecimal.valueOf(50.0)) >= 0;
        rules.add(new RuleResultDto(
                "Rule 2: Minimum Final Score",
                "FINAL_SCORE",
                rule2Pass,
                score != null ? score.toPlainString() + " / 100" : "N/A",
                ">= 50.00 / 100",
                rule2Pass ? "Final score satisfies minimum passing criteria." : "Final score (" + (score != null ? score : "0") + ") is below the required 50.00 passing score."
        ));
        if (!rule2Pass) allPassed = false;

        // Rule 3: Completion Status == 'Completed'
        String completion = c.getCompletionStatus();
        boolean rule3Pass = "Completed".equalsIgnoreCase(completion);
        rules.add(new RuleResultDto(
                "Rule 3: Course Completion Status",
                "COMPLETION_STATUS",
                rule3Pass,
                completion != null ? completion : "Incomplete",
                "Completed",
                rule3Pass ? "Student successfully completed all course modules." : "Course status is '" + completion + "'; must be 'Completed'."
        ));
        if (!rule3Pass) allPassed = false;

        // Rule 4: Eligibility Status == 'Eligible'
        String eligibility = c.getEligibilityStatus();
        boolean rule4Pass = "Eligible".equalsIgnoreCase(eligibility);
        rules.add(new RuleResultDto(
                "Rule 4: Academic Eligibility Status",
                "ELIGIBILITY_STATUS",
                rule4Pass,
                eligibility != null ? eligibility : "Not Eligible",
                "Eligible",
                rule4Pass ? "Academic department has cleared student eligibility." : "Department eligibility status is '" + eligibility + "'."
        ));
        if (!rule4Pass) allPassed = false;

        // Rule 5: Course End Date >= Course Start Date
        LocalDate start = c.getCourseStartDate();
        LocalDate end = c.getCourseEndDate();
        boolean rule5Pass = start != null && end != null && !end.isBefore(start);
        rules.add(new RuleResultDto(
                "Rule 5: Course Schedule Validity",
                "COURSE_DATES",
                rule5Pass,
                (start != null ? start.toString() : "N/A") + " to " + (end != null ? end.toString() : "N/A"),
                "End Date >= Start Date",
                rule5Pass ? "Course timeline dates are consistent and valid." : "Course end date cannot precede start date."
        ));
        if (!rule5Pass) allPassed = false;

        EligibilityResultDto result = new EligibilityResultDto();
        result.setEligible(allPassed);
        result.setOverallResult(allPassed ? "ELIGIBLE" : "NOT_ELIGIBLE");
        result.setRules(rules);

        StringBuilder sb = new StringBuilder();
        sb.append(allPassed ? "ALL 5 ELIGIBILITY RULES PASSED. Candidate is ELIGIBLE for credential issuance." : "ELIGIBILITY FAILED. One or more requirements were not met.");
        result.setSummaryText(sb.toString());

        return result;
    }
}
