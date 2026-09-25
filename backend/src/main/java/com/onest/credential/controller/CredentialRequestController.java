package com.onest.credential.controller;

import com.onest.credential.dto.CreateCredentialRequestDto;
import com.onest.credential.dto.CredentialRequestResponse;
import com.onest.credential.dto.RejectRequestDto;
import com.onest.credential.security.UserPrincipal;
import com.onest.credential.service.CredentialRequestService;
import jakarta.validation.Valid;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/credential-requests")
public class CredentialRequestController {

    private final CredentialRequestService requestService;

    public CredentialRequestController(CredentialRequestService requestService) {
        this.requestService = requestService;
    }

    @PostMapping
    @PreAuthorize("hasAuthority('ROLE_SEEKER')")
    public ResponseEntity<CredentialRequestResponse> createRequest(
            @Valid @RequestBody CreateCredentialRequestDto dto,
            @AuthenticationPrincipal UserPrincipal principal) {
        CredentialRequestResponse response = requestService.createRequest(dto, principal);
        return ResponseEntity.status(HttpStatus.CREATED).body(response);
    }

    @GetMapping("/student/{studentId}")
    public ResponseEntity<List<CredentialRequestResponse>> getRequestsForStudent(@PathVariable String studentId) {
        return ResponseEntity.ok(requestService.getRequestsForStudent(studentId));
    }

    @GetMapping("/institution/{institutionId}")
    @PreAuthorize("hasAuthority('ROLE_PROVIDER')")
    public ResponseEntity<List<CredentialRequestResponse>> getRequestsForInstitution(@PathVariable String institutionId) {
        return ResponseEntity.ok(requestService.getRequestsForInstitution(institutionId));
    }

    @PostMapping("/{requestId}/reject")
    @PreAuthorize("hasAuthority('ROLE_PROVIDER')")
    public ResponseEntity<CredentialRequestResponse> rejectRequest(
            @PathVariable String requestId,
            @Valid @RequestBody RejectRequestDto dto,
            @AuthenticationPrincipal UserPrincipal principal) {
        return ResponseEntity.ok(requestService.rejectRequest(requestId, dto.getReason(), principal));
    }
}
