package com.onest.credential.dto;

import jakarta.validation.constraints.NotBlank;

public class ProviderLoginRequest {

    @NotBlank(message = "Issuer ID / Username is required")
    private String username; // can be issuerId or institutionId

    @NotBlank(message = "Password is required")
    private String password;

    public ProviderLoginRequest() {}

    public ProviderLoginRequest(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
