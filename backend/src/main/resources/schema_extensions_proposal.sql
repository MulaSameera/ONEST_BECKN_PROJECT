-- ============================================================
-- ONEST Digital Credential Platform: Database Migration Proposal
-- NON-DESTRUCTIVE SCHEMA EXTENSIONS
-- ============================================================
-- IMPORTANT:
-- 1. All existing 20,000 records, primary keys, foreign keys, and constraints remain 100% untouched.
-- 2. These proposed scripts use CREATE TABLE IF NOT EXISTS / ON CONFLICT DO NOTHING.
-- 3. Review before applying to PostgreSQL.
-- ============================================================

-- 1. Student-Institution Relationship Mapping
-- Analysis: 'students' table does not have 'institution_id'. Students are historically linked to
-- institutions via credential records. To support direct institution authorization and fast indexing:
CREATE TABLE IF NOT EXISTS student_institutions (
    student_id VARCHAR(20) NOT NULL REFERENCES students(student_id),
    institution_id VARCHAR(20) NOT NULL REFERENCES institutions(institution_id),
    enrolled_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) DEFAULT 'ACTIVE' CHECK (status IN ('ACTIVE', 'GRADUATED', 'SUSPENDED')),
    PRIMARY KEY (student_id, institution_id)
);

CREATE INDEX IF NOT EXISTS idx_student_institutions_inst ON student_institutions(institution_id);
CREATE INDEX IF NOT EXISTS idx_student_institutions_student ON student_institutions(student_id);

-- Safely backfill student_institutions from existing 20,000 credential records without duplication:
INSERT INTO student_institutions (student_id, institution_id)
SELECT DISTINCT student_id, institution_id
FROM credentials
ON CONFLICT (student_id, institution_id) DO NOTHING;


-- 2. Credential Requests Table
-- Supports provider request/review workflow, multi-step validation, and explainable eligibility storage
CREATE TABLE IF NOT EXISTS credential_requests (
    request_id VARCHAR(40) PRIMARY KEY,
    student_id VARCHAR(20) NOT NULL REFERENCES students(student_id),
    institution_id VARCHAR(20) NOT NULL REFERENCES institutions(institution_id),
    program_code VARCHAR(20) NOT NULL REFERENCES programs(program_code),
    course_code VARCHAR(20) NOT NULL REFERENCES courses(course_code),
    requested_credential_type VARCHAR(50) NOT NULL CHECK (requested_credential_type IN (
        'Course Completion Credential',
        'Degree Credential',
        'Internship Certificate',
        'Skill Certificate',
        'Transcript Credential'
    )),
    request_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    request_status VARCHAR(20) NOT NULL CHECK (request_status IN (
        'PENDING',
        'UNDER_REVIEW',
        'ELIGIBLE',
        'REJECTED',
        'ISSUED'
    )),
    reviewed_by VARCHAR(50),
    reviewed_at TIMESTAMP,
    rejection_reason TEXT,
    eligibility_summary TEXT,
    issued_credential_id VARCHAR(30)
);

-- Ensure column exists if table was already created earlier:
ALTER TABLE credential_requests ADD COLUMN IF NOT EXISTS issued_credential_id VARCHAR(30);

CREATE INDEX IF NOT EXISTS idx_cred_req_student ON credential_requests(student_id);
CREATE INDEX IF NOT EXISTS idx_cred_req_institution ON credential_requests(institution_id);
CREATE INDEX IF NOT EXISTS idx_cred_req_status ON credential_requests(request_status);


-- 3. Audit Logs Table
-- Records critical security actions (LOGIN, ELIGIBILITY_CHECKED, CREDENTIAL_ISSUED, VERIFIED, etc.)
CREATE TABLE IF NOT EXISTS audit_logs (
    audit_id BIGSERIAL PRIMARY KEY,
    actor VARCHAR(100) NOT NULL,
    action VARCHAR(50) NOT NULL,
    entity_type VARCHAR(50) NOT NULL,
    entity_id VARCHAR(100) NOT NULL,
    timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ip_address VARCHAR(45),
    details TEXT
);

CREATE INDEX IF NOT EXISTS idx_audit_logs_actor ON audit_logs(actor);
CREATE INDEX IF NOT EXISTS idx_audit_logs_action ON audit_logs(action);
CREATE INDEX IF NOT EXISTS idx_audit_logs_timestamp ON audit_logs(timestamp);
