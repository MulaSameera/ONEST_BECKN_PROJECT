package com.onest.credential.dto;

import jakarta.validation.constraints.NotBlank;

public class RejectRequestDto {

    @NotBlank(message = "Rejection reason is required")
    private String reason;

    public RejectRequestDto() {}

    public RejectRequestDto(String reason) {
        this.reason = reason;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }
}
