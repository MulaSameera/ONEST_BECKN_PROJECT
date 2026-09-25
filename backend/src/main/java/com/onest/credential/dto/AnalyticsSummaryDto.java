package com.onest.credential.dto;

import java.util.Map;

public class AnalyticsSummaryDto {

    private long totalCredentials;
    private long totalStudents;
    private long totalInstitutions;
    private long totalPrograms;
    private long totalCourses;
    private long pendingRequests;
    private long rejectedRequests;
    private long issuedRequests;
    private Map<String, Long> credentialsByType;
    private Map<String, Long> credentialsByVerificationStatus;

    public AnalyticsSummaryDto() {}

    public long getTotalCredentials() {
        return totalCredentials;
    }

    public void setTotalCredentials(long totalCredentials) {
        this.totalCredentials = totalCredentials;
    }

    public long getTotalStudents() {
        return totalStudents;
    }

    public void setTotalStudents(long totalStudents) {
        this.totalStudents = totalStudents;
    }

    public long getTotalInstitutions() {
        return totalInstitutions;
    }

    public void setTotalInstitutions(long totalInstitutions) {
        this.totalInstitutions = totalInstitutions;
    }

    public long getTotalPrograms() {
        return totalPrograms;
    }

    public void setTotalPrograms(long totalPrograms) {
        this.totalPrograms = totalPrograms;
    }

    public long getTotalCourses() {
        return totalCourses;
    }

    public void setTotalCourses(long totalCourses) {
        this.totalCourses = totalCourses;
    }

    public long getPendingRequests() {
        return pendingRequests;
    }

    public void setPendingRequests(long pendingRequests) {
        this.pendingRequests = pendingRequests;
    }

    public long getRejectedRequests() {
        return rejectedRequests;
    }

    public void setRejectedRequests(long rejectedRequests) {
        this.rejectedRequests = rejectedRequests;
    }

    public long getIssuedRequests() {
        return issuedRequests;
    }

    public void setIssuedRequests(long issuedRequests) {
        this.issuedRequests = issuedRequests;
    }

    public Map<String, Long> getCredentialsByType() {
        return credentialsByType;
    }

    public void setCredentialsByType(Map<String, Long> credentialsByType) {
        this.credentialsByType = credentialsByType;
    }

    public Map<String, Long> getCredentialsByVerificationStatus() {
        return credentialsByVerificationStatus;
    }

    public void setCredentialsByVerificationStatus(Map<String, Long> credentialsByVerificationStatus) {
        this.credentialsByVerificationStatus = credentialsByVerificationStatus;
    }
}
