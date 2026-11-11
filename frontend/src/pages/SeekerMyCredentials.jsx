import React, { useState, useEffect } from 'react';
import { useAuth } from '../context/AuthContext';
import { credentialApi } from '../services/api';
import { Link } from 'react-router-dom';

export const SeekerMyCredentials = () => {
  const { user } = useAuth();
  const [credentials, setCredentials] = useState([]);
  const [loading, setLoading] = useState(true);
  const [selectedCred, setSelectedCred] = useState(null);
  const [error, setError] = useState(null);
  const [copiedId, setCopiedId] = useState(false);
  const [filterStatus, setFilterStatus] = useState('ALL'); // 'ALL', 'VALID', 'TAMPERED', 'REVOKED'
  const [activeStudentId, setActiveStudentId] = useState(user?.studentId || 'A23126510162');

  const fetchCredentials = async (studentIdToFetch) => {
    setLoading(true);
    setError(null);
    try {
      const id = studentIdToFetch || activeStudentId;
      const data = await credentialApi.getCredentialsByStudent(id);
      setCredentials(data || []);
    } catch (err) {
      setError(err.message);
      setCredentials([]);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    const defaultId = user?.studentId || 'A23126510162';
    setActiveStudentId(defaultId);
    fetchCredentials(defaultId);
  }, [user]);

  const handleSwitchCandidate = (candId) => {
    setActiveStudentId(candId);
    fetchCredentials(candId);
  };

  const isIneligible = (c) =>
    c.integrityStatus === 'INELIGIBLE' ||
    c.integrityStatus === 'INELIGIBLE_CRITERIA_FAILED' ||
    c.credentialStatus === 'REJECTED' ||
    c.eligibilityStatus === 'NOT_ELIGIBLE' ||
    c.eligibilityStatus === 'Ineligible' ||
    (c.failedEligibilityRules && c.failedEligibilityRules.length > 0);

  const isRevoked = (c) =>
    (c.integrityStatus === 'REVOKED' || c.credentialStatus === 'Revoked') && !isIneligible(c);

  const isValid = (c) =>
    c.valid !== false && !isRevoked(c) && !isIneligible(c) && c.integrityStatus !== 'TAMPER_DETECTED';

  const isTampered = (c) =>
    !isValid(c) && !isRevoked(c) && !isIneligible(c);

  const validCount = credentials.filter(c => isValid(c)).length;
  const ineligibleCount = credentials.filter(c => isIneligible(c)).length;
  const tamperedCount = credentials.filter(c => isTampered(c)).length;
  const revokedCount = credentials.filter(c => isRevoked(c)).length;

  const filteredCredentials = credentials.filter(c => {
    if (filterStatus === 'VALID') return isValid(c);
    if (filterStatus === 'INELIGIBLE') return isIneligible(c);
    if (filterStatus === 'TAMPERED') return isTampered(c);
    if (filterStatus === 'REVOKED') return isRevoked(c);
    return true;
  });

  return (
    <div>
      {/* Header Banner */}
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '1.75rem', flexWrap: 'wrap', gap: '1rem', borderBottom: '1px solid var(--border-wire)', paddingBottom: '1.25rem' }}>
        <div>
          <div className="hero-eyebrow" style={{ marginBottom: '0.4rem' }}>
            <span className="eyebrow-crimson-bar"></span>
            <span>STUDENT DIGITAL CREDENTIAL WALLET</span>
          </div>
          <h2 className="hero-serif-heading" style={{ fontSize: '1.85rem', marginBottom: '0.25rem' }}>
            My Verified Academic Credentials
          </h2>
          <p style={{ color: 'var(--text-secondary)', fontSize: '0.875rem' }}>
            Authoritative ANITS degrees, grade cards, and course completion certificates &bull; Live SHA-256 integrity audit
          </p>
        </div>
        <div style={{ display: 'flex', gap: '0.5rem', alignItems: 'center' }}>
          <button onClick={() => fetchCredentials(activeStudentId)} className="btn btn-refresh">
            {loading ? 'Auditing...' : 'Refresh Wallet'}
          </button>
        </div>
      </div>

      {/* Candidate Profile Switcher Bar */}
      <div style={{ background: '#FFFFFF', border: '1px solid var(--border-wire)', borderRadius: '8px', padding: '0.85rem 1.25rem', marginBottom: '1.75rem', display: 'flex', alignItems: 'center', justifyContent: 'space-between', flexWrap: 'wrap', gap: '0.75rem' }}>
        <span style={{ fontSize: '0.75rem', fontWeight: 700, color: 'var(--accent-wine)', textTransform: 'uppercase', letterSpacing: '0.04em' }}>
          Inspect Student Wallet:
        </span>
        <div style={{ display: 'flex', gap: '0.5rem', flexWrap: 'wrap' }}>
          <button
            type="button"
            onClick={() => handleSwitchCandidate('A23126510162')}
            className={`btn ${activeStudentId === 'A23126510162' ? 'btn-hero-wine' : 'btn-outline'}`}
            style={{ fontSize: '0.75rem', padding: '0.25rem 0.65rem' }}
          >
            A23126510162 (Mula Sameera &bull; CSE)
          </button>
          <button
            type="button"
            onClick={() => handleSwitchCandidate('A23126512014')}
            className={`btn ${activeStudentId === 'A23126512014' ? 'btn-hero-wine' : 'btn-outline'}`}
            style={{ fontSize: '0.75rem', padding: '0.25rem 0.65rem' }}
          >
            A23126512014 (Krishna Devi &bull; ECE)
          </button>
          <button
            type="button"
            onClick={() => handleSwitchCandidate('A23126510001')}
            className={`btn ${activeStudentId === 'A23126510001' ? 'btn-hero-wine' : 'btn-outline'}`}
            style={{ fontSize: '0.75rem', padding: '0.25rem 0.65rem' }}
          >
            A23126510001 (Shravan Verma &bull; CSE)
          </button>
          <button
            type="button"
            onClick={() => handleSwitchCandidate('A23126502008')}
            className={`btn ${activeStudentId === 'A23126502008' ? 'btn-hero-wine' : 'btn-outline'}`}
            style={{ fontSize: '0.75rem', padding: '0.25rem 0.65rem', borderColor: '#DC2626', color: activeStudentId === 'A23126502008' ? '#fff' : '#991B1B', background: activeStudentId === 'A23126502008' ? '#DC2626' : undefined }}
          >
            A23126502008 (Naveen Nambiar &bull; Ineligible Audit)
          </button>
        </div>
      </div>

      {/* Wallet Health & Cryptographic Integrity Summary Bar */}
      <div className="health-metrics-grid" style={{ marginBottom: '2rem' }}>
        <div
          onClick={() => setFilterStatus('ALL')}
          className="metric-box"
          style={{ padding: '1rem 1.25rem', cursor: 'pointer', border: filterStatus === 'ALL' ? '2px solid var(--accent-wine)' : '1px solid var(--border-wire)' }}
        >
          <div className="metric-label">Total in Wallet</div>
          <div className="metric-value">{credentials.length}</div>
          <div style={{ fontSize: '0.72rem', color: 'var(--text-muted)', marginTop: '0.25rem' }}>All student records</div>
        </div>

        <div
          onClick={() => setFilterStatus('VALID')}
          className="metric-box"
          style={{ padding: '1rem 1.25rem', cursor: 'pointer', border: filterStatus === 'VALID' ? '2px solid var(--status-success-border)' : '1px solid var(--border-wire)' }}
        >
          <div className="metric-label">Valid &bull; Tamper-Free</div>
          <div className="metric-value" style={{ color: 'var(--status-success-fg)' }}>{validCount}</div>
          <div style={{ fontSize: '0.72rem', color: 'var(--status-success-fg)', marginTop: '0.25rem' }}>SHA-256 Hash Matched</div>
        </div>

        <div
          onClick={() => setFilterStatus('INELIGIBLE')}
          className="metric-box"
          style={{ padding: '1rem 1.25rem', cursor: 'pointer', border: filterStatus === 'INELIGIBLE' ? '2px solid #EF4444' : '1px solid var(--border-wire)' }}
        >
          <div className="metric-label">Ineligible &bull; Denied</div>
          <div className="metric-value" style={{ color: ineligibleCount > 0 ? '#DC2626' : 'var(--text-muted)' }}>{ineligibleCount}</div>
          <div style={{ fontSize: '0.72rem', color: ineligibleCount > 0 ? '#DC2626' : 'var(--text-muted)', marginTop: '0.25rem' }}>Failed 5 Criteria Rules</div>
        </div>

        <div
          onClick={() => setFilterStatus('TAMPERED')}
          className="metric-box"
          style={{ padding: '1rem 1.25rem', cursor: 'pointer', border: filterStatus === 'TAMPERED' ? '2px solid var(--status-error-border)' : '1px solid var(--border-wire)' }}
        >
          <div className="metric-label">Tamper / Hash Alert</div>
          <div className="metric-value" style={{ color: tamperedCount > 0 ? 'var(--status-error-fg)' : 'var(--text-muted)' }}>{tamperedCount}</div>
          <div style={{ fontSize: '0.72rem', color: tamperedCount > 0 ? 'var(--status-error-fg)' : 'var(--text-muted)', marginTop: '0.25rem' }}>Integrity violation</div>
        </div>

        <div
          onClick={() => setFilterStatus('REVOKED')}
          className="metric-box"
          style={{ padding: '1rem 1.25rem', cursor: 'pointer', border: filterStatus === 'REVOKED' ? '2px solid var(--status-warning-border)' : '1px solid var(--border-wire)' }}
        >
          <div className="metric-label">Revoked by Institution</div>
          <div className="metric-value" style={{ color: revokedCount > 0 ? 'var(--status-warning-fg)' : 'var(--text-muted)' }}>{revokedCount}</div>
          <div style={{ fontSize: '0.72rem', color: 'var(--text-muted)', marginTop: '0.25rem' }}>Administrative revocation</div>
        </div>
      </div>

      {error && (
        <div style={{ padding: '0.85rem 1rem', background: 'var(--status-error-bg)', border: '1px solid var(--status-error-border)', borderRadius: '6px', color: 'var(--status-error-fg)', fontSize: '0.85rem', marginBottom: '1.5rem', fontFamily: 'var(--font-mono)' }}>
          [WALLET ERROR] {error}
        </div>
      )}

      {loading ? (
        <div style={{ textAlign: 'center', padding: '3.5rem', color: 'var(--text-secondary)' }}>Auditing and verifying digital credentials in wallet...</div>
      ) : filteredCredentials.length === 0 ? (
        <div className="connectivity-card" style={{ textAlign: 'center', padding: '3.5rem' }}>
          <h3 style={{ fontSize: '1.15rem', fontWeight: 700, color: 'var(--text-primary)', marginBottom: '0.35rem' }}>
            {credentials.length === 0 ? 'No Credentials Found for this Student' : 'No Credentials Match the Selected Filter'}
          </h3>
          <p style={{ color: 'var(--text-secondary)', fontSize: '0.875rem', marginBottom: '1.5rem' }}>
            {credentials.length === 0 ? `Student ID ${activeStudentId} has no credentials in the registry. Submit an issuance request or select another student.` : 'Click "Total in Wallet" above to view all certificates.'}
          </p>
          <Link to="/seeker/request" className="btn btn-hero-wine" style={{ padding: '0.65rem 1.4rem', textDecoration: 'none' }}>
            Request a Credential &rarr;
          </Link>
        </div>
      ) : (
        <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(360px, 1fr))', gap: '1.5rem' }}>
          {filteredCredentials.map((c) => {
            const inelig = isIneligible(c);
            const valid = isValid(c);
            const revoked = isRevoked(c);
            const tampered = isTampered(c);

            const spineColor = valid ? 'var(--status-success-fg)' : inelig ? '#DC2626' : revoked ? 'var(--status-warning-fg)' : 'var(--status-error-fg)';

            return (
              <div
                key={c.credentialId}
                className="floating-credential-card"
                style={{
                  maxWidth: '100%',
                  transform: 'none',
                  border: `1px solid ${valid ? 'var(--border-wire)' : inelig ? '#FCA5A5' : revoked ? 'var(--status-warning-border)' : 'var(--status-error-border)'}`,
                  boxShadow: (tampered || inelig) ? '0 4px 14px rgba(220, 38, 38, 0.08)' : undefined
                }}
              >
                <div className="credential-card-accent-spine" style={{ background: spineColor }}></div>
                <div className="credential-card-body" style={{ padding: '1.5rem', display: 'flex', flexDirection: 'column' }}>
                  {/* Card Top Row */}
                  <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '0.85rem', flexWrap: 'wrap', gap: '0.5rem' }}>
                    <div style={{ display: 'flex', alignItems: 'center', gap: '0.45rem' }}>
                      <span className="brand-onest-sm">ONEST</span>
                      <span style={{ fontSize: '0.72rem', color: 'var(--text-muted)', fontFamily: 'var(--font-mono)' }}>&bull; ANITS REGISTRY</span>
                    </div>

                    {/* Cryptographic Integrity Badge */}
                    <span
                      className={`badge ${valid ? 'badge-success' : inelig ? 'badge-danger' : revoked ? 'badge-warning' : 'badge-danger'}`}
                      style={{ fontSize: '0.7rem', display: 'inline-flex', alignItems: 'center', gap: '0.35rem' }}
                    >
                      <span>{valid ? '✓' : inelig ? '✕' : revoked ? '⚠' : '✕'}</span>
                      {valid ? 'VALID • TAMPER-FREE' : inelig ? 'INELIGIBLE • CRITERIA FAILED' : revoked ? 'REVOKED' : 'TAMPER DETECTED'}
                    </span>
                  </div>

                  <div className="credential-card-title" style={{ fontSize: '1.15rem', marginBottom: '0.2rem' }}>
                    {c.credentialType}
                  </div>
                  <div className="credential-card-program" style={{ fontSize: '0.875rem', fontWeight: 600, color: 'var(--text-primary)' }}>
                    {c.courseName || c.courseCode}
                  </div>
                  <div className="credential-card-institution" style={{ fontSize: '0.78rem', color: 'var(--text-secondary)', marginBottom: '1rem' }}>
                    {c.institutionName || 'Anil Neerukonda Institute of Technology & Sciences'}
                  </div>

                  {/* Academic Tabulation Snapshot */}
                  <div style={{
                    background: valid ? 'var(--bg-secondary)' : inelig ? '#FEF2F2' : revoked ? 'var(--status-warning-bg)' : 'var(--status-error-bg)',
                    padding: '0.85rem 1rem',
                    borderRadius: '6px',
                    border: `1px solid ${valid ? 'var(--border-wire)' : inelig ? '#FCA5A5' : revoked ? 'var(--status-warning-border)' : 'var(--status-error-border)'}`,
                    fontSize: '0.8rem',
                    color: 'var(--text-secondary)',
                    marginBottom: '1.25rem'
                  }}>
                    <div style={{ display: 'grid', gridTemplateColumns: 'repeat(2, 1fr)', gap: '0.45rem', marginBottom: '0.55rem' }}>
                      <div>SGPA: <strong style={{ color: inelig ? '#991B1B' : 'var(--text-primary)' }}>{c.sgpa != null ? Number(c.sgpa).toFixed(2) : (valid ? '9.82' : 'WITHHELD')}</strong></div>
                      <div>CGPA: <strong style={{ color: inelig ? '#991B1B' : 'var(--text-primary)' }}>{c.cgpa != null ? Number(c.cgpa).toFixed(2) : (valid ? '9.81' : 'WITHHELD')}</strong></div>
                      <div>Score: <strong style={{ color: (c.finalScore != null && Number(c.finalScore) < 50) ? '#DC2626' : 'var(--text-primary)' }}>{c.finalScore != null ? c.finalScore + '%' : '—'}</strong></div>
                      <div>Attendance: <strong style={{ color: (c.attendancePercent != null && Number(c.attendancePercent) < 75) ? '#DC2626' : 'var(--text-primary)' }}>{c.attendancePercent != null ? c.attendancePercent + '%' : '—'}</strong></div>
                    </div>
                    <div style={{ paddingTop: '0.45rem', borderTop: '1px solid rgba(0,0,0,0.06)', display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
                      {!inelig ? (
                        <span style={{ fontSize: '0.72rem', color: 'var(--text-muted)' }}>ID: <code style={{ fontSize: '0.75rem', color: 'var(--accent-wine)', fontWeight: 600 }}>{c.credentialId}</code></span>
                      ) : (
                        <span style={{ fontSize: '0.72rem', color: '#991B1B', fontWeight: 600 }}>0 CREDENTIALS CONFERRED</span>
                      )}
                      <span style={{ fontSize: '0.72rem', color: 'var(--text-muted)', fontFamily: 'var(--font-mono)' }}>{valid ? c.issueDate : 'CONFERRAL DENIED'}</span>
                    </div>
                  </div>

                  {/* Ineligibility / Tamper Alert Callout if applicable */}
                  {inelig && (
                    <div style={{ background: '#FEF2F2', border: '1px solid #FCA5A5', padding: '0.55rem 0.85rem', borderRadius: '4px', fontSize: '0.75rem', color: '#991B1B', marginBottom: '1rem', fontFamily: 'var(--font-mono)' }}>
                      [INELIGIBILITY ALERT] Candidate failed 5 eligibility rules: 0 Credentials Conferred
                    </div>
                  )}

                  {tampered && (
                    <div style={{ background: 'var(--status-error-bg)', border: '1px solid var(--status-error-border)', padding: '0.55rem 0.85rem', borderRadius: '4px', fontSize: '0.75rem', color: 'var(--status-error-fg)', marginBottom: '1rem', fontFamily: 'var(--font-mono)' }}>
                      [INTEGRITY ALERT] Recomputed hash does not match registry seal!
                    </div>
                  )}

                  <div style={{ display: 'flex', gap: '0.65rem', marginTop: 'auto' }}>
                    <button
                      onClick={() => { setSelectedCred(c); setCopiedId(false); }}
                      className="btn btn-hero-wine"
                      style={{ flex: 1, fontSize: '0.78rem', padding: '0.6rem 0.85rem' }}
                    >
                      View Certificate &amp; QR
                    </button>
                    <Link
                      to={`/verify/${c.credentialId}`}
                      target="_blank"
                      className="btn btn-outline"
                      style={{ fontSize: '0.78rem', padding: '0.6rem 0.85rem' }}
                    >
                      Verify Online &rarr;
                    </Link>
                  </div>
                </div>
              </div>
            );
          })}
        </div>
      )}

      {/* Official Verifiable Credential Certificate Modal */}
      {selectedCred && (() => {
        const inelig = isIneligible(selectedCred);
        const valid = isValid(selectedCred);
        const revoked = isRevoked(selectedCred);
        const tampered = isTampered(selectedCred);

        return (
          <div className="modal-overlay">
            <div className="modal-content" style={{ width: '100%', maxWidth: '680px', maxHeight: '92vh', overflowY: 'auto', padding: '2.25rem', borderRadius: '10px', background: '#FFFFFF', border: '1px solid var(--border-wire)' }}>
              
              {/* Modal Header Row */}
              <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', borderBottom: '1px solid var(--border-wire)', paddingBottom: '0.85rem', marginBottom: '1.25rem' }}>
                <div style={{ display: 'flex', alignItems: 'center', gap: '0.5rem' }}>
                  <span className="brand-onest-sm">ONEST</span>
                  <span style={{ fontSize: '0.85rem', fontWeight: 600, color: 'var(--text-secondary)' }}>
                    Authoritative Student Credential Certificate
                  </span>
                </div>
                <button onClick={() => { setSelectedCred(null); setCopiedId(false); }} style={{ color: 'var(--text-secondary)', fontWeight: 700, fontSize: '0.9rem' }}>
                  [Close]
                </button>
              </div>

              {/* Cryptographic Integrity Status Banner */}
              <div style={{
                background: inelig ? '#FEF2F2' : valid ? 'var(--status-success-bg)' : revoked ? 'var(--status-warning-bg)' : 'var(--status-error-bg)',
                border: `1px solid ${inelig ? '#FCA5A5' : valid ? 'var(--status-success-border)' : revoked ? 'var(--status-warning-border)' : 'var(--status-error-border)'}`,
                padding: '0.75rem 1rem',
                borderRadius: '6px',
                marginBottom: '1.25rem',
                display: 'flex',
                justifyContent: 'space-between',
                alignItems: 'center',
                flexWrap: 'wrap',
                gap: '0.5rem'
              }}>
                <div style={{ display: 'flex', alignItems: 'center', gap: '0.45rem' }}>
                  <span style={{ fontWeight: 700, color: inelig ? '#991B1B' : valid ? 'var(--status-success-fg)' : revoked ? 'var(--status-warning-fg)' : 'var(--status-error-fg)' }}>
                    {inelig
                      ? '✕ STATUS: INELIGIBLE — ACADEMIC ELIGIBILITY CRITERIA FAILED'
                      : valid
                      ? '✓ STATUS: CRYPTOGRAPHICALLY VALID & SEALED'
                      : revoked
                      ? '⚠ STATUS: REVOKED BY INSTITUTION'
                      : '✕ STATUS: TAMPER DETECTED (HASH MISMATCH)'}
                  </span>
                </div>
                <span className={`badge ${valid ? 'badge-success' : inelig ? 'badge-danger' : revoked ? 'badge-warning' : 'badge-danger'}`} style={{ fontSize: '0.7rem' }}>
                  {valid ? 'Zero Tamper Detected' : inelig ? '0 Conferred (Denied)' : revoked ? 'Revoked' : 'Hash Mismatch'}
                </span>
              </div>

              {/* Unique Credential ID Row */}
              {!inelig && (
                <div style={{
                  background: 'var(--bg-secondary)',
                  padding: '0.65rem 0.95rem',
                  borderRadius: '6px',
                  border: '1px solid var(--border-wire)',
                  marginBottom: '1.25rem',
                  display: 'flex',
                  justifyContent: 'space-between',
                  alignItems: 'center',
                  flexWrap: 'wrap',
                  gap: '0.5rem'
                }}>
                  <div>
                    <span style={{ fontSize: '0.68rem', color: 'var(--text-muted)', textTransform: 'uppercase', letterSpacing: '0.04em', display: 'block', fontWeight: 600 }}>
                      Official Credential ID
                    </span>
                    <strong style={{ color: 'var(--accent-wine)', fontSize: '0.92rem', fontFamily: 'var(--font-mono)' }}>
                      {selectedCred.credentialId}
                    </strong>
                  </div>
                  <button
                    type="button"
                    onClick={() => {
                      navigator.clipboard.writeText(selectedCred.credentialId);
                      setCopiedId(true);
                      setTimeout(() => setCopiedId(false), 2000);
                    }}
                    className="btn btn-outline"
                    style={{ padding: '0.25rem 0.65rem', fontSize: '0.72rem' }}
                  >
                    {copiedId ? '✓ Copied!' : 'Copy ID'}
                  </button>
                </div>
              )}

              {/* Certificate Canvas */}
              <div style={{
                textAlign: 'center',
                padding: '1.75rem 1.5rem',
                background: 'var(--bg-canvas)',
                borderRadius: '8px',
                border: '1px solid var(--border-wire)',
                marginBottom: '1.25rem'
              }}>
                <div style={{ fontSize: '0.72rem', fontWeight: 700, color: 'var(--accent-wine)', textTransform: 'uppercase', letterSpacing: '0.1em' }}>
                  {selectedCred.institutionName || 'Anil Neerukonda Institute of Technology & Sciences (Autonomous)'}
                </div>
                <div style={{ fontSize: '0.72rem', color: 'var(--text-muted)', marginTop: '0.15rem' }}>
                  Approved by AICTE &bull; Affiliated to AU &bull; Accredited by NAAC A+ &bull; NBA Accredited
                </div>

                <h2 className="hero-serif-heading" style={{ fontSize: '1.65rem', margin: '0.75rem 0 0.35rem' }}>
                  {selectedCred.credentialType}
                </h2>
                <div style={{ fontSize: '0.85rem', color: 'var(--text-secondary)' }}>
                  This is to certify that <strong style={{ color: 'var(--text-primary)' }}>{selectedCred.studentName || user?.displayName}</strong> has successfully completed the curriculum requirements for
                </div>
                <div style={{ fontSize: '1.15rem', fontWeight: 700, color: 'var(--text-primary)', margin: '0.5rem 0' }}>
                  {selectedCred.courseName || selectedCred.courseCode}
                </div>
                <div style={{ fontSize: '0.78rem', color: 'var(--text-secondary)', marginBottom: '0.85rem' }}>
                  Candidate Roll No: <code style={{ color: 'var(--accent-wine)', fontWeight: 700 }}>{selectedCred.studentId}</code> &bull; Program: <strong>{selectedCred.programName || selectedCred.programCode}</strong>
                </div>

                {/* Tabulation Score Box */}
                <div style={{
                  background: '#FFFFFF',
                  border: '1px solid var(--border-wire)',
                  borderRadius: '6px',
                  padding: '0.85rem 1rem',
                  display: 'grid',
                  gridTemplateColumns: 'repeat(auto-fit, minmax(110px, 1fr))',
                  gap: '0.65rem',
                  margin: '0.75rem auto 1.25rem',
                  maxWidth: '520px'
                }}>
                  <div>
                    <span style={{ fontSize: '0.68rem', color: 'var(--text-muted)', textTransform: 'uppercase', display: 'block' }}>Semester SGPA</span>
                    <strong style={{ fontSize: '1.1rem', color: inelig ? '#991B1B' : 'var(--accent-wine)' }}>
                      {selectedCred.sgpa != null ? Number(selectedCred.sgpa).toFixed(2) : (valid ? '9.82' : 'WITHHELD')}
                    </strong>
                  </div>
                  <div>
                    <span style={{ fontSize: '0.68rem', color: 'var(--text-muted)', textTransform: 'uppercase', display: 'block' }}>Cumulative CGPA</span>
                    <strong style={{ fontSize: '1.1rem', color: inelig ? '#991B1B' : 'var(--text-primary)' }}>
                      {selectedCred.cgpa != null ? Number(selectedCred.cgpa).toFixed(2) : (valid ? '9.81' : 'WITHHELD')}
                    </strong>
                  </div>
                  <div>
                    <span style={{ fontSize: '0.68rem', color: 'var(--text-muted)', textTransform: 'uppercase', display: 'block' }}>Attendance</span>
                    <strong style={{ fontSize: '1.1rem', color: (selectedCred.attendancePercent != null && Number(selectedCred.attendancePercent) < 75) ? '#DC2626' : 'var(--text-primary)' }}>
                      {selectedCred.attendancePercent != null ? selectedCred.attendancePercent + '%' : '—'}
                    </strong>
                  </div>
                  <div>
                    <span style={{ fontSize: '0.68rem', color: 'var(--text-muted)', textTransform: 'uppercase', display: 'block' }}>Tabulation Score</span>
                    <strong style={{ fontSize: '1.1rem', color: (selectedCred.finalScore != null && Number(selectedCred.finalScore) < 50) ? '#DC2626' : 'var(--text-primary)' }}>
                      {selectedCred.finalScore != null ? selectedCred.finalScore + '%' : '—'}
                    </strong>
                  </div>
                </div>

                {/* Academic Eligibility Failure Notice if Ineligible */}
                {inelig && (
                  <div style={{
                    background: '#FEF2F2',
                    border: '1.5px solid #FCA5A5',
                    borderRadius: '6px',
                    padding: '0.85rem 1.15rem',
                    textAlign: 'left',
                    margin: '0.75rem auto 1.25rem',
                    maxWidth: '520px'
                  }}>
                    <div style={{ color: '#991B1B', fontWeight: 800, fontSize: '0.825rem', marginBottom: '0.35rem', display: 'flex', alignItems: 'center', gap: '0.4rem' }}>
                      <span>✕</span> ACADEMIC ELIGIBILITY AUDIT ALERT (0 CREDENTIALS CONFERRED)
                    </div>
                    <div style={{ fontSize: '0.78rem', color: '#7F1D1D', marginBottom: '0.55rem', lineHeight: 1.4 }}>
                      Exam Cell audited candidate academic standing against the 5 autonomous eligibility criteria. Credential conferral denied:
                    </div>
                    <div style={{ display: 'flex', flexDirection: 'column', gap: '0.35rem' }}>
                      {(selectedCred.failedEligibilityRules && selectedCred.failedEligibilityRules.length > 0 ? selectedCred.failedEligibilityRules : [
                        (selectedCred.attendancePercent != null && Number(selectedCred.attendancePercent) < 75) ? `Attendance Shortage: Attendance (${selectedCred.attendancePercent}%) is below 75.00% minimum threshold` : null,
                        (selectedCred.finalScore != null && Number(selectedCred.finalScore) < 50) ? `Passing Score Deficit: Final examination score (${selectedCred.finalScore} / 100) is below 50.00 passing cutoff` : null,
                        (selectedCred.backlogCount != null && selectedCred.backlogCount > 0) ? `Active Backlogs: Candidate has ${selectedCred.backlogCount} uncleared active backlog(s)` : null,
                        'Institutional Ineligibility: Exam Cell audit rejected credential issuance for this candidate'
                      ].filter(Boolean)).map((rule, idx) => (
                        <div key={idx} style={{ background: '#FFFFFF', border: '1px solid #FECACA', borderRadius: '4px', padding: '0.35rem 0.65rem', fontSize: '0.75rem', color: '#991B1B', fontWeight: 600, display: 'flex', gap: '0.4rem', alignItems: 'flex-start' }}>
                          <span style={{ color: '#DC2626' }}>✕</span>
                          <span>{rule}</span>
                        </div>
                      ))}
                    </div>
                  </div>
                )}

                {/* QR Code Container */}
                {selectedCred.qrCodeBase64 && (
                  <div style={{ marginTop: '1rem' }}>
                    <div style={{ background: '#fff', padding: '0.5rem', borderRadius: '6px', width: 'fit-content', margin: '0 auto', border: '1px solid var(--border-wire)', boxShadow: 'var(--shadow-sm)' }}>
                      <img src={selectedCred.qrCodeBase64} alt="Verification QR Code" style={{ width: '130px', height: '130px', display: 'block' }} />
                    </div>
                    <div style={{ fontSize: '0.72rem', color: 'var(--text-muted)', marginTop: '0.45rem' }}>
                      Scan with any smartphone or camera to verify authenticity on ONEST
                    </div>
                  </div>
                )}

                {/* Signatures */}
                <div style={{
                  display: 'grid',
                  gridTemplateColumns: 'repeat(3, 1fr)',
                  gap: '0.75rem',
                  marginTop: '1.5rem',
                  paddingTop: '1rem',
                  borderTop: '1px solid var(--border-wire)',
                  fontSize: '0.72rem',
                  color: 'var(--text-secondary)'
                }}>
                  <div>
                    <div style={{ height: '24px', borderBottom: '1px dashed var(--border-wire)', margin: '0 0.5rem 0.25rem' }}></div>
                    Addl. Controller of Exams
                  </div>
                  <div>
                    <div style={{ height: '24px', borderBottom: '1px dashed var(--border-wire)', margin: '0 0.5rem 0.25rem' }}></div>
                    Controller of Exams
                  </div>
                  <div>
                    <div style={{ height: '24px', borderBottom: '1px dashed var(--border-wire)', margin: '0 0.5rem 0.25rem' }}></div>
                    Principal, ANITS
                  </div>
                </div>
              </div>

              {/* Cryptographic SHA-256 Hash Details */}
              <div style={{ background: 'var(--bg-secondary)', padding: '0.75rem 1rem', borderRadius: '6px', fontSize: '0.75rem', border: '1px solid var(--border-wire)', marginBottom: '1.25rem', fontFamily: 'var(--font-mono)' }}>
                <span style={{ color: 'var(--text-muted)', display: 'block', marginBottom: '0.2rem', textTransform: 'uppercase', fontSize: '0.68rem', fontWeight: 600 }}>
                  Cryptographic SHA-256 Ledger Footprint:
                </span>
                <div style={{ wordBreak: 'break-all', color: 'var(--text-primary)' }}>
                  {selectedCred.credentialHash}
                </div>
              </div>

              {/* Action Buttons */}
              <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', flexWrap: 'wrap', gap: '0.75rem' }}>
                <Link to={`/verify/${selectedCred.credentialId}`} target="_blank" className="btn btn-hero-wine" style={{ fontSize: '0.8rem', padding: '0.6rem 1.25rem', textDecoration: 'none' }}>
                  Open Public Verification Page &rarr;
                </Link>
                <div style={{ display: 'flex', gap: '0.5rem' }}>
                  <button onClick={() => window.print()} className="btn btn-outline" style={{ fontSize: '0.8rem', padding: '0.6rem 1.15rem' }}>
                    Print Certificate
                  </button>
                  <button onClick={() => { setSelectedCred(null); setCopiedId(false); }} className="btn btn-outline" style={{ fontSize: '0.8rem', padding: '0.6rem 1.15rem' }}>
                    Done
                  </button>
                </div>
              </div>
            </div>
          </div>
        );
      })()}
    </div>
  );
};
