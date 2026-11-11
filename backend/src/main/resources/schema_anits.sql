-- ============================================================
-- ONEST DIGITAL CREDENTIAL PLATFORM — ANITS COLLEGE DATABASE SCHEMA
-- Institution: Anil Neerukonda Institute of Technology & Sciences (Autonomous)
-- Affiliation: Andhra University (AU), Approved by AICTE, NAAC A+, NBA
-- Regulation: R23 | Degree: B.Tech (All 9 Engineering Branches)
-- Standard: ONEST / Beckn W3C Verifiable Educational Credential Registry
-- ============================================================

-- Step 1: Drop existing legacy dummy tables safely
DROP TABLE IF EXISTS credential_requests CASCADE;
DROP TABLE IF EXISTS credentials CASCADE;
DROP TABLE IF EXISTS student_semester_records CASCADE;
DROP TABLE IF EXISTS students CASCADE;
DROP TABLE IF EXISTS courses CASCADE;
DROP TABLE IF EXISTS programs CASCADE;
DROP TABLE IF EXISTS institutions CASCADE;
DROP TABLE IF EXISTS audit_logs CASCADE;

-- Step 2: Institutions Table
CREATE TABLE institutions (
    institution_id VARCHAR(30) PRIMARY KEY,
    institution_name VARCHAR(250) NOT NULL,
    issuer_id VARCHAR(50) NOT NULL UNIQUE,
    accreditation VARCHAR(100),
    affiliation VARCHAR(100),
    district VARCHAR(100),
    state VARCHAR(50) DEFAULT 'Andhra Pradesh',
    website VARCHAR(150),
    contact_email VARCHAR(100)
);

-- Step 3: Programs (Engineering Branches)
CREATE TABLE programs (
    program_code VARCHAR(30) PRIMARY KEY,
    program_name VARCHAR(200) NOT NULL,
    department VARCHAR(100) NOT NULL,
    degree VARCHAR(50) DEFAULT 'B.Tech',
    duration_years INT DEFAULT 4
);

-- Step 4: Courses / Subjects Curriculum
CREATE TABLE courses (
    course_code VARCHAR(30) PRIMARY KEY,
    course_name VARCHAR(250) NOT NULL,
    program_code VARCHAR(30) REFERENCES programs(program_code) ON DELETE SET NULL,
    course_type VARCHAR(50), -- Professional Core, Professional Elective, Open Elective, Laboratory, Skill Course
    credits DECIMAL(3, 1) DEFAULT 3.0,
    semester VARCHAR(20) DEFAULT 'SEM-II',
    regulation VARCHAR(20) DEFAULT 'R23'
);

