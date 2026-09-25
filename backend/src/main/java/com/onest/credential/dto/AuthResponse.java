package com.onest.credential.dto;

public class AuthResponse {

    private String token;
    private String tokenType = "Bearer";
    private String username;
    private String role;
    private String displayName;
    private String institutionId;
    private String studentId;

    public AuthResponse() {}

    public AuthResponse(String token, String username, String role, String displayName, String institutionId, String studentId) {
        this.token = token;
        this.username = username;
        this.role = role;
        this.displayName = displayName;
        this.institutionId = institutionId;
        this.studentId = studentId;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getTokenType() {
        return tokenType;
    }

    public void setTokenType(String tokenType) {
        this.tokenType = tokenType;
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
