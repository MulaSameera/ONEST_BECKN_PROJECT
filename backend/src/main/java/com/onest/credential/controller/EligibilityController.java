package com.onest.credential.controller;

import com.onest.credential.dto.EligibilityCheckRequest;
import com.onest.credential.dto.EligibilityResultDto;
import com.onest.credential.security.UserPrincipal;
import com.onest.credential.service.EligibilityEngineService;
import jakarta.validation.Valid;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/eligibility")
public class EligibilityController {

    private final EligibilityEngineService eligibilityEngineService;

    public EligibilityController(EligibilityEngineService eligibilityEngineService) {
        this.eligibilityEngineService = eligibilityEngineService;
    }

    @PostMapping("/check")
    public ResponseEntity<EligibilityResultDto> checkEligibility(
            @Valid @RequestBody EligibilityCheckRequest request,
            @AuthenticationPrincipal UserPrincipal principal) {
        String actor = principal != null ? principal.getUsername() : "PROVIDER";
        EligibilityResultDto result = eligibilityEngineService.evaluateEligibility(
                request.getStudentId(),
                request.getInstitutionId(),
                request.getCourseCode(),
                actor
        );
        return ResponseEntity.ok(result);
    }
}
