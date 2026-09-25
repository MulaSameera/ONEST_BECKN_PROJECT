# ONEST Digital Credential Platform (Full-Stack Production Architecture)

An end-to-end, SIH-level **Digital Credential Issuance and Verification Platform** built with **Java (Spring Boot 3)**, **PostgreSQL (`onest_credentials_db`)**, and **React 18**.

---

## 1. Non-Negotiable Architecture

```
                                +---------------------------+
                                |      React Frontend       |
                                | (Port 5173 / Vite / Auth) |
                                +-------------+-------------+
                                              |
                                     (HTTP / JSON REST)
                                  [Bearer JWT in Auth Header]
                                              |
                                              v
+-----------------------------------------------------------------------------------------+
|                              Spring Boot 3.2.5 REST Backend                             |
|                                       (Port 8080)                                       |
|                                                                                         |
|  +---------------------------+  +---------------------------+  +---------------------+  |
|  |   Spring Security & JWT   |  | Explainable Eligibility   |  | Deterministic SHA-256|  |
|  |     Filter Chain          |  |  Engine (5 Rules)         |  | & ZXing QR Engine   |  |
|  +---------------------------+  +---------------------------+  +---------------------+  |
|                                                                                         |
|  +-----------------------------------------------------------------------------------+  |
|  |                      Service Layer & Spring Data JPA Repositories                 |  |
|  +-----------------------------------------------------------------------------------+  |
+--------------------------------------------+--------------------------------------------+
                                             |
                                     (JDBC Connection)
                                             |
                                             v
+-----------------------------------------------------------------------------------------+
|                               PostgreSQL Database Engine                                |
|                                (onest_credentials_db)                                   |
|                                                                                         |
|   * institutions (10)         * students (20,000)         * credentials (20,000)        |
|   * programs (15)             * courses (50)              * credential_requests         |
|   * audit_logs                * student_institutions                                    |
+-----------------------------------------------------------------------------------------+
```

---

## 2. Implemented Features by Phase

### Phase 1 & 2: Core Foundation & JWT Role-Based Security
* **Entities & Repositories:** Exact mapping to the live schema (`institutions`, `programs`, `courses`, `students`, `credentials`).
* **Authentication:** Provider login (`ROLE_PROVIDER`), Seeker login (`ROLE_SEEKER`), BCrypt password hashing, and signed JJWT tokens (HMAC-SHA256).
* **Centralized Exception Handling:** Returns structured HTTP 400, 401, 403, 404, 500 error responses.

### Phase 3: Credential Request & Multi-Step Review Workflow
* Student creates issuance requests for their courses.
* Issuing institution views filtered requests for their institution ID only.
* Review actions: Run live eligibility check $\rightarrow$ Approve & Issue $\rightarrow$ or Reject with explainable reason.

### Phase 4: 5-Rule Explainable Eligibility Engine
Evaluates every project-defined rule with actual vs. required values and human-readable reasons:
1. **Rule 1 (Attendance):** `attendance_percent >= 75.00%`
2. **Rule 2 (Final Score):** `final_score >= 50.00 / 100`
3. **Rule 3 (Completion Status):** `completion_status == 'Completed'`
4. **Rule 4 (Eligibility Status):** `eligibility_status == 'Eligible'`
5. **Rule 5 (Course Dates):** `course_end_date >= course_start_date`

### Phase 5: Deterministic Issuance, Canonical Data & SHA-256 Hashing
* Generates unique ID: `ONEST-CRED-XXXXXXXX`.
* Constructs canonical JSON with ordered keys to guarantee hash determinism.
* Computes 64-character lowercase hexadecimal SHA-256 hash.
* Generates Base64 encoded PNG QR code encoding `http://localhost:5173/verify/{credentialId}`.
* Persists to PostgreSQL without overwriting imported records.

### Phase 6: Public Verification Engine
* Public endpoint `GET /api/verify/{credentialId}` (no authentication required).
* Reconstructs canonical data from database, recalculates SHA-256, and compares with stored hash.
* Outcomes: `VERIFIED`, `INTEGRITY_FAILURE`, `REVOKED`, `NOT_FOUND`.
* Displays sanitized public details and integrity proof.

### Phase 7: Seeker Student Portal
* Student dashboard, digital wallet, certificate preview with high-resolution QR modal, and request submission form.

### Phase 8 & 9: Real PostgreSQL Analytics & Security Audit Trail
* Aggregated metrics across 20,000 credentials, students, institutions, credential types, and verification rates.
* Audit logging service recording security events (`LOGIN`, `CREDENTIAL_REQUEST_CREATED`, `ELIGIBILITY_CHECKED`, `CREDENTIAL_ISSUED`, `CREDENTIAL_VERIFIED`).

---

## 3. Quick Start & Execution Guide

### Prerequisites
* **Java 17+** & **Maven 3.8+**
* **Node.js 18+** & **npm**
* **PostgreSQL** running with `onest_credentials_db`

### 1. Database Migrations (Safe & Non-Destructive)
In pgAdmin or `psql`, execute the non-destructive extensions in:
`backend/src/main/resources/schema_extensions_proposal.sql`

```bash
psql -U postgres -d onest_credentials_db -f backend/src/main/resources/schema_extensions_proposal.sql
```

### 2. Run Backend (Spring Boot)
```powershell
cd onest-platform/backend

# Optional: set custom PostgreSQL credentials
$env:DB_USERNAME="postgres"
$env:DB_PASSWORD="your_postgres_password"

mvn spring-boot:run
```
* Backend API: `http://localhost:8080`
* Health check: `http://localhost:8080/api/health`
* Database health: `http://localhost:8080/api/health/database`

### 3. Run Frontend (React + Vite)
```bash
cd onest-platform/frontend
npm install
npm run dev
```
* Open in browser: **`http://localhost:5173`**

---

## 4. Test Credentials & Demo Accounts

### Credential Provider (Issuer Portal)
* **Issuer ID / Username:** `ISSUER-001` or `INST-001`
* **Password:** `password123` (or `admin123`)
* **Role:** `ROLE_PROVIDER`

### Credential Seeker (Student Portal)
* **Seeker ID / Student ID:** `SEEKER-000001` or `STU-000001`
* **Password:** `student123`
* **Role:** `ROLE_SEEKER`

### Public Verification Test IDs
* `CRED-00001`, `CRED-00002`, `CRED-00003` or any newly generated `ONEST-CRED-XXXXXXXX`
