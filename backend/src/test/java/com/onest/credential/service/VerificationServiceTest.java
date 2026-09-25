package com.onest.credential.service;

import com.onest.credential.dto.VerificationResponse;
import com.onest.credential.entity.*;
import com.onest.credential.repository.CredentialRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.anyString;
import static org.mockito.Mockito.when;

public class VerificationServiceTest {

    private VerificationService verificationService;
    private CredentialRepository credentialRepository;
    private CanonicalCredentialService canonicalService;
    private HashService hashService;
    private AuditService auditService;

    @BeforeEach
    void setUp() {
        credentialRepository = Mockito.mock(CredentialRepository.class);
        canonicalService = new CanonicalCredentialService();
        hashService = new HashService();
        auditService = Mockito.mock(AuditService.class);
        verificationService = new VerificationService(credentialRepository, canonicalService, hashService, auditService);
    }

    @Test
    @DisplayName("Should verify existing imported verified credential")
    void testVerifyImportedCredential() {
        Credential c = createSampleCredential("ONEST-CRED-00000001", "2925ecfbb435af0483d4ca4c31f19d29e32fea46f728e2bd5fed8779a8c7061a", "Verified", "Issued");
        when(credentialRepository.findById("ONEST-CRED-00000001")).thenReturn(Optional.of(c));

        VerificationResponse res = verificationService.verifyCredentialById("ONEST-CRED-00000001", "127.0.0.1");

        assertTrue(res.isValid());
        assertEquals("VERIFIED", res.getOutcome());
        assertEquals("HASH_MATCH", res.getIntegrityStatus());
    }

    @Test
    @DisplayName("Should return NOT_FOUND for non-existent credential")
    void testVerifyNotFound() {
        when(credentialRepository.findById(anyString())).thenReturn(Optional.empty());
        when(credentialRepository.findByCredentialHash(anyString())).thenReturn(Optional.empty());

        VerificationResponse res = verificationService.verifyCredentialById("INVALID-ID", "127.0.0.1");

        assertFalse(res.isValid());
        assertEquals("NOT_FOUND", res.getOutcome());
    }

    private Credential createSampleCredential(String id, String hash, String verificationStatus, String credStatus) {
        Credential c = new Credential();
        c.setCredentialId(id);
        c.setCredentialHash(hash);
        c.setVerificationStatus(verificationStatus);
        c.setCredentialStatus(credStatus);
        c.setAttendancePercent(new BigDecimal("85.00"));
        c.setFinalScore(new BigDecimal("80.00"));
        c.setCompletionStatus("Completed");
        c.setEligibilityStatus("Eligible");
        c.setCredentialType("Degree Credential");
        c.setCourseStartDate(LocalDate.of(2022, 1, 1));
        c.setCourseEndDate(LocalDate.of(2023, 1, 1));
        c.setIssueDate(LocalDate.of(2023, 8, 14));
        c.setDataClassification("PUBLIC");

        Student s = new Student("STU-000001", "Student Name", "SEEKER-000001");
        Institution inst = new Institution("INST-001", "Institute of Engineering and Applied Sciences", "ISSUER-001");
        Program p = new Program("PRG-001", "B.Tech Computer Science");
        Course crs = new Course("CRS-001", "Computer Networks");

        c.setStudent(s);
        c.setInstitution(inst);
        c.setProgram(p);
        c.setCourse(crs);

        return c;
    }
}