-- Step 5: Students Table (Mapped to Real ANITS Hall Tickets)
CREATE TABLE students (
    student_id VARCHAR(30) PRIMARY KEY, -- HallTicket No. (e.g. A23126510001)
    student_name VARCHAR(150) NOT NULL,
    seeker_id VARCHAR(50) NOT NULL UNIQUE, -- Seeker login ID
    program_code VARCHAR(30) REFERENCES programs(program_code) ON DELETE CASCADE,
    batch_year VARCHAR(30) DEFAULT '2023-2027',
    regulation VARCHAR(20) DEFAULT 'R23',
    current_semester VARCHAR(30) DEFAULT 'III/IV B.Tech SEM-II',
    email VARCHAR(150),
    phone VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Step 6: Student Semester Tabulation Records (Real College Register Grades)
CREATE TABLE student_semester_records (
    record_id SERIAL PRIMARY KEY,
    student_id VARCHAR(30) REFERENCES students(student_id) ON DELETE CASCADE,
    academic_year VARCHAR(30) DEFAULT '2025-2026',
    semester VARCHAR(50) DEFAULT 'III/IV B.Tech SEM-II REGULAR (R23)',
    sgpa DECIMAL(4, 2),
    cgpa DECIMAL(4, 2),
    attendance_percent DECIMAL(5, 2) NOT NULL DEFAULT 85.00,
    backlog_count INT NOT NULL DEFAULT 0,
    result_status VARCHAR(30) NOT NULL, -- PASSED, FAILED_BACKLOG, WITHHELD
    subject_grades JSONB, -- Map of subject code -> grade letter (e.g. {"ML": "A+", "CNS": "A"})
    exam_month_year VARCHAR(30) DEFAULT 'AUG-2026',
    date_of_issue TIMESTAMP DEFAULT '2026-08-20 14:01:01'
);

-- Step 7: Verifiable Credentials (The ONEST Cryptographic Ledger)
CREATE TABLE credentials (
    credential_id VARCHAR(50) PRIMARY KEY, -- e.g. ONEST-ANITS-2026-A23126510001
    student_id VARCHAR(30) REFERENCES students(student_id) ON DELETE CASCADE,
    institution_id VARCHAR(30) REFERENCES institutions(institution_id) ON DELETE CASCADE,
    program_code VARCHAR(30) REFERENCES programs(program_code) ON DELETE CASCADE,
    course_code VARCHAR(30) REFERENCES courses(course_code) ON DELETE CASCADE,
    course_start_date DATE NOT NULL,
    course_end_date DATE NOT NULL,
    attendance_percent DECIMAL(5, 2) NOT NULL,
    final_score DECIMAL(5, 2) NOT NULL, -- Equivalent percentage from CGPA/SGPA
    completion_status VARCHAR(30) NOT NULL, -- COMPLETED, BACKLOG, IN_PROGRESS
    eligibility_status VARCHAR(30) NOT NULL, -- ELIGIBLE, INELIGIBLE
    credential_type VARCHAR(100) NOT NULL, -- Semester Grade Card, B.Tech Degree, Course Completion
    issue_date DATE NOT NULL,
    credential_status VARCHAR(30) NOT NULL, -- ACTIVE, REVOKED, EXPIRED
    credential_hash VARCHAR(64) NOT NULL UNIQUE, -- SHA-256 Hex Digest of Canonical JSON
    verification_status VARCHAR(40) NOT NULL, -- CERTIFIED, VALID, TAMPERED, REVOKED
    data_classification VARCHAR(40) DEFAULT 'PUBLIC',
    qr_code_base64 TEXT,
    sgpa DECIMAL(4, 2),
    cgpa DECIMAL(4, 2),
    backlog_count INT DEFAULT 0,
    signatories VARCHAR(200) DEFAULT 'Addl. Controller of Examinations, Controller of Examinations, Principal',
    digital_signature TEXT,
    signature_algorithm VARCHAR(50),
    issuer_public_key TEXT,
    key_id VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Step 8: Credential Requests (Student Request Workflow Queue)
CREATE TABLE credential_requests (
    request_id VARCHAR(50) PRIMARY KEY,
    student_id VARCHAR(30) REFERENCES students(student_id) ON DELETE CASCADE,
    institution_id VARCHAR(30) REFERENCES institutions(institution_id) ON DELETE CASCADE,
    program_code VARCHAR(30) REFERENCES programs(program_code) ON DELETE CASCADE,
    course_code VARCHAR(30) REFERENCES courses(course_code) ON DELETE CASCADE,
    requested_credential_type VARCHAR(100) NOT NULL,
    request_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    request_status VARCHAR(30) NOT NULL DEFAULT 'PENDING', -- PENDING, UNDER_REVIEW, ELIGIBLE, REJECTED, ISSUED
    reviewed_by VARCHAR(50),
    reviewed_at TIMESTAMP,
    rejection_reason TEXT,
    eligibility_summary TEXT
);

-- Step 9: Audit Logs (Tamper & Verification Trail)
CREATE TABLE audit_logs (
    audit_id SERIAL PRIMARY KEY,
    actor VARCHAR(100) NOT NULL,
    action VARCHAR(50) NOT NULL,
    entity_type VARCHAR(50) NOT NULL,
    entity_id VARCHAR(100) NOT NULL,
    timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ip_address VARCHAR(45),
    details TEXT
);

-- Step 10: Helpful Indexing for High Performance
CREATE INDEX idx_students_program ON students(program_code);
CREATE INDEX idx_student_records_student ON student_semester_records(student_id);
CREATE INDEX idx_credentials_student ON credentials(student_id);
CREATE INDEX idx_credentials_hash ON credentials(credential_hash);
CREATE INDEX idx_requests_institution ON credential_requests(institution_id);
CREATE INDEX idx_requests_student ON credential_requests(student_id);
CREATE INDEX idx_audit_timestamp ON audit_logs(timestamp);
