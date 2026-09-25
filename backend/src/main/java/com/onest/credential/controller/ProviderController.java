package com.onest.credential.controller;

import com.onest.credential.security.UserPrincipal;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
@RequestMapping("/api/provider")
public class ProviderController {

    @GetMapping("/dashboard/summary")
    @PreAuthorize("hasAuthority('ROLE_PROVIDER')")
    public ResponseEntity<Map<String, Object>> getProviderSummary(@AuthenticationPrincipal UserPrincipal principal) {
        return ResponseEntity.ok(Map.of(
                "message", "Authorized access to Provider Portal",
                "issuerId", principal.getUsername(),
                "institutionId", principal.getInstitutionId() != null ? principal.getInstitutionId() : "N/A",
                "institutionName", principal.getDisplayName(),
                "role", principal.getRole().name()
        ));
    }
}
