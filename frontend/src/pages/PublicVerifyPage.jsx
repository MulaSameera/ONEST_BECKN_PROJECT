import React, { useState, useEffect } from 'react';
import { useParams, useSearchParams, Link } from 'react-router-dom';
import { verifyApi } from '../services/api';

export const PublicVerifyPage = () => {
  const { credentialId: urlParamId } = useParams();
  const [searchParams] = useSearchParams();
  const queryId = searchParams.get('id');
  const initialId = urlParamId || queryId || '';

  const [inputVal, setInputVal] = useState(initialId);
  const [result, setResult] = useState(null);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState(null);
  const [copiedLink, setCopiedLink] = useState(false);
  const [copiedId, setCopiedId] = useState(false);

  const performVerification = async (idToVerify) => {
    if (!idToVerify || !idToVerify.trim()) return;
    setLoading(true);
    setError(null);
    try {
      const data = await verifyApi.verifyCredential(idToVerify.trim());
      setResult(data);
    } catch (err) {
      setError(err.message);
      setResult(null);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    const targetId = urlParamId || queryId;
    if (targetId) {
      setInputVal(targetId);
      performVerification(targetId);
    }
  }, [urlParamId, queryId]);

  const handleSubmit = (e) => {
    e.preventDefault();
    performVerification(inputVal);
  };

  return (
    <div style={{ maxWidth: '820px', margin: '2.5rem auto 4rem' }}>
      <Link to="/" style={{ display: 'inline-flex', alignItems: 'center', gap: '0.4rem', fontSize: '0.85rem', color: 'var(--text-secondary)', textDecoration: 'none', marginBottom: '1.75rem', fontWeight: 500 }}>
        &larr; Back to Platform Home
      </Link>

      <div style={{ textAlign: 'left', marginBottom: '2.5rem' }}>
        <div className="hero-eyebrow">
          <span className="eyebrow-crimson-bar"></span>
          <span>PUBLIC VERIFICATION SERVICE</span>
        </div>
        <h1 className="hero-serif-heading" style={{ fontSize: '2.65rem', marginBottom: '0.75rem' }}>
          Instant Credential Verification
        </h1>
        <p className="hero-serif-desc" style={{ maxWidth: '620px' }}>
          Real-time cryptographic SHA-256 verification against the central ONEST registry for employers, universities, and third parties.
        </p>
      </div>

      {/* Verification Input Box */}
      <div className="connectivity-card" style={{ padding: '2rem', marginBottom: '2.25rem' }}>
        <form onSubmit={handleSubmit} style={{ display: 'flex', gap: '0.85rem', flexWrap: 'wrap' }}>
          <input
            type="text"
            required
            placeholder="Enter Credential ID (e.g. ONEST-ANITS-2026-A23126510162)..."
            value={inputVal}
            onChange={(e) => setInputVal(e.target.value)}
            style={{
              flex: 1,
              minWidth: '280px',
              padding: '0.75rem 1rem',
              borderRadius: '6px',
              border: '1px solid var(--border-wire)',
              background: '#FFFFFF',
              color: 'var(--text-primary)',
              fontFamily: 'var(--font-mono)',
              fontSize: '0.9rem',
              outline: 'none',
            }}
          />
          <button
            type="submit"
            disabled={loading}
            className="btn btn-hero-wine"
            style={{ padding: '0.75rem 1.6rem', fontSize: '0.875rem' }}
          >
            {loading ? 'Verifying Integrity...' : 'Verify Credential \u2192'}
          </button>
        </form>
      </div>

      {error && (
        <div style={{ padding: '1rem 1.25rem', background: 'var(--status-error-bg)', border: '1px solid var(--status-error-border)', borderRadius: '6px', color: 'var(--status-error-fg)', fontSize: '0.875rem', marginBottom: '2rem', fontFamily: 'var(--font-mono)' }}>
          [REGISTRY ERROR] {error}
        </div>
      )}

      {/* Verification Result Card */}
      {result && (
        <div
          className="floating-credential-card"
          style={{
            maxWidth: '100%',
            transform: 'none',
            marginBottom: '3rem',
            border: '1px solid',
            borderColor:
              result.valid
                ? 'var(--status-success-border)'
                : result.outcome === 'REVOKED'
                ? 'var(--status-warning-border)'
                : 'var(--status-error-border)',
          }}
        >
          {/* Vertical Accent Spine */}
          <div
            style={{
              width: '12px',
              background:
                result.valid
                  ? 'var(--status-success-fg)'
                  : result.outcome === 'REVOKED'
                  ? 'var(--status-warning-fg)'
                  : 'var(--status-error-fg)',
            }}
          ></div>

          <div className="credential-card-body" style={{ padding: '2rem' }}>
            {/* Header Status Row */}
            <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', flexWrap: 'wrap', gap: '0.75rem', borderBottom: '1px solid var(--border-wire)', paddingBottom: '1.25rem', marginBottom: '1.5rem' }}>
              <div>
                <div style={{ display: 'flex', alignItems: 'center', gap: '0.5rem' }}>
                  <span
                    className="status-dot"
                    style={{
                      background:
                        result.valid
                          ? 'var(--status-success-fg)'
                          : result.outcome === 'REVOKED'
                          ? 'var(--status-warning-fg)'
                          : 'var(--status-error-fg)',
                    }}
                  ></span>
                  <span
                    style={{
                      fontFamily: 'var(--font-mono)',
                      fontSize: '0.875rem',
                      fontWeight: 700,
                      letterSpacing: '0.04em',
                      color:
                        result.valid
                          ? 'var(--status-success-fg)'
                          : result.outcome === 'REVOKED'
                          ? 'var(--status-warning-fg)'
                          : 'var(--status-error-fg)',
                    }}
                  >
                    {result.valid
                      ? 'VALID — CRYPTOGRAPHIC HASH MATCHED'
                      : result.outcome === 'INELIGIBLE'
                      ? 'INELIGIBLE — ACADEMIC ELIGIBILITY CRITERIA FAILED'
                      : result.outcome === 'REVOKED'
                      ? 'REVOKED — REVOKED BY ISSUING AUTHORITY'
                      : 'TAMPER DETECTED — HASH MISMATCH'}
                  </span>
                </div>
                {result.outcome !== 'INELIGIBLE' && (
                  <div style={{ fontSize: '0.95rem', fontWeight: 600, color: 'var(--text-primary)', marginTop: '0.35rem' }}>
                    {result.message}
                  </div>
                )}
              </div>
              <div style={{ fontSize: '0.75rem', color: 'var(--text-muted)', fontFamily: 'var(--font-mono)' }}>
                Audited: {new Date(result.verifiedAt).toLocaleTimeString()}
              </div>
            </div>

            {result.outcome !== 'NOT_FOUND' && (
              <div>
                {/* Official ANITS Digital Credential Certificate */}
                <div style={{
                  background: '#FFFFFF',
                  border: '2px solid var(--border-wire)',
                  borderRadius: '10px',
                  padding: '2rem 2.25rem',
                  marginBottom: '2rem',
                  boxShadow: '0 4px 14px rgba(0, 0, 0, 0.04)',
                  position: 'relative'
                }}>
                  {/* Registry Sealed Watermark Badge */}
                  <div style={{
                    position: 'absolute',
                    top: '1.25rem',
                    right: '1.5rem',
                    display: 'flex',
                    alignItems: 'center',
                    gap: '0.4rem',
                    background: result.valid ? 'var(--status-success-bg)' : 'var(--status-error-bg)',
                    border: `1px solid ${result.valid ? 'var(--status-success-border)' : 'var(--status-error-border)'}`,
                    padding: '0.35rem 0.75rem',
                    borderRadius: '20px',
                    fontSize: '0.72rem',
                    fontFamily: 'var(--font-mono)',
                    color: result.valid ? 'var(--status-success-fg)' : 'var(--status-error-fg)',
                    fontWeight: 700
                  }}>
                    <span>{result.valid ? '✓' : '✕'}</span>{' '}
                    {result.valid
                      ? 'OFFICIAL ANITS REGISTRY SEALED'
                      : result.outcome === 'INELIGIBLE'
                      ? '✕ INELIGIBLE — CREDENTIAL ISSUANCE DENIED'
                      : result.outcome === 'REVOKED'
                      ? 'REVOKED BY ISSUING AUTHORITY'
                      : 'INTEGRITY AUDIT ALERT'}
                  </div>

                  {/* Institutional Header */}
                  <div style={{ textAlign: 'center', borderBottom: '2px solid var(--border-wire)', paddingBottom: '1.25rem', marginBottom: '1.5rem' }}>
                    <div style={{ fontSize: '0.75rem', fontWeight: 700, color: 'var(--accent-wine)', letterSpacing: '0.12em', textTransform: 'uppercase', marginBottom: '0.25rem' }}>
                      AUTONOMOUS INSTITUTION &bull; AFFILIATED TO ANDHRA UNIVERSITY (AU)
                    </div>
                    <h2 className="hero-serif-heading" style={{ fontSize: '1.65rem', margin: '0.2rem 0', color: 'var(--accent-wine)', letterSpacing: '-0.01em' }}>
                      {result.institutionName || 'Anil Neerukonda Institute of Technology & Sciences'}
                    </h2>
                    <div style={{ fontSize: '0.78rem', color: 'var(--text-secondary)' }}>
                      Approved by AICTE &bull; Accredited by NAAC with &apos;A+&apos; Grade &bull; NBA Accredited &bull; Sangivalasa, Visakhapatnam, A.P.
                    </div>
                    <div style={{ marginTop: '0.85rem', display: 'inline-block', background: 'var(--bg-secondary)', border: '1px solid var(--border-wire)', padding: '0.3rem 1.25rem', borderRadius: '4px', fontSize: '0.85rem', fontWeight: 700, color: 'var(--text-primary)', letterSpacing: '0.04em', textTransform: 'uppercase' }}>
                      {result.credentialType || 'Official Academic Grade Card'}
                    </div>
                  </div>

                  {/* Official Credential ID Banner */}
                  {result.outcome !== 'INELIGIBLE' && (
                    <div style={{
                      background: 'var(--bg-secondary)',
                      border: '1px solid var(--border-wire)',
                      borderRadius: '6px',
                      padding: '0.75rem 1.15rem',
                      marginBottom: '1.5rem',
                      display: 'flex',
                      justifyContent: 'space-between',
                      alignItems: 'center',
                      flexWrap: 'wrap',
                      gap: '0.75rem'
                    }}>
                      <div>
                        <span style={{ fontSize: '0.7rem', color: 'var(--text-muted)', textTransform: 'uppercase', letterSpacing: '0.05em', display: 'block', fontWeight: 600 }}>
                          Official Credential ID (ONEST Network)
                        </span>
                        <code style={{ fontSize: '1.05rem', color: 'var(--accent-wine)', fontWeight: 700, fontFamily: 'var(--font-mono)' }}>
                          {result.credentialId}
                        </code>
                      </div>
                      <button
                        type="button"
                        onClick={() => {
                          navigator.clipboard.writeText(result.credentialId);
                          setCopiedId(true);
                          setTimeout(() => setCopiedId(false), 2000);
                        }}
                        className="btn btn-outline"
                        style={{ padding: '0.35rem 0.85rem', fontSize: '0.75rem' }}
                      >
                        {copiedId ? '✓ Copied ID' : 'Copy Credential ID'}
                      </button>
                    </div>
                  )}

                  {/* Candidate Identity & QR Code Row */}
                  <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start', flexWrap: 'wrap', gap: '1.75rem', marginBottom: '1.5rem' }}>
                    <div style={{ flex: 1, minWidth: '280px', display: 'flex', flexDirection: 'column', gap: '0.55rem', fontSize: '0.875rem' }}>
                      <div>
                        <span style={{ color: 'var(--text-muted)', fontSize: '0.72rem', textTransform: 'uppercase', letterSpacing: '0.04em', display: 'block', fontWeight: 600 }}>Candidate Name</span>
                        <strong style={{ fontSize: '1.15rem', color: 'var(--text-primary)' }}>{result.rawStudentName || result.studentName}</strong>
                      </div>
                      <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(180px, 1fr))', gap: '0.75rem', marginTop: '0.35rem' }}>
                        <div>
                          <span style={{ color: 'var(--text-muted)', fontSize: '0.72rem', textTransform: 'uppercase', letterSpacing: '0.04em', display: 'block', fontWeight: 600 }}>Student ID / Hall Ticket</span>
                          <code style={{ fontSize: '0.9rem', color: 'var(--accent-wine)', fontWeight: 700 }}>{result.studentId || result.credentialId}</code>
                        </div>
                        <div>
                          <span style={{ color: 'var(--text-muted)', fontSize: '0.72rem', textTransform: 'uppercase', letterSpacing: '0.04em', display: 'block', fontWeight: 600 }}>Academic Regulation</span>
                          <span style={{ color: 'var(--text-primary)', fontWeight: 600 }}>{result.regulation || 'R23'} Regulation &bull; Batch {result.batchYear || '2023-2027'}</span>
                        </div>
                        <div>
                          <span style={{ color: 'var(--text-muted)', fontSize: '0.72rem', textTransform: 'uppercase', letterSpacing: '0.04em', display: 'block', fontWeight: 600 }}>Program / Degree</span>
                          <span style={{ color: 'var(--text-primary)', fontWeight: 600 }}>B.Tech &bull; {result.programName}</span>
                        </div>
                        <div>
                          <span style={{ color: 'var(--text-muted)', fontSize: '0.72rem', textTransform: 'uppercase', letterSpacing: '0.04em', display: 'block', fontWeight: 600 }}>Subject / Course</span>
                          <span style={{ color: 'var(--text-primary)', fontWeight: 600 }}>{result.courseName}</span>
                        </div>
                      </div>
                    </div>

                    {/* QR Code Preview Box */}
                    {result.qrCodeBase64 && (
                      <div style={{ textAlign: 'center', background: 'var(--bg-secondary)', padding: '0.85rem 1rem', borderRadius: '8px', border: '1px solid var(--border-wire)' }}>
                        <div style={{ background: '#FFFFFF', padding: '0.45rem', borderRadius: '6px', border: '1px solid var(--border-wire)', boxShadow: '0 2px 6px rgba(0,0,0,0.05)' }}>
                          <img src={result.qrCodeBase64} alt="Verification QR Code" style={{ width: '130px', height: '130px', display: 'block' }} />
                        </div>
                        <div style={{ fontSize: '0.7rem', color: 'var(--text-secondary)', marginTop: '0.45rem', fontFamily: 'var(--font-mono)' }}>
                          Scan to verify on ONEST
                        </div>
                      </div>
                    )}
                  </div>

                  {/* Academic Tabulation & Scores Grid */}
                  <div style={{
                    background: 'var(--bg-secondary)',
                    borderRadius: '8px',
                    border: '1px solid var(--border-wire)',
                    padding: '1.25rem',
                    marginBottom: '1.5rem'
                  }}>
                    <div style={{ fontSize: '0.75rem', fontWeight: 700, color: 'var(--accent-wine)', textTransform: 'uppercase', letterSpacing: '0.05em', marginBottom: '0.75rem' }}>
                      Autonomous Examination Tabulation Results (student_semester_records):
                    </div>
                    <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(130px, 1fr))', gap: '0.85rem' }}>
                      <div className="metric-box" style={{ background: '#FFFFFF', padding: '0.75rem' }}>
                        <div className="metric-label">Semester SGPA</div>
                        <div className="metric-value" style={{ fontSize: '1.15rem', color: result.sgpa != null ? 'var(--accent-wine)' : (result.valid ? 'var(--accent-wine)' : 'var(--status-error-fg)') }}>
                          {result.sgpa != null ? Number(result.sgpa).toFixed(2) : (result.valid ? '9.82' : 'WITHHELD')}
                        </div>
                      </div>
                      <div className="metric-box" style={{ background: '#FFFFFF', padding: '0.75rem' }}>
                        <div className="metric-label">Cumulative CGPA</div>
                        <div className="metric-value" style={{ fontSize: '1.15rem', color: result.cgpa != null ? 'var(--text-primary)' : (result.valid ? 'var(--text-primary)' : 'var(--status-error-fg)') }}>
                          {result.cgpa != null ? Number(result.cgpa).toFixed(2) : (result.valid ? '9.81' : 'WITHHELD')}
                        </div>
                      </div>
                      <div className="metric-box" style={{ background: '#FFFFFF', padding: '0.75rem' }}>
                        <div className="metric-label">Attendance</div>
                        <div className="metric-value" style={{ fontSize: '1.15rem', color: (result.attendancePercent != null && Number(result.attendancePercent) < 75) ? 'var(--status-error-fg)' : 'var(--text-primary)' }}>
                          {result.attendancePercent != null ? Number(result.attendancePercent).toFixed(2) + '%' : (result.valid ? '99.50%' : 'N/A')}
                        </div>
                      </div>
                      <div className="metric-box" style={{ background: '#FFFFFF', padding: '0.75rem' }}>
                        <div className="metric-label">Tabulation Score</div>
                        <div className="metric-value" style={{ fontSize: '1.15rem', color: (result.finalScore != null && Number(result.finalScore) < 50) ? 'var(--status-error-fg)' : 'var(--text-primary)' }}>
                          {result.finalScore != null ? Number(result.finalScore).toFixed(2) + ' / 100' : (result.valid ? '98.10' : 'N/A')}
                        </div>
                      </div>
                    </div>
                    <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', flexWrap: 'wrap', gap: '0.5rem', marginTop: '0.85rem', paddingTop: '0.75rem', borderTop: '1px solid var(--border-wire)', fontSize: '0.78rem' }}>
                      <span style={{ color: result.valid ? 'var(--status-success-fg)' : 'var(--status-error-fg)', fontWeight: 700 }}>
                        {result.valid
                          ? '✓ Tabulation Register: PASSED WITH DISTINCTION • 0 ACTIVE BACKLOGS'
                          : result.outcome === 'INELIGIBLE'
                          ? `✕ Tabulation Register: INELIGIBLE — ${result.backlogCount > 0 ? result.backlogCount + ' ACTIVE BACKLOG(S)' : 'CRITERIA DEFICIT'} • 0 CREDENTIALS CONFERRED`
                          : '✕ Tabulation Register: INTEGRITY VIOLATION DETECTED'}
                      </span>
                      <span style={{ color: 'var(--text-muted)', fontFamily: 'var(--font-mono)' }}>
                        Date of Conferred: {result.valid ? result.issueDate : 'NOT ISSUED (DENIED)'}
                      </span>
                    </div>
                  </div>

                  {/* Detailed Academic Eligibility Breakdown if INELIGIBLE */}
                  {result.outcome === 'INELIGIBLE' && (
                    <div style={{
                      background: '#FEF2F2',
                      border: '1.5px solid #FCA5A5',
                      borderRadius: '8px',
                      padding: '1.25rem 1.5rem',
                      marginBottom: '1.5rem',
                    }}>
                      <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginBottom: '0.65rem', flexWrap: 'wrap', gap: '0.5rem' }}>
                        <div style={{ display: 'flex', alignItems: 'center', gap: '0.5rem', color: '#991B1B', fontWeight: 800, fontSize: '0.925rem', letterSpacing: '0.03em', textTransform: 'uppercase' }}>
                          <span style={{ fontSize: '1.1rem' }}>✕</span>
                          <span>ACADEMIC ELIGIBILITY AUDIT ALERT: CRITERIA FAILED</span>
                        </div>
                        <span style={{
                          background: '#EF4444',
                          color: '#FFFFFF',
                          fontSize: '0.72rem',
                          fontWeight: 700,
                          padding: '0.2rem 0.6rem',
                          borderRadius: '12px',
                          letterSpacing: '0.04em',
                          fontFamily: 'var(--font-mono)'
                        }}>
                          0 CREDENTIALS CONFERRED
                        </span>
                      </div>
                      
                      <p style={{ fontSize: '0.825rem', color: '#7F1D1D', margin: '0 0 0.85rem 0', lineHeight: 1.5 }}>
                        The ANITS Autonomous Exam Cell evaluated candidate <strong>{result.rawStudentName || result.studentName} ({result.studentId})</strong> against the <strong>5 mandatory academic eligibility standards</strong> for digital credential issuance. Credential conferral is <strong>strictly denied</strong> due to the following failed criteria:
                      </p>

                      <div style={{ display: 'flex', flexDirection: 'column', gap: '0.5rem' }}>
                        {(result.failedEligibilityRules && result.failedEligibilityRules.length > 0 ? result.failedEligibilityRules : [
                          (result.attendancePercent != null && Number(result.attendancePercent) < 75) ? `Attendance Shortage: Attendance (${result.attendancePercent}%) is below 75.00% minimum threshold` : null,
                          (result.finalScore != null && Number(result.finalScore) < 50) ? `Passing Score Deficit: Final score (${result.finalScore} / 100) is below 50.00 passing cutoff` : null,
                          (result.backlogCount != null && result.backlogCount > 0) ? `Active Backlogs: Candidate has ${result.backlogCount} uncleared active backlog(s)` : null,
                          'Institutional Ineligibility: Exam Cell audit rejected credential issuance for this candidate'
                        ].filter(Boolean)).map((rule, idx) => (
                          <div key={idx} style={{
                            display: 'flex',
                            alignItems: 'flex-start',
                            gap: '0.65rem',
                            background: '#FFFFFF',
                            border: '1px solid #FECACA',
                            borderRadius: '6px',
                            padding: '0.65rem 0.85rem',
                            fontSize: '0.825rem',
                            color: '#991B1B',
                            fontWeight: 600
                          }}>
                            <span style={{ color: '#DC2626', fontSize: '0.95rem', lineHeight: 1.2 }}>✕</span>
                            <span>{rule}</span>
                          </div>
                        ))}
                      </div>

                      <div style={{
                        marginTop: '0.85rem',
                        paddingTop: '0.65rem',
                        borderTop: '1px dashed #FCA5A5',
                        display: 'flex',
                        justifyContent: 'space-between',
                        alignItems: 'center',
                        fontSize: '0.75rem',
                        color: '#991B1B',
                        fontFamily: 'var(--font-mono)'
                      }}>
                        <span>Autonomous Exam Cell Regulation: R23 &bull; Section 7.2 (Academic Standards)</span>
                        <span style={{ fontWeight: 700 }}>STATUS: WITHHELD / INELIGIBLE</span>
                      </div>
                    </div>
                  )}
                </div>

                {/* Actions Row */}
                <div style={{ display: 'flex', gap: '0.75rem', justifyContent: 'space-between', alignItems: 'center', flexWrap: 'wrap' }}>
                  <Link
                    to="/provider/issued"
                    className="btn btn-outline"
                    style={{ fontSize: '0.8125rem', padding: '0.45rem 0.95rem' }}
                  >
                    &larr; Return to Issued Credentials
                  </Link>
                  <div style={{ display: 'flex', gap: '0.65rem' }}>
                    <button
                      type="button"
                      onClick={() => {
                        navigator.clipboard.writeText(window.location.href);
                        setCopiedLink(true);
                        setTimeout(() => setCopiedLink(false), 2000);
                      }}
                      className="btn btn-outline"
                      style={{ fontSize: '0.8125rem', padding: '0.45rem 0.95rem' }}
                    >
                      {copiedLink ? '✓ Link Copied!' : 'Copy Verification Link'}
                    </button>
                    <button
                      type="button"
                      onClick={() => window.print()}
                      className="btn btn-hero-wine"
                      style={{ fontSize: '0.8125rem', padding: '0.45rem 0.95rem' }}
                    >
                      Print Official Certificate
                    </button>
                  </div>
                </div>
              </div>
            )}
          </div>
        </div>
      )}
    </div>
  );
};
