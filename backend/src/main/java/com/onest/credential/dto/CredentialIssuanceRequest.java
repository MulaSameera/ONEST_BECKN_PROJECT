package com.onest.credential.dto;

import jakarta.validation.constraints.NotBlank;
import java.math.BigDecimal;
import java.time.LocalDate;

public class CredentialIssuanceRequest {

    @NotBlank(message = "Student ID is required")
    private String studentId;

    @NotBlank(message = "Institution ID is required")
    private String institutionId;

    @NotBlank(message = "Program Code is required")
    private String programCode;

    private String courseCode; // Optional: for program/semester credentials

    @NotBlank(message = "Credential Type is required")
    private String credentialType;

    private String requestId; // Optional linked credential request ID

    // Parameters derived from student_semester_records
    private BigDecimal sgpa;
    private BigDecimal cgpa;
    private BigDecimal attendancePercent;
    private Integer backlogCount;
    private String resultStatus;
    private String semester;
    private String academicYear;
    private String examMonthYear;

    // Optional legacy course dates/score
    private LocalDate courseStartDate;
    private LocalDate courseEndDate;
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

    public String getSemester() {
        return semester;
    }

    public void setSemester(String semester) {
        this.semester = semester;
    }

    public String getAcademicYear() {
        return academicYear;
    }

    public void setAcademicYear(String academicYear) {
        this.academicYear = academicYear;
    }

    public String getExamMonthYear() {
        return examMonthYear;
    }

    public void setExamMonthYear(String examMonthYear) {
        this.examMonthYear = examMonthYear;
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

    public BigDecimal getFinalScore() {
        return finalScore;
    }

    public void setFinalScore(BigDecimal finalScore) {
        this.finalScore = finalScore;
    }
}
