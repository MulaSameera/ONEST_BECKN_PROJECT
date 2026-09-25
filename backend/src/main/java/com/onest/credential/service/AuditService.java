package com.onest.credential.service;

import com.onest.credential.entity.AuditLog;
import com.onest.credential.repository.AuditLogRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.List;

@Service
public class AuditService {

    private static final Logger log = LoggerFactory.getLogger(AuditService.class);
    private final AuditLogRepository auditLogRepository;

    public AuditService(AuditLogRepository auditLogRepository) {
        this.auditLogRepository = auditLogRepository;
    }

    @Transactional(propagation = Propagation.REQUIRES_NEW)
    public void logEvent(String actor, String action, String entityType, String entityId, String details) {
        try {
            AuditLog auditLog = new AuditLog(
                    actor != null ? actor : "SYSTEM",
                    action,
                    entityType,
                    entityId,
                    LocalDateTime.now(),
                    "127.0.0.1",
                    details
            );
            auditLogRepository.save(auditLog);
            log.info("AUDIT: [{}] by [{}] on {} [{}] - {}", action, actor, entityType, entityId, details);
        } catch (Exception ex) {
            // Non-blocking fallback if audit_logs table is not yet created by DB admin
            log.warn("Could not persist audit log to PostgreSQL: {}. Action: [{}] on {} [{}]", ex.getMessage(), action, entityType, entityId);
        }
    }

    @Transactional(readOnly = true)
    public List<AuditLog> getRecentLogs() {
        try {
            return auditLogRepository.findTop100ByOrderByTimestampDesc();
        } catch (Exception ex) {
            log.warn("Could not fetch audit logs: {}", ex.getMessage());
            return List.of();
        }
    }
}
