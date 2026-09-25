package com.onest.credential.dto;

public class UserProfileResponse {
    private String username;
    private String role;
    private String displayName;
    private String institutionId;
    private String studentId;

    public UserProfileResponse() {}

    public UserProfileResponse(String username, String role, String displayName, String institutionId, String studentId) {
        this.username = username;
        this.role = role;
        this.displayName = displayName;
        this.institutionId = institutionId;
        this.studentId = studentId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getDisplayName() {
        return displayName;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    public String getInstitutionId() {
        return institutionId;
    }

    public void setInstitutionId(String institutionId) {
        this.institutionId = institutionId;
    }

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }
}
