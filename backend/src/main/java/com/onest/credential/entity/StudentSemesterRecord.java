package com.onest.credential.entity;

import jakarta.persistence.*;
import java.math.BigDecimal;
import java.time.LocalDateTime;

@Entity
@Table(name = "student_semester_records")
public class StudentSemesterRecord {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "record_id")
    private Long recordId;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "student_id", nullable = false)
    private Student student;

    @Column(name = "academic_year", length = 30)
    private String academicYear;

    @Column(name = "semester", length = 50)
    private String semester;

    @Column(name = "sgpa", precision = 4, scale = 2)
    private BigDecimal sgpa;

    @Column(name = "cgpa", precision = 4, scale = 2)
    private BigDecimal cgpa;

    @Column(name = "attendance_percent", precision = 5, scale = 2, nullable = false)
    private BigDecimal attendancePercent;

    @Column(name = "backlog_count", nullable = false)
    private Integer backlogCount;

    @Column(name = "result_status", length = 30, nullable = false)
    private String resultStatus;

    @Column(name = "subject_grades", columnDefinition = "TEXT")
    private String subjectGrades;

    @Column(name = "exam_month_year", length = 30)
    private String examMonthYear;

    @Column(name = "date_of_issue")
    private LocalDateTime dateOfIssue;

    public StudentSemesterRecord() {}

    public Long getRecordId() {
        return recordId;
    }

    public void setRecordId(Long recordId) {
        this.recordId = recordId;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
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

    public String getSubjectGrades() {
        return subjectGrades;
    }

    public void setSubjectGrades(String subjectGrades) {
        this.subjectGrades = subjectGrades;
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
}
