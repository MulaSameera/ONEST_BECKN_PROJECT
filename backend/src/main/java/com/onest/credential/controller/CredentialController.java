package com.onest.credential.controller;

import com.onest.credential.dto.CredentialIssuanceRequest;
import com.onest.credential.dto.CredentialResponse;
import com.onest.credential.security.UserPrincipal;
import com.onest.credential.service.CredentialService;
import jakarta.validation.Valid;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/credentials")
public class CredentialController {

    private final CredentialService credentialService;

    public CredentialController(CredentialService credentialService) {
        this.credentialService = credentialService;
    }

    @PostMapping("/generate")
    @PreAuthorize("hasAuthority('ROLE_PROVIDER')")
    public ResponseEntity<CredentialResponse> generateCredential(
            @Valid @RequestBody CredentialIssuanceRequest request,
            @AuthenticationPrincipal UserPrincipal principal) {
        CredentialResponse response = credentialService.issueCredential(request, principal);
        return ResponseEntity.status(HttpStatus.CREATED).body(response);
    }

    @GetMapping("/{credentialId}")
    public ResponseEntity<CredentialResponse> getCredentialById(@PathVariable String credentialId) {
        return ResponseEntity.ok(credentialService.getCredentialById(credentialId));
    }

    @GetMapping("/student/{studentId}")
    public ResponseEntity<List<CredentialResponse>> getCredentialsByStudent(@PathVariable String studentId) {
        return ResponseEntity.ok(credentialService.getCredentialsByStudentId(studentId));
    }

    @GetMapping("/institution/{institutionId}")
    @PreAuthorize("hasAuthority('ROLE_PROVIDER')")
    public ResponseEntity<Page<CredentialResponse>> getCredentialsByInstitution(
            @PathVariable String institutionId,
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "20") int size) {
        return ResponseEntity.ok(credentialService.getCredentialsByInstitution(institutionId, PageRequest.of(page, size)));
    }
}
