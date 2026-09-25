package com.onest.credential.dto;

import jakarta.validation.constraints.NotBlank;

public class CreateCredentialRequestDto {

    private String studentId;

    @NotBlank(message = "Institution ID is required")
    private String institutionId;

    @NotBlank(message = "Program Code is required")
    private String programCode;

    @NotBlank(message = "Course Code is required")
    private String courseCode;

    @NotBlank(message = "Requested Credential Type is required")
    private String requestedCredentialType;

    public CreateCredentialRequestDto() {}

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

    public String getRequestedCredentialType() {
        return requestedCredentialType;
    }

    public void setRequestedCredentialType(String requestedCredentialType) {
        this.requestedCredentialType = requestedCredentialType;
    }
}
