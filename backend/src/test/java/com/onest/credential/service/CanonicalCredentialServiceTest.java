package com.onest.credential.service;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import java.math.BigDecimal;
import java.time.LocalDate;

import static org.junit.jupiter.api.Assertions.*;

public class CanonicalCredentialServiceTest {

    private final CanonicalCredentialService canonicalService = new CanonicalCredentialService();
    private final HashService hashService = new HashService();

    @Test
    @DisplayName("Deterministic canonical JSON produces identical SHA-256 hash regardless of execution order")
    void testDeterministicHashing() {
        String canonical1 = canonicalService.buildCanonicalData(
                "ONEST-CRED-10000001",
                "STU-000001",
                "INST-001",
                "PRG-001",
                "CRS-001",
                LocalDate.of(2025, 6, 1),
                LocalDate.of(2026, 4, 30),
                new BigDecimal("88.50"),
                new BigDecimal("84.00"),
                "Completed",
                "Eligible",
                "Course Completion Credential",
                LocalDate.of(2026, 5, 1),
                "PUBLIC"
        );

        String canonical2 = canonicalService.buildCanonicalData(
                "ONEST-CRED-10000001",
                "STU-000001",
                "INST-001",
                "PRG-001",
                "CRS-001",
                LocalDate.of(2025, 6, 1),
                LocalDate.of(2026, 4, 30),
                new BigDecimal("88.50"),
                new BigDecimal("84.00"),
                "Completed",
                "Eligible",
                "Course Completion Credential",
                LocalDate.of(2026, 5, 1),
                "PUBLIC"
        );

        assertEquals(canonical1, canonical2);

        String hash1 = hashService.calculateSha256(canonical1);
        String hash2 = hashService.calculateSha256(canonical2);

        assertEquals(64, hash1.length());
        assertEquals(hash1, hash2);
    }
}
