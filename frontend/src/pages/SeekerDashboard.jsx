import React, { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import { useAuth } from '../context/AuthContext';
import { credentialApi, requestApi } from '../services/api';

export const SeekerDashboard = () => {
  const { user } = useAuth();
  const [activeStudentId, setActiveStudentId] = useState(user?.studentId || 'A23126510162');
  const [credentials, setCredentials] = useState([]);
  const [requests, setRequests] = useState([]);
  const [loading, setLoading] = useState(true);

  const fetchData = async (studentIdToFetch) => {
    setLoading(true);
    try {
      const id = studentIdToFetch || activeStudentId;
      const [credsData, reqsData] = await Promise.allSettled([
        credentialApi.getCredentialsByStudent(id),
        requestApi.getRequestsForStudent(id),
      ]);

      if (credsData.status === 'fulfilled') setCredentials(credsData.value || []);
      if (reqsData.status === 'fulfilled') setRequests(reqsData.value || []);
    } catch (err) {
      console.error(err);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    const id = user?.studentId || 'A23126510162';
    setActiveStudentId(id);
    fetchData(id);
  }, [user]);

  const handleSwitchCandidate = (candId) => {
    setActiveStudentId(candId);
    fetchData(candId);
  };

  const validCount = credentials.filter(c => c.valid !== false && c.integrityStatus !== 'TAMPER_DETECTED' && c.integrityStatus !== 'REVOKED').length;
  const tamperedCount = credentials.filter(c => c.integrityStatus === 'TAMPER_DETECTED' || (c.valid === false && c.integrityStatus !== 'REVOKED')).length;
  const revokedCount = credentials.filter(c => c.integrityStatus === 'REVOKED').length;

  return (
    <div>
      {/* Top Banner */}
      <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginBottom: '2rem', flexWrap: 'wrap', gap: '1.25rem', borderBottom: '1px solid var(--border-wire)', paddingBottom: '1.25rem' }}>
        <div>
          <div className="hero-eyebrow" style={{ marginBottom: '0.4rem' }}>
            <span className="eyebrow-crimson-bar"></span>
            <span>STUDENT DIGITAL CREDENTIAL WALLET</span>
          </div>
          <h1 className="hero-serif-heading" style={{ fontSize: '2.15rem', marginBottom: '0.35rem' }}>
            Academic Credentials Console
          </h1>
          <p style={{ color: 'var(--text-secondary)', fontSize: '0.875rem' }}>
            Student Registry ID: <code style={{ fontFamily: 'var(--font-mono)', fontWeight: 600 }}>{activeStudentId}</code> &bull; Live Cryptographic Integrity Ledger
          </p>
        </div>
        <div style={{ display: 'flex', gap: '0.75rem' }}>
          <Link to="/seeker/credentials" className="btn btn-hero-wine" style={{ padding: '0.6rem 1.25rem', textDecoration: 'none' }}>
            Open Full Wallet &rarr;
          </Link>
          <Link to="/seeker/request" className="btn btn-card-dark" style={{ width: 'auto', padding: '0.6rem 1.25rem', textDecoration: 'none' }}>
            Request Credential &rarr;
          </Link>
        </div>
      </div>

      {/* Student Candidate Switcher Bar */}
      <div style={{ background: '#FFFFFF', border: '1px solid var(--border-wire)', borderRadius: '8px', padding: '0.85rem 1.25rem', marginBottom: '2rem', display: 'flex', alignItems: 'center', justifyContent: 'space-between', flexWrap: 'wrap', gap: '0.75rem' }}>
        <span style={{ fontSize: '0.75rem', fontWeight: 700, color: 'var(--accent-wine)', textTransform: 'uppercase', letterSpacing: '0.04em' }}>
          Switch Student Profile:
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
            onClick={() => handleSwitchCandidate('A23126510008')}
            className={`btn ${activeStudentId === 'A23126510008' ? 'btn-hero-wine' : 'btn-outline'}`}
            style={{ fontSize: '0.75rem', padding: '0.25rem 0.65rem', borderColor: '#DC2626', color: activeStudentId === 'A23126510008' ? '#fff' : '#991B1B', background: activeStudentId === 'A23126510008' ? '#DC2626' : undefined }}
          >
            A23126510008 (Arrear / Revoked Test)
          </button>
        </div>
      </div>

      {/* Metrics Row */}
      <div className="health-metrics-grid" style={{ marginBottom: '2.5rem' }}>
        <div className="metric-box" style={{ padding: '1.25rem' }}>
          <div className="metric-label">Total in Wallet</div>
          <div className="metric-value">{loading ? '...' : credentials.length}</div>
          <div style={{ fontSize: '0.75rem', color: 'var(--text-muted)', marginTop: '0.35rem' }}>Digital academic certificates</div>
        </div>

        <div className="metric-box" style={{ padding: '1.25rem' }}>
          <div className="metric-label">Valid &bull; Tamper-Free</div>
          <div className="metric-value" style={{ color: 'var(--status-success-fg)' }}>{loading ? '...' : validCount}</div>
          <div style={{ fontSize: '0.75rem', color: 'var(--status-success-fg)', marginTop: '0.35rem' }}>SHA-256 Hash Matched</div>
        </div>

        <div className="metric-box" style={{ padding: '1.25rem' }}>
          <div className="metric-label">Tamper Alerts</div>
          <div className="metric-value" style={{ color: tamperedCount > 0 ? 'var(--status-error-fg)' : 'var(--text-muted)' }}>
            {loading ? '...' : tamperedCount}
          </div>
          <div style={{ fontSize: '0.75rem', color: tamperedCount > 0 ? 'var(--status-error-fg)' : 'var(--text-muted)', marginTop: '0.35rem' }}>
            {tamperedCount > 0 ? 'Hash Mismatch Detected' : 'No integrity violations'}
          </div>
        </div>

        <div className="metric-box" style={{ padding: '1.25rem' }}>
          <div className="metric-label">Revoked / Ineligible</div>
          <div className="metric-value" style={{ color: revokedCount > 0 ? 'var(--status-warning-fg)' : 'var(--text-muted)' }}>
            {loading ? '...' : revokedCount}
          </div>
          <div style={{ fontSize: '0.75rem', color: 'var(--text-muted)', marginTop: '0.35rem' }}>
            {revokedCount > 0 ? 'Failed eligibility / arrear' : 'Clean active standing'}
          </div>
        </div>
      </div>

      {/* Recent Issued Credentials Table / Summary */}
      <div className="connectivity-card" style={{ marginBottom: '2.5rem' }}>
        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '1.25rem', borderBottom: '1px solid var(--border-wire)', paddingBottom: '0.85rem' }}>
          <div>
            <h2 className="connectivity-title" style={{ fontSize: '1.25rem', margin: 0 }}>
              Credentials in Digital Wallet ({credentials.length})
            </h2>
            <p style={{ color: 'var(--text-secondary)', fontSize: '0.8rem', margin: '0.2rem 0 0 0' }}>
              Authoritative credentials linked to Student ID {activeStudentId}
            </p>
          </div>
          <Link to="/seeker/credentials" style={{ fontSize: '0.8rem', color: 'var(--accent-wine)', fontWeight: 600, textDecoration: 'none' }}>
            View All in Wallet &rarr;
          </Link>
        </div>

        {loading ? (
          <div style={{ textAlign: 'center', padding: '2.5rem', color: 'var(--text-secondary)' }}>
            Auditing wallet records from registry...
          </div>
        ) : credentials.length === 0 ? (
          <div style={{ textAlign: 'center', padding: '2.5rem', color: 'var(--text-secondary)' }}>
            No credentials found for this student.
          </div>
        ) : (
          <div style={{ overflowX: 'auto' }}>
            <table style={{ width: '100%', borderCollapse: 'collapse', fontSize: '0.85rem' }}>
              <thead>
                <tr style={{ background: '#FAF7F2', borderBottom: '1px solid var(--border-wire)', textAlign: 'left', color: 'var(--text-secondary)', fontSize: '0.72rem', textTransform: 'uppercase', letterSpacing: '0.04em' }}>
                  <th style={{ padding: '0.75rem 1rem' }}>Credential ID</th>
                  <th style={{ padding: '0.75rem 1rem' }}>Type & Course</th>
                  <th style={{ padding: '0.75rem 1rem' }}>Performance</th>
                  <th style={{ padding: '0.75rem 1rem' }}>Issue Date</th>
                  <th style={{ padding: '0.75rem 1rem' }}>Integrity Status</th>
                  <th style={{ padding: '0.75rem 1rem', textAlign: 'right' }}>Actions</th>
                </tr>
              </thead>
              <tbody>
                {credentials.map((c) => {
                  const isValid = c.valid !== false && c.integrityStatus !== 'TAMPER_DETECTED' && c.integrityStatus !== 'REVOKED';
                  const isTampered = c.integrityStatus === 'TAMPER_DETECTED' || (c.valid === false && c.integrityStatus !== 'REVOKED');
                  const isRevoked = c.integrityStatus === 'REVOKED';

                  return (
                    <tr key={c.credentialId} style={{ borderBottom: '1px solid var(--border-wire)' }}>
                      <td style={{ padding: '0.85rem 1rem', fontFamily: 'var(--font-mono)', fontWeight: 600, fontSize: '0.8rem' }}>
                        {c.credentialId}
                      </td>
                      <td style={{ padding: '0.85rem 1rem' }}>
                        <div style={{ fontWeight: 600, color: 'var(--text-primary)' }}>{c.type}</div>
                        <div style={{ fontSize: '0.75rem', color: 'var(--text-secondary)' }}>{c.courseName || c.department || 'B.Tech Program'}</div>
                      </td>
                      <td style={{ padding: '0.85rem 1rem', fontFamily: 'var(--font-mono)', fontSize: '0.8rem' }}>
                        {c.sgpa ? `SGPA: ${c.sgpa}` : c.grade || 'Certified'}
                        {c.cgpa ? ` • CGPA: ${c.cgpa}` : ''}
                      </td>
                      <td style={{ padding: '0.85rem 1rem', color: 'var(--text-secondary)', fontSize: '0.8rem' }}>
                        {c.issueDate ? new Date(c.issueDate).toLocaleDateString('en-GB') : 'Authoritative'}
                      </td>
                      <td style={{ padding: '0.85rem 1rem' }}>
                        {isValid ? (
                          <span style={{ display: 'inline-flex', alignItems: 'center', gap: '0.35rem', padding: '0.2rem 0.55rem', borderRadius: '4px', fontSize: '0.7rem', fontWeight: 700, background: 'var(--status-success-bg)', color: 'var(--status-success-fg)', border: '1px solid var(--status-success-border)' }}>
                            <span style={{ width: '6px', height: '6px', borderRadius: '50%', background: 'var(--status-success-fg)' }}></span>
                            VALID &bull; TAMPER-FREE
                          </span>
                        ) : isRevoked ? (
                          <span style={{ display: 'inline-flex', alignItems: 'center', gap: '0.35rem', padding: '0.2rem 0.55rem', borderRadius: '4px', fontSize: '0.7rem', fontWeight: 700, background: 'var(--status-warning-bg)', color: 'var(--status-warning-fg)', border: '1px solid var(--status-warning-border)' }}>
                            <span style={{ width: '6px', height: '6px', borderRadius: '50%', background: 'var(--status-warning-fg)' }}></span>
                            REVOKED / INELIGIBLE
                          </span>
                        ) : (
                          <span style={{ display: 'inline-flex', alignItems: 'center', gap: '0.35rem', padding: '0.2rem 0.55rem', borderRadius: '4px', fontSize: '0.7rem', fontWeight: 700, background: 'var(--status-error-bg)', color: 'var(--status-error-fg)', border: '1px solid var(--status-error-border)' }}>
                            <span style={{ width: '6px', height: '6px', borderRadius: '50%', background: 'var(--status-error-fg)' }}></span>
                            TAMPER DETECTED
                          </span>
                        )}
                      </td>
                      <td style={{ padding: '0.85rem 1rem', textAlign: 'right' }}>
                        <Link
                          to={`/verify?id=${encodeURIComponent(c.credentialId)}`}
                          style={{ fontSize: '0.75rem', color: 'var(--accent-wine)', fontWeight: 600, textDecoration: 'none', marginRight: '0.75rem' }}
                        >
                          Verify &rarr;
                        </Link>
                        <Link
                          to="/seeker/credentials"
                          style={{ fontSize: '0.75rem', color: 'var(--text-primary)', fontWeight: 600, textDecoration: 'none' }}
                        >
                          View &rarr;
                        </Link>
                      </td>
                    </tr>
                  );
                })}
              </tbody>
            </table>
          </div>
        )}
      </div>

      {/* Quick Action Cards */}
      <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(320px, 1fr))', gap: '1.75rem', marginBottom: '2.5rem' }}>
        <div className="role-card role-card-seeker">
          <div className="role-card-content">
            <h3 className="role-title" style={{ fontSize: '1.25rem' }}>Digital Credential Wallet</h3>
            <p className="role-desc">
              Inspect your official ANITS autonomous degrees, semester grade cards, course certificates, and high-resolution verification QR codes.
            </p>
            <Link to="/seeker/credentials" className="btn btn-card-dark" style={{ display: 'inline-block', textAlign: 'center', width: '100%' }}>
              Open Credential Wallet &rarr;
            </Link>
          </div>
        </div>

        <div className="role-card">
          <div className="role-card-content">
            <h3 className="role-title" style={{ fontSize: '1.25rem' }}>Public Verifier Ledger</h3>
            <p className="role-desc">
              Check live cryptographic integrity, recomputed SHA-256 hash match, and official registrar signatories on the ONEST public ledger.
            </p>
            <Link to="/verify" className="btn btn-outline" style={{ display: 'inline-block', textAlign: 'center', width: '100%', borderRadius: '6px' }}>
              Open Verifier Portal &rarr;
            </Link>
          </div>
        </div>
      </div>
    </div>
  );
};
