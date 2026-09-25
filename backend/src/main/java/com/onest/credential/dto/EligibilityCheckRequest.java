package com.onest.credential.dto;

import jakarta.validation.constraints.NotBlank;

public class EligibilityCheckRequest {

    @NotBlank(message = "Student ID is required")
    private String studentId;

    @NotBlank(message = "Institution ID is required")
    private String institutionId;

    @NotBlank(message = "Course Code is required")
    private String courseCode;

    public EligibilityCheckRequest() {}

    public EligibilityCheckRequest(String studentId, String institutionId, String courseCode) {
        this.studentId = studentId;
        this.institutionId = institutionId;
        this.courseCode = courseCode;
    }

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

    public String getCourseCode() {
        return courseCode;
    }

    public void setCourseCode(String courseCode) {
        this.courseCode = courseCode;
    }
}
