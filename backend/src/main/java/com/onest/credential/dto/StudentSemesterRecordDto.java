package com.onest.credential.dto;

import java.math.BigDecimal;
import java.time.LocalDateTime;

public class StudentSemesterRecordDto {

    private Long recordId;
    private String studentId;
    private String studentName;
    private String programCode;
    private String academicYear;
    private String semester;
    private BigDecimal sgpa;
    private BigDecimal cgpa;
    private BigDecimal attendancePercent;
    private Integer backlogCount;
    private String resultStatus;
    private String examMonthYear;
    private LocalDateTime dateOfIssue;
    private String subjectGrades;

    public StudentSemesterRecordDto() {}

    public Long getRecordId() {
        return recordId;
    }

    public void setRecordId(Long recordId) {
        this.recordId = recordId;
    }

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public String getProgramCode() {
        return programCode;
    }

    public void setProgramCode(String programCode) {
        this.programCode = programCode;
    }

    public String getAcademicYear() {
        return academicYear;
    }

    public void setAcademicYear(String academicYear) {
        this.academicYear = academicYear;
    }

    public String getSemester() {
        return semester;
    }

    public void setSemester(String semester) {
        this.semester = semester;
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

    public String getExamMonthYear() {
        return examMonthYear;
    }

    public void setExamMonthYear(String examMonthYear) {
        this.examMonthYear = examMonthYear;
    }

    public LocalDateTime getDateOfIssue() {
        return dateOfIssue;
    }

    public void setDateOfIssue(LocalDateTime dateOfIssue) {
        this.dateOfIssue = dateOfIssue;
    }

    public String getSubjectGrades() {
        return subjectGrades;
    }

    public void setSubjectGrades(String subjectGrades) {
        this.subjectGrades = subjectGrades;
    }
}
