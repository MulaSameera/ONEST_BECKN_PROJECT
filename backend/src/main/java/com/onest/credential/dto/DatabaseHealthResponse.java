package com.onest.credential.dto;

import java.time.Instant;
import java.util.Map;

public class DatabaseHealthResponse {
    private String status;
    private String database;
    private String databaseName;
    private Instant timestamp;
    private Map<String, Long> tableCounts;
    private String message;

    public DatabaseHealthResponse() {}

    public DatabaseHealthResponse(String status, String database, String databaseName, Instant timestamp, Map<String, Long> tableCounts, String message) {
        this.status = status;
        this.database = database;
        this.databaseName = databaseName;
        this.timestamp = timestamp;
        this.tableCounts = tableCounts;
        this.message = message;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDatabase() {
        return database;
    }

    public void setDatabase(String database) {
        this.database = database;
    }

    public String getDatabaseName() {
        return databaseName;
    }

    public void setDatabaseName(String databaseName) {
        this.databaseName = databaseName;
    }

    public Instant getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(Instant timestamp) {
        this.timestamp = timestamp;
    }

    public Map<String, Long> getTableCounts() {
        return tableCounts;
    }

    public void setTableCounts(Map<String, Long> tableCounts) {
        this.tableCounts = tableCounts;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
