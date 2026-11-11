import React, { useState, useEffect } from 'react';
import { useAuth } from '../context/AuthContext';
import { credentialApi, studentApi } from '../services/api';
import { Link, useNavigate } from 'react-router-dom';

export const ProviderIssueCredential = () => {
  const { user } = useAuth();
  const navigate = useNavigate();

  // Input variables strictly based on student_semester_records and institutional metadata
  const [formData, setFormData] = useState({
    studentId: 'A23126510162',
    institutionId: user?.institutionId || 'INST-ANITS',
    programCode: 'PRG-CSE',
    courseCode: 'CSE-ML',
    credentialType: 'Semester Grade Card (R23)',
    semester: 'III/IV B.Tech SEM-II REGULAR (R23)',
    academicYear: '2025-2026',
    examMonthYear: 'AUG-2026',
    sgpa: '9.35',
    cgpa: '9.56',
    attendancePercent: '81.20',
    backlogCount: '0',
    resultStatus: 'PASSED',
  });

  const [loading, setLoading] = useState(false);
  const [fetchingRecord, setFetchingRecord] = useState(false);
  const [issuedCred, setIssuedCred] = useState(null);
  const [error, setError] = useState(null);
  const [copied, setCopied] = useState(false);
  const [syncNotice, setSyncNotice] = useState(null);

  // Auto-fetch tabulation record from student_semester_records when studentId changes
  const fetchStudentTabulation = async (hallTicket) => {
    if (!hallTicket || !hallTicket.trim()) return;
    setFetchingRecord(true);
    setError(null);
    try {
      const record = await studentApi.getSemesterRecord(hallTicket.trim());
      if (record) {
        setFormData(prev => ({
          ...prev,
          studentId: record.studentId,
          programCode: record.programCode || prev.programCode,
          semester: record.semester || prev.semester,
          academicYear: record.academicYear || prev.academicYear,
          examMonthYear: record.examMonthYear || prev.examMonthYear,
          sgpa: record.sgpa ? record.sgpa.toString() : '',
          cgpa: record.cgpa ? record.cgpa.toString() : '',
          attendancePercent: record.attendancePercent ? record.attendancePercent.toString() : '85.00',
          backlogCount: record.backlogCount !== null ? record.backlogCount.toString() : '0',
          resultStatus: record.resultStatus || 'PASSED',
        }));
        setSyncNotice(`Synchronized with student_semester_records for ${record.studentName || hallTicket} (Record #${record.recordId || ''})`);
        setTimeout(() => setSyncNotice(null), 4000);
      }
    } catch (err) {
      // Fallback if record query fails or candidate not in semester tabulation
      console.warn('Record auto-fetch notice:', err.message);
    } finally {
      setFetchingRecord(false);
    }
  };

  const handleStudentIdBlur = () => {
    if (formData.studentId) {
      fetchStudentTabulation(formData.studentId);
    }
  };

  const setDemoProfile = (id, prg, crs, sgpa, cgpa, att, backlogs, status) => {
    setFormData(prev => ({
      ...prev,
      studentId: id,
      programCode: prg,
      courseCode: crs,
      sgpa: sgpa.toString(),
      cgpa: cgpa ? cgpa.toString() : sgpa.toString(),
      attendancePercent: att.toString(),
      backlogCount: backlogs.toString(),
      resultStatus: status,
    }));
    setError(null);
  };

  const handleChange = (e) => {
    setFormData({ ...formData, [e.target.name]: e.target.value });
  };

  // Live verification parameter validation
  const attVal = parseFloat(formData.attendancePercent) || 0;
  const sgpaVal = parseFloat(formData.sgpa) || 0;
  const backlogsVal = parseInt(formData.backlogCount, 10) || 0;
  const isPassed = formData.resultStatus === 'PASSED';
  const isAttendanceValid = attVal >= 75.0;
  const isBacklogValid = backlogsVal === 0;
  const isSgpaValid = sgpaVal >= 5.0;
  const isVerificationClear = isPassed && isAttendanceValid && isBacklogValid && isSgpaValid;

  const handleSubmit = async (e) => {
    e.preventDefault();
    setLoading(true);
    setError(null);
    setIssuedCred(null);

    // Frontline verification check
    if (!isBacklogValid) {
      setError(`Cannot issue credential: Candidate has ${backlogsVal} active backlog(s). Tabulation verification requires 0 backlogs.`);
      setLoading(false);
      return;
    }
    if (!isPassed) {
      setError(`Cannot issue credential: Examination result status is '${formData.resultStatus}'. Status must be 'PASSED'.`);
      setLoading(false);
      return;
    }
    if (!isAttendanceValid) {
      setError(`Cannot issue credential: Attendance (${attVal}%) is below the mandatory 75.00% institutional regulation threshold.`);
      setLoading(false);
      return;
    }

    try {
      const payload = {
        studentId: formData.studentId.trim(),
        institutionId: formData.institutionId.trim(),
        programCode: formData.programCode,
        courseCode: formData.courseCode,
        credentialType: formData.credentialType,
        semester: formData.semester,
        academicYear: formData.academicYear,
        examMonthYear: formData.examMonthYear,
        sgpa: sgpaVal,
        cgpa: parseFloat(formData.cgpa) || sgpaVal,
        attendancePercent: attVal,
        backlogCount: backlogsVal,
        resultStatus: formData.resultStatus,
        finalScore: sgpaVal * 10,
      };

      const res = await credentialApi.generateCredential(payload);
      setIssuedCred(res);
      // Directly navigate user to the newly minted credential verification certificate
      navigate(`/verify/${res.credentialId}`);
    } catch (err) {
      setError(err.message);
    } finally {
      setLoading(false);
    }
  };

  const copyToClipboard = (text) => {
    navigator.clipboard.writeText(text);
    setCopied(true);
    setTimeout(() => setCopied(false), 2000);
  };

  return (
    <div>
      {/* Header Banner */}
      <div style={{ marginBottom: '2rem', borderBottom: '1px solid var(--border-wire)', paddingBottom: '1.25rem' }}>
        <div className="hero-eyebrow" style={{ marginBottom: '0.4rem' }}>
          <span className="eyebrow-crimson-bar"></span>
          <span>EXAMINATION CELL ISSUANCE • TABLE: student_semester_records</span>
        </div>
        <h2 className="hero-serif-heading" style={{ fontSize: '1.85rem', marginBottom: '0.35rem' }}>
          Issue Official Academic Credential
        </h2>
        <p style={{ color: 'var(--text-secondary)', fontSize: '0.875rem' }}>
          Authoritative institutional issuance &bull; Evaluation against semester tabulation register &bull; Automated SHA-256 integrity sealing
        </p>
      </div>

      {error && (
        <div style={{ padding: '0.85rem 1rem', background: 'var(--status-error-bg)', border: '1px solid var(--status-error-border)', borderRadius: '6px', color: 'var(--status-error-fg)', fontSize: '0.85rem', marginBottom: '1.5rem', fontFamily: 'var(--font-mono)' }}>
          [VERIFICATION ERROR] {error}
        </div>
      )}

      {syncNotice && (
        <div style={{ padding: '0.75rem 1rem', background: 'var(--status-success-bg)', border: '1px solid var(--status-success-border)', borderRadius: '6px', color: 'var(--status-success-fg)', fontSize: '0.8125rem', marginBottom: '1.25rem', fontFamily: 'var(--font-mono)' }}>
          [DATABASE SYNC] {syncNotice}
        </div>
      )}

      {/* Quick Demonstration Select Banner */}
      <div style={{ background: '#FFFFFF', border: '1px solid var(--border-wire)', borderRadius: '8px', padding: '0.85rem 1.25rem', marginBottom: '1.5rem', display: 'flex', alignItems: 'center', justifyContent: 'space-between', flexWrap: 'wrap', gap: '0.75rem' }}>
        <span style={{ fontSize: '0.75rem', fontWeight: 700, color: 'var(--accent-wine)', textTransform: 'uppercase', letterSpacing: '0.04em' }}>
          Authoritative Profiles (student_semester_records):
        </span>
        <div style={{ display: 'flex', gap: '0.5rem', flexWrap: 'wrap' }}>
          <button
            type="button"
            onClick={() => setDemoProfile('A23126510162', 'PRG-CSE', 'CSE-ML', 9.35, 9.56, 81.20, 0, 'PASSED')}
            className="btn btn-outline"
            style={{ fontSize: '0.75rem', padding: '0.25rem 0.65rem' }}
          >
            A23126510162 (Mula Sameera &bull; SGPA 9.35)
          </button>
          <button
            type="button"
            onClick={() => setDemoProfile('A23126510182', 'PRG-CSE', 'CSE-ML', 9.49, 9.55, 84.50, 0, 'PASSED')}
            className="btn btn-outline"
            style={{ fontSize: '0.75rem', padding: '0.25rem 0.65rem' }}
          >
            A23126510182 (Susarla Padmakshi &bull; SGPA 9.49)
          </button>
          <button
            type="button"
            onClick={() => setDemoProfile('A23126510177', 'PRG-CSE', 'CSE-ML', 8.58, 8.80, 88.00, 0, 'PASSED')}
            className="btn btn-outline"
            style={{ fontSize: '0.75rem', padding: '0.25rem 0.65rem' }}
          >
            A23126510177 (Ravada Jaswanth &bull; SGPA 8.58)
          </button>
          <button
            type="button"
            onClick={() => setDemoProfile('A23126510008', 'PRG-CSE', 'CSE-DIP', 0.00, 0.00, 80.80, 1, 'FAILED_BACKLOG')}
            className="btn btn-outline"
            style={{ fontSize: '0.75rem', padding: '0.25rem 0.65rem', borderColor: '#DC2626', color: '#991B1B' }}
          >
            A23126510008 (Arrear Test &bull; 1 Backlog)
          </button>
        </div>
      </div>

      <div style={{ display: 'grid', gridTemplateColumns: issuedCred ? '1.25fr 1fr' : '1fr', gap: '2rem' }}>
        {/* Form Card */}
        <div className="connectivity-card" style={{ padding: '2rem' }}>
          <form onSubmit={handleSubmit} style={{ display: 'flex', flexDirection: 'column', gap: '1.25rem' }}>

            {/* Row 1: Student Hall Ticket & Institution */}
            <div style={{ display: 'grid', gridTemplateColumns: '1.2fr 1fr', gap: '1.25rem' }}>
              <div>
                <label style={{ display: 'block', fontSize: '0.8125rem', fontWeight: 600, color: 'var(--text-secondary)', marginBottom: '0.4rem' }}>
                  Student Hall Ticket / Reg No. (student_id)
                </label>
                <div style={{ display: 'flex', gap: '0.5rem' }}>
                  <input
                    type="text"
                    required
                    name="studentId"
                    value={formData.studentId}
                    onChange={handleChange}
                    onBlur={handleStudentIdBlur}
                    placeholder="e.g. A23126510162"
                    style={{ flex: 1, padding: '0.7rem 0.85rem', borderRadius: '6px', border: '1px solid var(--border-wire)', fontSize: '0.875rem', outline: 'none', fontFamily: 'var(--font-mono)' }}
                  />
                  <button
                    type="button"
                    onClick={() => fetchStudentTabulation(formData.studentId)}
                    disabled={fetchingRecord}
                    className="btn btn-outline"
                    style={{ padding: '0.5rem 0.85rem', fontSize: '0.75rem', whiteSpace: 'nowrap' }}
                    title="Load record from student_semester_records"
                  >
                    {fetchingRecord ? 'Syncing...' : 'Sync Record'}
                  </button>
                </div>
              </div>

              <div>
                <label style={{ display: 'block', fontSize: '0.8125rem', fontWeight: 600, color: 'var(--text-secondary)', marginBottom: '0.4rem' }}>
                  Institution Code
                </label>
                <input
                  type="text"
                  required
                  name="institutionId"
                  value={formData.institutionId}
                  onChange={handleChange}
                  placeholder="e.g. INST-ANITS"
                  style={{ width: '100%', padding: '0.7rem 0.85rem', borderRadius: '6px', border: '1px solid var(--border-wire)', fontSize: '0.875rem', outline: 'none', fontFamily: 'var(--font-mono)' }}
                />
              </div>
            </div>

            {/* Row 2: Program (Branch) & Credential Type */}
            <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '1.25rem' }}>
              <div>
                <label style={{ display: 'block', fontSize: '0.8125rem', fontWeight: 600, color: 'var(--text-secondary)', marginBottom: '0.4rem' }}>
                  Program (Engineering Branch)
                </label>
                <select
                  name="programCode"
                  value={formData.programCode}
                  onChange={handleChange}
                  style={{ width: '100%', padding: '0.7rem 0.85rem', borderRadius: '6px', border: '1px solid var(--border-wire)', fontSize: '0.875rem', outline: 'none', background: '#FFFFFF' }}
                >
                  <option value="PRG-CSE">PRG-CSE — Computer Science &amp; Engineering</option>
                  <option value="PRG-CSM">PRG-CSM — CSE (AI &amp; ML)</option>
                  <option value="PRG-CSD">PRG-CSD — CSE (Data Science)</option>
                  <option value="PRG-IT">PRG-IT — Information Technology</option>
                  <option value="PRG-ECE">PRG-ECE — Electronics &amp; Communication Engg</option>
                  <option value="PRG-EEE">PRG-EEE — Electrical &amp; Electronics Engg</option>
                  <option value="PRG-MECH">PRG-MECH — Mechanical Engineering</option>
                  <option value="PRG-CIVIL">PRG-CIVIL — Civil Engineering</option>
                  <option value="PRG-CHEM">PRG-CHEM — Chemical Engineering</option>
                </select>
              </div>

              <div>
                <label style={{ display: 'block', fontSize: '0.8125rem', fontWeight: 600, color: 'var(--text-secondary)', marginBottom: '0.4rem' }}>
                  Credential Type
                </label>
                <select
                  name="credentialType"
                  value={formData.credentialType}
                  onChange={handleChange}
                  style={{ width: '100%', padding: '0.7rem 0.85rem', borderRadius: '6px', border: '1px solid var(--border-wire)', fontSize: '0.875rem', outline: 'none', background: '#FFFFFF' }}
                >
                  <option value="Semester Grade Card (R23)">Semester Grade Card (R23)</option>
                  <option value="B.Tech Degree Credential">B.Tech Degree Credential</option>
                  <option value="Consolidated Grade Transcript">Consolidated Grade Transcript</option>
                  <option value="Course Completion Credential">Course Completion Credential</option>
                  <option value="Provisional Certificate">Provisional Certificate</option>
                </select>
              </div>
            </div>

            {/* Row 3: Semester & Academic Year (From student_semester_records) */}
            <div style={{ display: 'grid', gridTemplateColumns: '1.4fr 1fr', gap: '1.25rem' }}>
              <div>
                <label style={{ display: 'block', fontSize: '0.8125rem', fontWeight: 600, color: 'var(--text-secondary)', marginBottom: '0.4rem' }}>
                  Academic Semester (semester)
                </label>
                <input
                  type="text"
                  required
                  name="semester"
                  value={formData.semester}
                  onChange={handleChange}
                  placeholder="e.g. III/IV B.Tech SEM-II REGULAR (R23)"
                  style={{ width: '100%', padding: '0.7rem 0.85rem', borderRadius: '6px', border: '1px solid var(--border-wire)', fontSize: '0.875rem', outline: 'none' }}
                />
              </div>

              <div>
                <label style={{ display: 'block', fontSize: '0.8125rem', fontWeight: 600, color: 'var(--text-secondary)', marginBottom: '0.4rem' }}>
                  Academic Year (academic_year)
                </label>
                <input
                  type="text"
                  required
                  name="academicYear"
                  value={formData.academicYear}
                  onChange={handleChange}
                  placeholder="e.g. 2025-2026"
                  style={{ width: '100%', padding: '0.7rem 0.85rem', borderRadius: '6px', border: '1px solid var(--border-wire)', fontSize: '0.875rem', outline: 'none' }}
                />
              </div>
            </div>

            {/* Section Divider: Examination Verification Parameters */}
            <div style={{ borderTop: '1px solid var(--border-wire)', paddingTop: '1.25rem', marginTop: '0.5rem' }}>
              <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginBottom: '1rem' }}>
                <span style={{ fontSize: '0.8rem', fontWeight: 700, color: 'var(--accent-wine)', textTransform: 'uppercase', letterSpacing: '0.04em' }}>
                  Verification Process Parameters (student_semester_records)
                </span>
                <span style={{ fontSize: '0.75rem', color: 'var(--text-muted)' }}>
                  Evaluated against autonomous college examination criteria
                </span>
              </div>

              {/* Row 4: SGPA, CGPA & Attendance */}
              <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr 1fr', gap: '1.25rem', marginBottom: '1.25rem' }}>
                <div>
                  <label style={{ display: 'block', fontSize: '0.8125rem', fontWeight: 600, color: 'var(--text-secondary)', marginBottom: '0.4rem' }}>
                    Semester SGPA <span style={{ color: 'var(--text-muted)', fontSize: '0.72rem' }}>(&ge; 5.00)</span>
                  </label>
                  <input
                    type="number"
                    step="0.01"
                    min="0"
                    max="10"
                    required
                    name="sgpa"
                    value={formData.sgpa}
                    onChange={handleChange}
                    style={{ width: '100%', padding: '0.7rem 0.85rem', borderRadius: '6px', border: '1px solid var(--border-wire)', fontSize: '0.875rem', outline: 'none' }}
                  />
                </div>

                <div>
                  <label style={{ display: 'block', fontSize: '0.8125rem', fontWeight: 600, color: 'var(--text-secondary)', marginBottom: '0.4rem' }}>
                    Cumulative CGPA
                  </label>
                  <input
                    type="number"
                    step="0.01"
                    min="0"
                    max="10"
                    name="cgpa"
                    value={formData.cgpa}
                    onChange={handleChange}
                    style={{ width: '100%', padding: '0.7rem 0.85rem', borderRadius: '6px', border: '1px solid var(--border-wire)', fontSize: '0.875rem', outline: 'none' }}
                  />
                </div>

                <div>
                  <label style={{ display: 'block', fontSize: '0.8125rem', fontWeight: 600, color: 'var(--text-secondary)', marginBottom: '0.4rem' }}>
                    Attendance (%) <span style={{ color: 'var(--text-muted)', fontSize: '0.72rem' }}>(&ge; 75.00%)</span>
                  </label>
                  <input
                    type="number"
                    step="0.01"
                    min="0"
                    max="100"
                    required
                    name="attendancePercent"
                    value={formData.attendancePercent}
                    onChange={handleChange}
                    style={{ width: '100%', padding: '0.7rem 0.85rem', borderRadius: '6px', border: '1px solid var(--border-wire)', fontSize: '0.875rem', outline: 'none' }}
                  />
                </div>
              </div>

              {/* Row 5: Backlogs, Result Status & Examination Month */}
              <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr 1fr', gap: '1.25rem' }}>
                <div>
                  <label style={{ display: 'block', fontSize: '0.8125rem', fontWeight: 600, color: 'var(--text-secondary)', marginBottom: '0.4rem' }}>
                    Backlog Count <span style={{ color: 'var(--text-muted)', fontSize: '0.72rem' }}>(Must be 0)</span>
                  </label>
                  <input
                    type="number"
                    min="0"
                    required
                    name="backlogCount"
                    value={formData.backlogCount}
                    onChange={handleChange}
                    style={{
                      width: '100%',
                      padding: '0.7rem 0.85rem',
                      borderRadius: '6px',
                      border: `1px solid ${backlogsVal > 0 ? '#DC2626' : 'var(--border-wire)'}`,
                      fontSize: '0.875rem',
                      outline: 'none',
                      background: backlogsVal > 0 ? '#FEF2F2' : '#FFFFFF'
                    }}
                  />
                </div>

                <div>
                  <label style={{ display: 'block', fontSize: '0.8125rem', fontWeight: 600, color: 'var(--text-secondary)', marginBottom: '0.4rem' }}>
                    Result Status
                  </label>
                  <select
                    name="resultStatus"
                    value={formData.resultStatus}
                    onChange={handleChange}
                    style={{
                      width: '100%',
                      padding: '0.7rem 0.85rem',
                      borderRadius: '6px',
                      border: `1px solid ${!isPassed ? '#DC2626' : 'var(--border-wire)'}`,
                      fontSize: '0.875rem',
                      outline: 'none',
                      background: !isPassed ? '#FEF2F2' : '#FFFFFF'
                    }}
                  >
                    <option value="PASSED">PASSED (All Modules Cleared)</option>
                    <option value="FAILED_BACKLOG">FAILED_BACKLOG (Arrears Active)</option>
                    <option value="WITHHELD">WITHHELD (Administrative Hold)</option>
                  </select>
                </div>

                <div>
                  <label style={{ display: 'block', fontSize: '0.8125rem', fontWeight: 600, color: 'var(--text-secondary)', marginBottom: '0.4rem' }}>
                    Exam Month/Year
                  </label>
                  <input
                    type="text"
                    required
                    name="examMonthYear"
                    value={formData.examMonthYear}
                    onChange={handleChange}
                    placeholder="e.g. AUG-2026"
                    style={{ width: '100%', padding: '0.7rem 0.85rem', borderRadius: '6px', border: '1px solid var(--border-wire)', fontSize: '0.875rem', outline: 'none' }}
                  />
                </div>
              </div>
            </div>

            {/* Live Verification Summary Box */}
            <div style={{
              padding: '0.85rem 1.15rem',
              borderRadius: '6px',
              border: `1px solid ${isVerificationClear ? 'var(--status-success-border)' : 'var(--status-error-border)'}`,
              background: isVerificationClear ? 'var(--status-success-bg)' : 'var(--status-error-bg)',
              fontSize: '0.825rem',
              display: 'flex',
              alignItems: 'center',
              justifyContent: 'space-between',
              flexWrap: 'wrap',
              gap: '0.5rem'
            }}>
              <div>
                <strong style={{ color: isVerificationClear ? 'var(--status-success-fg)' : 'var(--status-error-fg)' }}>
                  {isVerificationClear ? '✓ Verification Status: ELIGIBLE FOR ISSUANCE' : '✕ Verification Status: INELIGIBLE'}
                </strong>
                <div style={{ color: 'var(--text-secondary)', fontSize: '0.75rem', marginTop: '0.2rem' }}>
                  Attendance: {attVal}% ({isAttendanceValid ? 'Pass' : 'Below 75%'}) &bull; Backlogs: {backlogsVal} ({isBacklogValid ? 'Pass' : 'Failed'}) &bull; Result: {formData.resultStatus}
                </div>
              </div>
              <span className={`badge ${isVerificationClear ? 'badge-success' : 'badge-danger'}`} style={{ fontSize: '0.72rem' }}>
                {isVerificationClear ? 'Criteria Satisfied' : 'Verification Blocked'}
              </span>
            </div>

            <button
              type="submit"
              disabled={loading || !isVerificationClear}
              className="btn btn-hero-wine"
              style={{
                marginTop: '0.5rem',
                padding: '0.85rem',
                width: '100%',
                justifyContent: 'center',
                opacity: isVerificationClear ? 1 : 0.65,
                cursor: isVerificationClear ? 'pointer' : 'not-allowed'
              }}
            >
              {loading ? 'Evaluating Rules & Issuing Credential...' : 'Issue Credential \u2192'}
            </button>
          </form>
        </div>

        {/* Issuance Receipt / QR Code Preview */}
        {issuedCred && (
          <div className="floating-credential-card" style={{ maxWidth: '100%', transform: 'none' }}>
            <div className="credential-card-accent-spine"></div>
            <div className="credential-card-body" style={{ padding: '2rem' }}>
              <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '1.25rem' }}>
                <span className="brand-onest-sm">ONEST</span>
                <span className="badge badge-success" style={{ fontSize: '0.7rem' }}>
                  Persisted to Registry
                </span>
              </div>

              <div style={{ textAlign: 'center', marginBottom: '1.5rem', background: '#FFFFFF', padding: '1.5rem', borderRadius: '6px', border: '1px solid var(--border-wire)' }}>
                {issuedCred.qrCodeBase64 ? (
                  <div style={{ background: '#fff', padding: '0.45rem', borderRadius: '6px', width: 'fit-content', margin: '0 auto' }}>
                    <img src={issuedCred.qrCodeBase64} alt="Verification QR Code" style={{ width: '140px', height: '140px', display: 'block' }} />
                  </div>
                ) : (
                  <div style={{ color: 'var(--text-muted)', margin: '1.5rem 0' }}>QR Code Generated</div>
                )}
                <div style={{ fontSize: '0.75rem', color: 'var(--text-secondary)', marginTop: '0.75rem' }}>
                  Scan with any QR scanner to verify integrity
                </div>
              </div>

              <div style={{ display: 'flex', flexDirection: 'column', gap: '0.85rem', fontSize: '0.85rem' }}>
                <div>
                  <span style={{ color: 'var(--text-secondary)', fontSize: '0.72rem', textTransform: 'uppercase', letterSpacing: '0.04em', fontWeight: 600 }}>Unique Credential ID:</span>
                  <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', background: 'var(--bg-secondary)', padding: '0.6rem 0.85rem', borderRadius: '6px', border: '1px solid var(--border-wire)', fontFamily: 'var(--font-mono)', marginTop: '0.3rem' }}>
                    <strong style={{ color: 'var(--text-primary)' }}>{issuedCred.credentialId}</strong>
                    <button onClick={() => copyToClipboard(issuedCred.credentialId)} style={{ fontSize: '0.75rem', color: 'var(--accent-wine)', textDecoration: 'underline', fontWeight: 600 }}>
                      {copied ? 'Copied' : 'Copy'}
                    </button>
                  </div>
                </div>

                <div style={{ background: 'var(--status-success-bg)', border: '1px solid var(--status-success-border)', padding: '0.85rem 1rem', borderRadius: '6px', marginTop: '0.35rem', textAlign: 'center' }}>
                  <span style={{ color: 'var(--status-success-fg)', fontWeight: 600, fontSize: '0.8125rem', fontFamily: 'var(--font-mono)' }}>
                    &#x25cf; Cryptographically Signed &amp; Sealed in ONEST Registry
                  </span>
                </div>

                <div style={{ marginTop: '0.75rem' }}>
                  <Link to={`/verify/${issuedCred.credentialId}`} target="_blank" className="btn btn-outline" style={{ width: '100%', fontSize: '0.8125rem', borderRadius: '6px' }}>
                    Open Public Verification Page &rarr;
                  </Link>
                </div>
              </div>
            </div>
          </div>
        )}
      </div>
    </div>
  );
};
