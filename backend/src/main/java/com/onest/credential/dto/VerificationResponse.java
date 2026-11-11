package com.onest.credential.dto;

import java.math.BigDecimal;
import java.time.Instant;
import java.time.LocalDate;

public class VerificationResponse {

    private String outcome; // "VERIFIED", "INTEGRITY_FAILURE", "REVOKED", "NOT_FOUND"
    private boolean valid;
    private String message;
    private String credentialId;
    private String studentName; // masked / sanitized for public view
    private String rawStudentName;
    private String studentId;
    private String institutionName;
    private String programName;
    private String courseName;
    private String credentialType;
    private LocalDate issueDate;
    private String credentialStatus;
    private String verificationStatus;
    private String integrityStatus; // "HASH_MATCH", "TAMPER_DETECTED", "UNKNOWN"
    private String storedHash;
    private String computedHash;
    private Instant verifiedAt;
    private BigDecimal sgpa;
    private BigDecimal cgpa;
    private BigDecimal attendancePercent;
    private BigDecimal finalScore;
    private String signatories;
    private String qrCodeBase64;
    private String regulation;
    private String batchYear;
    private String digitalSignature;
    private String signatureAlgorithm;
    private String issuerPublicKey;
    private String keyId;
    private String publicKeyFingerprint;
    private Boolean signatureValid;
    private String eligibilityOutcome;
    private java.util.List<String> failedEligibilityRules;
    private Integer backlogCount;
    private String resultStatus;

    public VerificationResponse() {}

    public static VerificationResponse notFound(String credentialId) {
        VerificationResponse res = new VerificationResponse();
        res.setOutcome("NOT_FOUND");
        res.setValid(false);
        res.setMessage("No digital credential found in the national registry matching identifier: " + credentialId);
        res.setCredentialId(credentialId);
        res.setIntegrityStatus("UNKNOWN");
        res.setVerifiedAt(Instant.now());
        return res;
    }

    public String getOutcome() {
        return outcome;
    }

    public void setOutcome(String outcome) {
        this.outcome = outcome;
    }

    public boolean isValid() {
        return valid;
    }

    public void setValid(boolean valid) {
        this.valid = valid;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getCredentialId() {
        return credentialId;
    }

    public void setCredentialId(String credentialId) {
        this.credentialId = credentialId;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public String getInstitutionName() {
        return institutionName;
    }

    public void setInstitutionName(String institutionName) {
        this.institutionName = institutionName;
    }

    public String getProgramName() {
        return programName;
    }

    public void setProgramName(String programName) {
        this.programName = programName;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getCredentialType() {
        return credentialType;
    }

    public void setCredentialType(String credentialType) {
        this.credentialType = credentialType;
    }

    public LocalDate getIssueDate() {
        return issueDate;
    }

    public void setIssueDate(LocalDate issueDate) {
        this.issueDate = issueDate;
    }

    public String getCredentialStatus() {
        return credentialStatus;
    }

    public void setCredentialStatus(String credentialStatus) {
        this.credentialStatus = credentialStatus;
    }

    public String getVerificationStatus() {
        return verificationStatus;
    }

    public void setVerificationStatus(String verificationStatus) {
        this.verificationStatus = verificationStatus;
    }

    public String getIntegrityStatus() {
        return integrityStatus;
    }

    public void setIntegrityStatus(String integrityStatus) {
        this.integrityStatus = integrityStatus;
    }

    public String getStoredHash() {
        return storedHash;
    }

    public void setStoredHash(String storedHash) {
        this.storedHash = storedHash;
    }

    public String getComputedHash() {
        return computedHash;
    }

    public void setComputedHash(String computedHash) {
        this.computedHash = computedHash;
    }

    public Instant getVerifiedAt() {
        return verifiedAt;
    }

    public void setVerifiedAt(Instant verifiedAt) {
        this.verifiedAt = verifiedAt;
    }

    public String getRawStudentName() {
        return rawStudentName;
    }

    public void setRawStudentName(String rawStudentName) {
        this.rawStudentName = rawStudentName;
    }

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public BigDecimal getSgpa() {
        return sgpa;
    }

    public void setSgpa(BigDecimal sgpa) {
        this.sgpa = sgpa;
    }

    public BigDecimal getCgpa() {
        return cgpa;
    }

    public void setCgpa(BigDecimal cgpa) {
        this.cgpa = cgpa;
    }

    public BigDecimal getAttendancePercent() {
        return attendancePercent;
    }

    public void setAttendancePercent(BigDecimal attendancePercent) {
        this.attendancePercent = attendancePercent;
    }

    public BigDecimal getFinalScore() {
        return finalScore;
    }

    public void setFinalScore(BigDecimal finalScore) {
        this.finalScore = finalScore;
    }

    public String getSignatories() {
        return signatories;
    }

    public void setSignatories(String signatories) {
        this.signatories = signatories;
    }

    public String getQrCodeBase64() {
        return qrCodeBase64;
    }

    public void setQrCodeBase64(String qrCodeBase64) {
        this.qrCodeBase64 = qrCodeBase64;
    }

    public String getRegulation() {
        return regulation;
    }

    public void setRegulation(String regulation) {
        this.regulation = regulation;
    }

    public String getBatchYear() {
        return batchYear;
    }

    public void setBatchYear(String batchYear) {
        this.batchYear = batchYear;
    }

    public String getDigitalSignature() {
        return digitalSignature;
    }

    public void setDigitalSignature(String digitalSignature) {
        this.digitalSignature = digitalSignature;
    }

    public String getSignatureAlgorithm() {
        return signatureAlgorithm;
    }

    public void setSignatureAlgorithm(String signatureAlgorithm) {
        this.signatureAlgorithm = signatureAlgorithm;
    }

    public String getIssuerPublicKey() {
        return issuerPublicKey;
    }

    public void setIssuerPublicKey(String issuerPublicKey) {
        this.issuerPublicKey = issuerPublicKey;
    }

    public String getKeyId() {
        return keyId;
    }

    public void setKeyId(String keyId) {
        this.keyId = keyId;
    }

    public String getPublicKeyFingerprint() {
        return publicKeyFingerprint;
    }

    public void setPublicKeyFingerprint(String publicKeyFingerprint) {
        this.publicKeyFingerprint = publicKeyFingerprint;
    }

    public Boolean getSignatureValid() {
        return signatureValid;
    }

    public void setSignatureValid(Boolean signatureValid) {
        this.signatureValid = signatureValid;
    }

    public String getEligibilityOutcome() {
        return eligibilityOutcome;
    }

    public void setEligibilityOutcome(String eligibilityOutcome) {
        this.eligibilityOutcome = eligibilityOutcome;
    }

    public java.util.List<String> getFailedEligibilityRules() {
        return failedEligibilityRules;
    }

    public void setFailedEligibilityRules(java.util.List<String> failedEligibilityRules) {
        this.failedEligibilityRules = failedEligibilityRules;
    }

    public Integer getBacklogCount() {
        return backlogCount;
    }

    public void setBacklogCount(Integer backlogCount) {
        this.backlogCount = backlogCount;
    }

    public String getResultStatus() {
        return resultStatus;
    }

    public void setResultStatus(String resultStatus) {
        this.resultStatus = resultStatus;
    }
}
