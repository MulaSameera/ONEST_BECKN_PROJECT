package com.onest.credential.controller;

import com.onest.credential.dto.VerificationResponse;
import com.onest.credential.service.VerificationService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/verify")
public class VerificationController {

    private final VerificationService verificationService;

    public VerificationController(VerificationService verificationService) {
        this.verificationService = verificationService;
    }

    @GetMapping("/{credentialId}")
    public ResponseEntity<VerificationResponse> verifyCredential(
            @PathVariable String credentialId,
            HttpServletRequest request) {
        String clientIp = request.getRemoteAddr();
        VerificationResponse response = verificationService.verifyCredentialById(credentialId, clientIp);
        return ResponseEntity.ok(response);
    }
}
