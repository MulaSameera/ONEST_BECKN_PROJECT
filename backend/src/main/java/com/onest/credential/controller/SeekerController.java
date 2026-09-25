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
@RequestMapping("/api/seeker")
public class SeekerController {

    @GetMapping("/dashboard/summary")
    @PreAuthorize("hasAuthority('ROLE_SEEKER')")
    public ResponseEntity<Map<String, Object>> getSeekerSummary(@AuthenticationPrincipal UserPrincipal principal) {
        return ResponseEntity.ok(Map.of(
                "message", "Authorized access to Seeker Portal",
                "seekerId", principal.getUsername(),
                "studentId", principal.getStudentId() != null ? principal.getStudentId() : "N/A",
                "studentName", principal.getDisplayName(),
                "role", principal.getRole().name()
        ));
    }
}
