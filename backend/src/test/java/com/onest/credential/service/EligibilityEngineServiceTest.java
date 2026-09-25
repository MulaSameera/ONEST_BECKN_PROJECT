package com.onest.credential.service;

import com.onest.credential.dto.EligibilityResultDto;
import com.onest.credential.entity.Credential;
import com.onest.credential.repository.CredentialRepository;
import com.onest.credential.repository.StudentRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;

import java.math.BigDecimal;
import java.time.LocalDate;

import static org.junit.jupiter.api.Assertions.*;

public class EligibilityEngineServiceTest {

    private EligibilityEngineService eligibilityService;
    private CredentialRepository credentialRepository;
    private StudentRepository studentRepository;
    private AuditService auditService;

    @BeforeEach
    void setUp() {
        credentialRepository = Mockito.mock(CredentialRepository.class);
        studentRepository = Mockito.mock(StudentRepository.class);
        auditService = Mockito.mock(AuditService.class);
        eligibilityService = new EligibilityEngineService(credentialRepository, studentRepository, auditService);
    }

    @Test
    @DisplayName("Should pass all 5 rules when criteria are satisfied")
    void testEvaluateRecord_Eligible() {
        Credential c = new Credential();
        c.setAttendancePercent(new BigDecimal("85.00"));
        c.setFinalScore(new BigDecimal("75.00"));
        c.setCompletionStatus("Completed");
        c.setEligibilityStatus("Eligible");
        c.setCourseStartDate(LocalDate.of(2025, 6, 1));
        c.setCourseEndDate(LocalDate.of(2026, 4, 30));

        EligibilityResultDto result = eligibilityService.evaluateRecord(c);

        assertTrue(result.isEligible());
        assertEquals("ELIGIBLE", result.getOverallResult());
        assertEquals(5, result.getRules().size());
        assertTrue(result.getRules().stream().allMatch(r -> r.isPassed()));
    }

    @Test
    @DisplayName("Should fail when attendance is below 75%")
    void testEvaluateRecord_LowAttendance() {
        Credential c = new Credential();
        c.setAttendancePercent(new BigDecimal("68.00"));
        c.setFinalScore(new BigDecimal("80.00"));
        c.setCompletionStatus("Completed");
        c.setEligibilityStatus("Eligible");
        c.setCourseStartDate(LocalDate.of(2025, 6, 1));
        c.setCourseEndDate(LocalDate.of(2026, 4, 30));

        EligibilityResultDto result = eligibilityService.evaluateRecord(c);

        assertFalse(result.isEligible());
        assertEquals("NOT_ELIGIBLE", result.getOverallResult());
        assertFalse(result.getRules().get(0).isPassed());
    }

    @Test
    @DisplayName("Should fail when final score is below 50")
    void testEvaluateRecord_LowScore() {
        Credential c = new Credential();
        c.setAttendancePercent(new BigDecimal("80.00"));
        c.setFinalScore(new BigDecimal("42.00"));
        c.setCompletionStatus("Completed");
        c.setEligibilityStatus("Eligible");
        c.setCourseStartDate(LocalDate.of(2025, 6, 1));
        c.setCourseEndDate(LocalDate.of(2026, 4, 30));

        EligibilityResultDto result = eligibilityService.evaluateRecord(c);

        assertFalse(result.isEligible());
        assertFalse(result.getRules().get(1).isPassed());
    }
}
