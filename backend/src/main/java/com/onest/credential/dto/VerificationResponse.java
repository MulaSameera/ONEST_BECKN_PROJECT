package com.onest.credential.dto;

import java.time.Instant;
import java.time.LocalDate;

public class VerificationResponse {

    private String outcome; // "VERIFIED", "INTEGRITY_FAILURE", "REVOKED", "NOT_FOUND"
    private boolean valid;
    private String message;
    private String credentialId;
    private String studentName; // masked / sanitized for public view
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
}
