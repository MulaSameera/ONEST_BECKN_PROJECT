package com.onest.credential.dto;

import jakarta.validation.constraints.NotBlank;

public class SeekerLoginRequest {

    @NotBlank(message = "Seeker ID or Student ID is required")
    private String identifier;

    @NotBlank(message = "Password is required")
    private String password;

    public SeekerLoginRequest() {}

    public SeekerLoginRequest(String identifier, String password) {
        this.identifier = identifier;
        this.password = password;
    }

    public String getIdentifier() {
        return identifier;
    }

    public void setIdentifier(String identifier) {
        this.identifier = identifier;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
