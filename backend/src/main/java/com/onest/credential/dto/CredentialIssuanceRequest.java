package com.onest.credential.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.time.LocalDate;

public class CredentialIssuanceRequest {

    @NotBlank(message = "Student ID is required")
    private String studentId;

    @NotBlank(message = "Institution ID is required")
    private String institutionId;

    @NotBlank(message = "Program Code is required")
    private String programCode;

    @NotBlank(message = "Course Code is required")
    private String courseCode;

    @NotBlank(message = "Credential Type is required")
    private String credentialType;

    private String requestId; // optional linked credential request ID

    @NotNull(message = "Course Start Date is required")
    private LocalDate courseStartDate;

    @NotNull(message = "Course End Date is required")
    private LocalDate courseEndDate;

    @NotNull(message = "Attendance Percent is required")
    private BigDecimal attendancePercent;

    @NotNull(message = "Final Score is required")
    private BigDecimal finalScore;

    public CredentialIssuanceRequest() {}

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public String getInstitutionId() {
        return institutionId;
    }

    public void setInstitutionId(String institutionId) {
        this.institutionId = institutionId;
    }

    public String getProgramCode() {
        return programCode;
    }

    public void setProgramCode(String programCode) {
        this.programCode = programCode;
    }

    public String getCourseCode() {
        return courseCode;
    }

    public void setCourseCode(String courseCode) {
        this.courseCode = courseCode;
    }

    public String getCredentialType() {
        return credentialType;
    }

    public void setCredentialType(String credentialType) {
        this.credentialType = credentialType;
    }

    public String getRequestId() {
        return requestId;
    }

    public void setRequestId(String requestId) {
        this.requestId = requestId;
    }

    public LocalDate getCourseStartDate() {
        return courseStartDate;
    }

    public void setCourseStartDate(LocalDate courseStartDate) {
        this.courseStartDate = courseStartDate;
    }

    public LocalDate getCourseEndDate() {
        return courseEndDate;
    }

    public void setCourseEndDate(LocalDate courseEndDate) {
        this.courseEndDate = courseEndDate;
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
}
