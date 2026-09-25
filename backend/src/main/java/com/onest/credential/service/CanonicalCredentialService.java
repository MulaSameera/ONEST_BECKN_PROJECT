package com.onest.credential.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Map;
import java.util.TreeMap;

@Service
public class CanonicalCredentialService {

    private final ObjectMapper objectMapper;

    public CanonicalCredentialService() {
        this.objectMapper = new ObjectMapper();
        this.objectMapper.configure(SerializationFeature.ORDER_MAP_ENTRIES_BY_KEYS, true);
    }

    /**
     * Builds a deterministic canonical JSON string from credential attributes.
     * All keys are sorted alphabetically (TreeMap) and numeric/date values standardized.
     */
    public String buildCanonicalData(
            String credentialId,
            String studentId,
            String institutionId,
            String programCode,
            String courseCode,
            LocalDate courseStartDate,
            LocalDate courseEndDate,
            BigDecimal attendancePercent,
            BigDecimal finalScore,
            String completionStatus,
            String eligibilityStatus,
            String credentialType,
            LocalDate issueDate,
            String dataClassification
    ) {
        try {
            Map<String, Object> canonicalMap = new TreeMap<>();
            canonicalMap.put("attendance_percent", attendancePercent.setScale(2, RoundingMode.HALF_UP).toPlainString());
            canonicalMap.put("completion_status", completionStatus.trim());
            canonicalMap.put("course_code", courseCode.trim());
            canonicalMap.put("course_end_date", courseEndDate.format(DateTimeFormatter.ISO_LOCAL_DATE));
            canonicalMap.put("course_start_date", courseStartDate.format(DateTimeFormatter.ISO_LOCAL_DATE));
            canonicalMap.put("credential_id", credentialId.trim());
            canonicalMap.put("credential_type", credentialType.trim());
            canonicalMap.put("data_classification", dataClassification != null ? dataClassification.trim() : "PUBLIC");
            canonicalMap.put("eligibility_status", eligibilityStatus.trim());
            canonicalMap.put("final_score", finalScore.setScale(2, RoundingMode.HALF_UP).toPlainString());
            canonicalMap.put("institution_id", institutionId.trim());
            canonicalMap.put("issue_date", issueDate.format(DateTimeFormatter.ISO_LOCAL_DATE));
            canonicalMap.put("program_code", programCode.trim());
            canonicalMap.put("student_id", studentId.trim());

            return objectMapper.writeValueAsString(canonicalMap);
        } catch (Exception e) {
            throw new RuntimeException("Failed to construct canonical credential representation", e);
        }
    }
}
