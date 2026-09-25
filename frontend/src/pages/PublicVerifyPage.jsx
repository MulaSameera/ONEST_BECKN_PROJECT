import React, { useState, useEffect } from 'react';
import { useParams, Link } from 'react-router-dom';
import { verifyApi } from '../services/api';
import { QrCode, Search, CheckCircle2, XCircle, AlertTriangle, ArrowLeft, ShieldCheck, Hash, ShieldAlert } from 'lucide-react';

export const PublicVerifyPage = () => {
  const { credentialId: urlParamId } = useParams();
  const [inputVal, setInputVal] = useState(urlParamId || '');
  const [result, setResult] = useState(null);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState(null);

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
    if (urlParamId) {
      setInputVal(urlParamId);
      performVerification(urlParamId);
    }
  }, [urlParamId]);

  const handleSubmit = (e) => {
    e.preventDefault();
    performVerification(inputVal);
  };

  return (
    <div style={{ maxWidth: '780px', margin: '2rem auto 4rem' }}>
      <Link to="/" style={{ display: 'inline-flex', alignItems: 'center', gap: '0.5rem', fontSize: '0.85rem', color: 'var(--text-secondary)', marginBottom: '1.5rem', transition: 'color 150ms' }}>
        <ArrowLeft size={16} /> Back to ONEST Platform
      </Link>

      <div style={{ textAlign: 'center', marginBottom: '2.5rem' }}>
        <div className="hero-tag">
          <ShieldCheck size={16} /> Open Network Verification Node
        </div>
        <h1 style={{ fontSize: '2.25rem', fontWeight: 800, color: 'var(--text-primary)', marginBottom: '0.5rem', letterSpacing: '-0.025em' }}>
          Public Digital Credential Verification
        </h1>
        <p style={{ color: 'var(--text-secondary)', fontSize: '0.95rem' }}>
          Instant cryptographic SHA-256 integrity verification against the national ONEST registry.
        </p>
      </div>

      {/* Verification Input Box */}
      <div className="health-card" style={{ padding: '1.75rem', marginBottom: '2rem' }}>
        <form onSubmit={handleSubmit} style={{ display: 'flex', gap: '0.75rem', flexWrap: 'wrap' }}>
          <input
            type="text"
            required
            placeholder="Enter Credential ID (e.g. ONEST-CRED-00000001 or CRED-00001) or SHA-256 Hash..."
            value={inputVal}
            onChange={(e) => setInputVal(e.target.value)}
            style={{ flex: 1, minWidth: '260px', padding: '0.8rem 1.1rem', borderRadius: '0.5rem', fontSize: '0.95rem' }}
          />
          <button type="submit" disabled={loading} className="btn btn-primary" style={{ width: 'auto', padding: '0.8rem 1.5rem' }}>
            <Search size={18} /> {loading ? 'Verifying Integrity...' : 'Verify Credential'}
          </button>
        </form>

        <div style={{ marginTop: '0.85rem', display: 'flex', gap: '0.6rem', alignItems: 'center', fontSize: '0.75rem', color: 'var(--text-secondary)', flexWrap: 'wrap' }}>
          <span style={{ fontWeight: 600 }}>Sample Registry IDs:</span>
          <button type="button" onClick={() => { setInputVal('CRED-00001'); performVerification('CRED-00001'); }} style={{ color: 'var(--cyan)', textDecoration: 'underline' }}>CRED-00001</button>
          <button type="button" onClick={() => { setInputVal('CRED-00002'); performVerification('CRED-00002'); }} style={{ color: 'var(--cyan)', textDecoration: 'underline' }}>CRED-00002</button>
          <button type="button" onClick={() => { setInputVal('CRED-00003'); performVerification('CRED-00003'); }} style={{ color: 'var(--cyan)', textDecoration: 'underline' }}>CRED-00003</button>
        </div>
      </div>

      {error && (
        <div style={{ display: 'flex', alignItems: 'center', gap: '0.5rem', padding: '1rem', background: 'var(--danger-bg)', border: '1px solid var(--danger-border)', borderRadius: '0.5rem', color: '#f87171', marginBottom: '2rem' }}>
          <XCircle size={18} /> {error}
        </div>
      )}

      {/* Verification Result Card */}
      {result && (
        <div
          className={`health-card ${result.outcome === 'VERIFIED' ? 'pulse-verified' : ''}`}
          style={{
            padding: '2.25rem',
            border: '2px solid',
            borderColor:
              result.outcome === 'VERIFIED'
                ? 'var(--success-border)'
                : result.outcome === 'REVOKED'
                ? 'var(--warning-border)'
                : 'var(--danger-border)',
            background:
              result.outcome === 'VERIFIED'
                ? 'rgba(6, 78, 59, 0.25)'
                : result.outcome === 'REVOKED'
                ? 'rgba(120, 53, 15, 0.25)'
                : 'rgba(127, 29, 29, 0.25)',
          }}
        >
          {/* Status Header */}
          <div style={{ display: 'flex', alignItems: 'center', gap: '1rem', marginBottom: '1.5rem', borderBottom: '1px solid var(--border)', paddingBottom: '1.25rem' }}>
            <div style={{ padding: '0.5rem', borderRadius: '50%', background: result.outcome === 'VERIFIED' ? 'rgba(34, 197, 94, 0.2)' : 'rgba(239, 68, 68, 0.2)' }}>
              {result.outcome === 'VERIFIED' ? (
                <CheckCircle2 size={36} color="var(--success)" />
              ) : result.outcome === 'REVOKED' ? (
                <AlertTriangle size={36} color="var(--warning)" />
              ) : (
                <ShieldAlert size={36} color="var(--danger)" />
              )}
            </div>
            <div>
              <div style={{ display: 'flex', alignItems: 'center', gap: '0.6rem' }}>
                <span
                  className={`badge ${
                    result.outcome === 'VERIFIED'
                      ? 'badge-success'
                      : result.outcome === 'REVOKED'
                      ? 'badge-warning'
                      : 'badge-danger'
                  }`}
                  style={{ fontSize: '0.85rem', padding: '0.35rem 0.85rem' }}
                >
                  {result.outcome}
                </span>
                <span style={{ fontSize: '0.8rem', color: 'var(--text-secondary)' }}>
                  Verified at: {new Date(result.verifiedAt).toLocaleTimeString()}
                </span>
              </div>
              <p style={{ fontSize: '1rem', fontWeight: 600, color: 'var(--text-primary)', marginTop: '0.35rem' }}>
                {result.message}
              </p>
            </div>
          </div>

          {result.outcome !== 'NOT_FOUND' && (
            <div>
              {/* Sanitized Public Details */}
              <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(220px, 1fr))', gap: '1rem', marginBottom: '1.75rem' }}>
                <div className="metric-box">
                  <div className="metric-label">Credential ID</div>
                  <div className="metric-value" style={{ fontSize: '0.95rem', color: 'var(--cyan)' }}>{result.credentialId}</div>
                </div>

                <div className="metric-box">
                  <div className="metric-label">Candidate Name</div>
                  <div className="metric-value" style={{ fontSize: '0.95rem' }}>{result.studentName}</div>
                </div>

                <div className="metric-box">
                  <div className="metric-label">Issuing Institution</div>
                  <div className="metric-value" style={{ fontSize: '0.95rem' }}>{result.institutionName}</div>
                </div>

                <div className="metric-box">
                  <div className="metric-label">Course / Qualification</div>
                  <div className="metric-value" style={{ fontSize: '0.95rem' }}>{result.courseName}</div>
                </div>

                <div className="metric-box">
                  <div className="metric-label">Credential Type</div>
                  <div className="metric-value" style={{ fontSize: '0.95rem' }}>{result.credentialType}</div>
                </div>

                <div className="metric-box">
                  <div className="metric-label">Issue Date</div>
                  <div className="metric-value" style={{ fontSize: '0.95rem' }}>{result.issueDate}</div>
                </div>
              </div>

              {/* Cryptographic SHA-256 Integrity Verification Box */}
              <div style={{ background: 'rgba(8, 18, 32, 0.75)', border: '1px solid var(--border)', borderRadius: '0.65rem', padding: '1.35rem' }}>
                <div style={{ fontSize: '0.8125rem', fontWeight: 700, color: 'var(--cyan)', marginBottom: '0.85rem', display: 'flex', alignItems: 'center', gap: '0.4rem', textTransform: 'uppercase', letterSpacing: '0.05em' }}>
                  <Hash size={14} /> Server-Side SHA-256 Deterministic Recomputation Check
                </div>

                <div style={{ display: 'flex', flexDirection: 'column', gap: '0.65rem', fontSize: '0.78rem' }}>
                  <div>
                    <span style={{ color: 'var(--text-secondary)' }}>Stored Registry Hash:</span>
                    <div style={{ fontFamily: 'var(--font-mono)', color: 'var(--text-primary)', wordBreak: 'break-all', background: 'rgba(15, 23, 42, 0.9)', padding: '0.5rem 0.75rem', borderRadius: '0.35rem', border: '1px solid var(--border)', marginTop: '0.2rem' }}>
                      {result.storedHash}
                    </div>
                  </div>

                  <div>
                    <span style={{ color: 'var(--text-secondary)' }}>Recomputed Canonical Hash:</span>
                    <div style={{ fontFamily: 'var(--font-mono)', color: 'var(--text-primary)', wordBreak: 'break-all', background: 'rgba(15, 23, 42, 0.9)', padding: '0.5rem 0.75rem', borderRadius: '0.35rem', border: '1px solid var(--border)', marginTop: '0.2rem' }}>
                      {result.computedHash}
                    </div>
                  </div>

                  <div style={{ display: 'flex', alignItems: 'center', gap: '0.4rem', marginTop: '0.4rem', color: result.storedHash === result.computedHash ? '#4ade80' : '#f87171', fontWeight: 700 }}>
                    {result.storedHash === result.computedHash ? (
                      <>✓ Cryptographic Hashes Match (Data Integrity 100% Intact)</>
                    ) : (
                      <>✗ Cryptographic Hashes Mismatch (Tamper Detected)</>
                    )}
                  </div>
                </div>
              </div>
            </div>
          )}
        </div>
      )}
    </div>
  );
};
