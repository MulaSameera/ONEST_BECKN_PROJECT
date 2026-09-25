package com.onest.credential.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "students")
public class Student {

    @Id
    @Column(name = "student_id", length = 20, nullable = false)
    private String studentId;

    @Column(name = "student_name", length = 100, nullable = false)
    private String studentName;

    @Column(name = "seeker_id", length = 30, nullable = false, unique = true)
    private String seekerId;

    public Student() {}

    public Student(String studentId, String studentName, String seekerId) {
        this.studentId = studentId;
        this.studentName = studentName;
        this.seekerId = seekerId;
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

    public String getSeekerId() {
        return seekerId;
    }

    public void setSeekerId(String seekerId) {
        this.seekerId = seekerId;
    }
}
