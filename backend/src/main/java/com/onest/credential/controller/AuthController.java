package com.onest.credential.controller;

import com.onest.credential.dto.AuthResponse;
import com.onest.credential.dto.ProviderLoginRequest;
import com.onest.credential.dto.SeekerLoginRequest;
import com.onest.credential.dto.UserProfileResponse;
import com.onest.credential.security.UserPrincipal;
import com.onest.credential.service.AuthService;
import jakarta.validation.Valid;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/auth")
public class AuthController {

    private final AuthService authService;

    public AuthController(AuthService authService) {
        this.authService = authService;
    }

    @PostMapping("/provider/login")
    public ResponseEntity<AuthResponse> loginProvider(@Valid @RequestBody ProviderLoginRequest request) {
        AuthResponse response = authService.authenticateProvider(request);
        return ResponseEntity.ok(response);
    }

    @PostMapping("/seeker/login")
    public ResponseEntity<AuthResponse> loginSeeker(@Valid @RequestBody SeekerLoginRequest request) {
        AuthResponse response = authService.authenticateSeeker(request);
        return ResponseEntity.ok(response);
    }

    @GetMapping("/me")
    public ResponseEntity<UserProfileResponse> getCurrentUser(@AuthenticationPrincipal UserPrincipal principal) {
        if (principal == null) {
            return ResponseEntity.status(401).build();
        }
        return ResponseEntity.ok(authService.getCurrentUserProfile(principal));
    }
}
