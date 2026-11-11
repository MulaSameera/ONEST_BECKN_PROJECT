package com.onest.credential.controller;

import com.onest.credential.dto.DatabaseHealthResponse;
import com.onest.credential.dto.HealthResponse;
import com.onest.credential.repository.*;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.Instant;
import java.util.LinkedHashMap;
import java.util.Map;

@RestController
@RequestMapping("/api/health")
public class HealthController {

    private final StudentRepository studentRepository;
    private final InstitutionRepository institutionRepository;
    private final ProgramRepository programRepository;
    private final CourseRepository courseRepository;
    private final CredentialRepository credentialRepository;

    @Value("${spring.datasource.url:jdbc:postgresql://localhost:5432/anits_onest_db}")
    private String dbUrl;

    public HealthController(
            StudentRepository studentRepository,
            InstitutionRepository institutionRepository,
            ProgramRepository programRepository,
            CourseRepository courseRepository,
            CredentialRepository credentialRepository) {
        this.studentRepository = studentRepository;
        this.institutionRepository = institutionRepository;
        this.programRepository = programRepository;
        this.courseRepository = courseRepository;
        this.credentialRepository = credentialRepository;
    }

    @GetMapping
    public ResponseEntity<HealthResponse> getHealth() {
        return ResponseEntity.ok(new HealthResponse(
                "UP",
                "ONEST Digital Credential API",
                "1.0.0",
                Instant.now()
        ));
    }

    @GetMapping("/database")
    public ResponseEntity<DatabaseHealthResponse> getDatabaseHealth() {
        try {
            Map<String, Long> counts = new LinkedHashMap<>();
            counts.put("students", studentRepository.count());
            counts.put("institutions", institutionRepository.count());
            counts.put("programs", programRepository.count());
            counts.put("courses", courseRepository.count());
            counts.put("credentials", credentialRepository.count());

            String dbName = "anits_onest_db";
            if (dbUrl.contains("/")) {
                String sub = dbUrl.substring(dbUrl.lastIndexOf("/") + 1);
                if (sub.contains("?")) {
                    sub = sub.substring(0, sub.indexOf("?"));
                }
                if (!sub.isBlank()) {
                    dbName = sub;
                }
            }

            return ResponseEntity.ok(new DatabaseHealthResponse(
                    "UP",
                    "PostgreSQL",
                    dbName,
                    Instant.now(),
                    counts,
                    "Successfully connected to PostgreSQL database with live table counts."
            ));
        } catch (Exception ex) {
            return ResponseEntity.status(503).body(new DatabaseHealthResponse(
                    "DOWN",
                    "PostgreSQL",
                    "anits_onest_db",
                    Instant.now(),
                    Map.of(),
                    "Database connection failure: " + ex.getMessage()
            ));
        }
    }
}
