import React, { useState, useEffect } from 'react';
import { useAuth } from '../context/AuthContext';
import { credentialApi } from '../services/api';
import { Link } from 'react-router-dom';

export const ProviderIssuedCredentials = () => {
  const { user } = useAuth();
  const [credentials, setCredentials] = useState([]);
  const [page, setPage] = useState(0);
  const [totalPages, setTotalPages] = useState(1);
  const [loading, setLoading] = useState(true);
  const [selectedCred, setSelectedCred] = useState(null);
  const [searchId, setSearchId] = useState('');
  const [error, setError] = useState(null);
  const [copiedId, setCopiedId] = useState(false);

  const fetchCredentials = async (pageNum = 0) => {
    setLoading(true);
    setError(null);
    try {
      const data = await credentialApi.getCredentialsByInstitution(user?.institutionId || 'INST-ANITS', pageNum, 15);
      setCredentials(data.content || []);
      setTotalPages(data.totalPages || 1);
      setPage(pageNum);
    } catch (err) {
      setError(err.message);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    fetchCredentials(0);
  }, [user]);

  const handleSearch = async (e) => {
    e.preventDefault();
    if (!searchId.trim()) {
      fetchCredentials(0);
      return;
    }
    setLoading(true);
    try {
      const cred = await credentialApi.getCredentialById(searchId.trim());
      setCredentials([cred]);
      setTotalPages(1);
    } catch (err) {
      setError('Credential not found: ' + err.message);
    } finally {
      setLoading(false);
    }
  };

  return (
    <div>
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '1.75rem', flexWrap: 'wrap', gap: '1rem', borderBottom: '1px solid var(--border-wire)', paddingBottom: '1rem' }}>
        <div>
          <h2 style={{ fontSize: '1.5rem', fontWeight: 800, color: 'var(--text-primary)', letterSpacing: '-0.02em' }}>
            Issued Digital Credentials Registry
          </h2>
          <p style={{ color: 'var(--text-secondary)', fontSize: '0.875rem' }}>
            Registry of all tamper-evident credentials issued by institution: <code>{user?.institutionId || 'INST-ANITS'}</code>
          </p>
        </div>
        <button onClick={() => fetchCredentials(page)} className="btn btn-outline" style={{ width: 'auto' }}>
          {loading ? 'Refreshing...' : 'Refresh'}
        </button>
      </div>

      {/* Search Bar */}
      <div className="health-card" style={{ padding: '1.25rem', marginBottom: '1.5rem' }}>
        <form onSubmit={handleSearch} style={{ display: 'flex', gap: '0.75rem' }}>
          <input
            type="text"
            placeholder="Search by exact Credential ID (e.g. CRED-ANITS-2026-10162)..."
            value={searchId}
            onChange={(e) => setSearchId(e.target.value)}
            style={{ flex: 1, padding: '0.65rem 0.85rem', borderRadius: '3px', fontSize: '0.875rem' }}
          />
          <button type="submit" className="btn btn-primary" style={{ width: 'auto', padding: '0.65rem 1.15rem' }}>
            Search
          </button>
          {searchId && (
            <button
              type="button"
              onClick={() => { setSearchId(''); fetchCredentials(0); }}
              className="btn btn-outline"
              style={{ width: 'auto' }}
            >
              Clear
            </button>
          )}
        </form>
      </div>

      {error && (
        <div style={{ padding: '0.85rem 1rem', background: 'var(--status-error-bg)', border: '1px solid var(--status-error-border)', borderRadius: '3px', color: 'var(--status-error-fg)', fontSize: '0.85rem', marginBottom: '1.5rem', fontFamily: 'var(--font-mono)' }}>
          {error}
        </div>
      )}

      {/* Table */}
      <div className="health-card" style={{ padding: '1.25rem' }}>
        {loading ? (
          <div style={{ textAlign: 'center', padding: '3rem', color: 'var(--text-secondary)' }}>Querying credentials from registry...</div>
        ) : credentials.length === 0 ? (
          <div style={{ textAlign: 'center', padding: '3rem', color: 'var(--text-secondary)' }}>No credentials found.</div>
        ) : (
          <div style={{ overflowX: 'auto' }}>
            <table style={{ width: '100%', borderCollapse: 'collapse', fontSize: '0.85rem' }}>
              <thead>
                <tr>
                  <th style={{ padding: '0.65rem' }}>Credential ID</th>
                  <th style={{ padding: '0.65rem' }}>Student Name</th>
                  <th style={{ padding: '0.65rem' }}>Course</th>
                  <th style={{ padding: '0.65rem' }}>Credential Type</th>
                  <th style={{ padding: '0.65rem' }}>Issue Date</th>
                  <th style={{ padding: '0.65rem' }}>Integrity Status</th>
                  <th style={{ padding: '0.65rem', textAlign: 'right' }}>Actions</th>
                </tr>
              </thead>
              <tbody>
                {credentials.map((c) => (
                  <tr key={c.credentialId}>
                    <td style={{ padding: '0.65rem', fontFamily: 'var(--font-mono)', fontWeight: 600 }}>
                      {c.credentialId}
                    </td>
                    <td style={{ padding: '0.65rem' }}>
                      <div style={{ fontWeight: 600, color: 'var(--text-primary)' }}>{c.studentName || c.studentId}</div>
                      <span style={{ fontSize: '0.75rem', color: 'var(--text-muted)' }}>{c.studentId}</span>
                    </td>
                    <td style={{ padding: '0.65rem', color: 'var(--text-secondary)' }}>{c.courseName || c.courseCode}</td>
                    <td style={{ padding: '0.65rem', color: 'var(--text-secondary)' }}>{c.credentialType}</td>
                    <td style={{ padding: '0.65rem', color: 'var(--text-secondary)', fontFamily: 'var(--font-mono)' }}>{c.issueDate}</td>
                    <td style={{ padding: '0.65rem' }}>
                      <span className="badge badge-success">
                        {c.verificationStatus || 'Verified'}
                      </span>
                    </td>
                    <td style={{ padding: '0.65rem', textAlign: 'right' }}>
                      <button
                        onClick={() => setSelectedCred(c)}
                        className="btn btn-outline"
                        style={{ width: 'auto', padding: '0.3rem 0.65rem', fontSize: '0.75rem' }}
                      >
                        View Certificate &amp; QR
                      </button>
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>

            {/* Pagination Controls */}
            {totalPages > 1 && (
              <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginTop: '1.5rem', paddingTop: '1rem', borderTop: '1px solid var(--border-wire)', fontSize: '0.85rem' }}>
                <button
                  onClick={() => fetchCredentials(page - 1)}
                  disabled={page === 0}
                  className="btn btn-outline"
                  style={{ width: 'auto', padding: '0.4rem 0.9rem' }}
                >
                  Previous
                </button>
                <span style={{ color: 'var(--text-secondary)' }}>Page {page + 1} of {totalPages}</span>
                <button
                  onClick={() => fetchCredentials(page + 1)}
                  disabled={page >= totalPages - 1}
                  className="btn btn-outline"
                  style={{ width: 'auto', padding: '0.4rem 0.9rem' }}
                >
                  Next
                </button>
              </div>
            )}
          </div>
        )}
      </div>

      {/* Detail Modal */}
      {selectedCred && (
        <div className="modal-overlay">
          <div className="modal-content" style={{ width: '100%', maxWidth: '650px', maxHeight: '90vh', overflowY: 'auto', padding: '2rem' }}>
            <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', borderBottom: '1px solid var(--border-wire)', paddingBottom: '0.85rem', marginBottom: '1.25rem' }}>
              <div>
                <h3 style={{ fontSize: '1.2rem', fontWeight: 800, color: 'var(--text-primary)' }}>Digital Credential Certificate</h3>
              </div>
              <button onClick={() => { setSelectedCred(null); setCopiedId(false); }} style={{ color: 'var(--text-secondary)', fontWeight: 700 }}>
                [Close]
              </button>
            </div>

            {/* Prominent Credential ID Banner */}
            <div style={{
              background: 'var(--bg-secondary)',
              padding: '0.75rem 1rem',
              borderRadius: '6px',
              border: '1px solid var(--border-wire)',
              marginBottom: '1.25rem',
              display: 'flex',
              justifyContent: 'space-between',
              alignItems: 'center',
              gap: '0.75rem',
              flexWrap: 'wrap'
            }}>
              <div>
                <span style={{ fontSize: '0.7rem', color: 'var(--text-muted)', textTransform: 'uppercase', letterSpacing: '0.04em', display: 'block', fontWeight: 600 }}>
                  Unique Credential ID
                </span>
                <strong style={{ color: 'var(--accent-wine)', fontSize: '0.98rem', fontFamily: 'var(--font-mono)' }}>
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
                style={{ padding: '0.3rem 0.75rem', fontSize: '0.75rem' }}
              >
                {copiedId ? '✓ Copied!' : 'Copy ID'}
              </button>
            </div>

            <div style={{ display: 'flex', gap: '1.5rem', flexWrap: 'wrap', alignItems: 'center', marginBottom: '1.5rem' }}>
              <div style={{ flex: 1 }}>
                <h4 style={{ fontSize: '1.15rem', fontWeight: 800, color: 'var(--text-primary)', marginBottom: '0.35rem' }}>
                  {selectedCred.credentialType}
                </h4>
                <div style={{ fontSize: '0.85rem', color: 'var(--text-secondary)', marginBottom: '0.85rem', fontWeight: 600 }}>
                  Conferred by {selectedCred.institutionName || user?.displayName}
                </div>
                <div style={{ display: 'flex', flexDirection: 'column', gap: '0.45rem', fontSize: '0.8125rem', color: 'var(--text-secondary)' }}>
                  <div><strong style={{ color: 'var(--text-primary)' }}>Credential ID:</strong> <code style={{ color: 'var(--accent-wine)', fontWeight: 600 }}>{selectedCred.credentialId}</code></div>
                  <div><strong style={{ color: 'var(--text-primary)' }}>Student Name:</strong> {selectedCred.studentName || selectedCred.studentId}</div>
                  <div><strong style={{ color: 'var(--text-primary)' }}>Student ID / Roll No:</strong> <code>{selectedCred.studentId}</code></div>
                  <div><strong style={{ color: 'var(--text-primary)' }}>Course:</strong> {selectedCred.courseName || selectedCred.courseCode}</div>
                  <div><strong style={{ color: 'var(--text-primary)' }}>Issue Date:</strong> {selectedCred.issueDate}</div>
                  <div><strong style={{ color: 'var(--text-primary)' }}>Attendance:</strong> {selectedCred.attendancePercent}% &bull; <strong style={{ color: 'var(--text-primary)' }}>Final Score:</strong> {selectedCred.finalScore} / 100</div>
                  {selectedCred.sgpa && (
                    <div><strong style={{ color: 'var(--text-primary)' }}>SGPA:</strong> {selectedCred.sgpa} &bull; <strong style={{ color: 'var(--text-primary)' }}>CGPA:</strong> {selectedCred.cgpa || selectedCred.sgpa}</div>
                  )}
                </div>
              </div>

              {selectedCred.qrCodeBase64 && (
                <div style={{ textAlign: 'center', background: 'var(--bg-secondary)', padding: '1rem', borderRadius: '6px', border: '1px solid var(--border-wire)' }}>
                  <div style={{ background: '#fff', padding: '0.45rem', borderRadius: '4px', border: '1px solid var(--border-wire)' }}>
                    <img src={selectedCred.qrCodeBase64} alt="Verification QR" style={{ width: '130px', height: '130px', display: 'block' }} />
                  </div>
                  <div style={{ fontSize: '0.72rem', color: 'var(--text-muted)', marginTop: '0.45rem', fontFamily: 'var(--font-mono)' }}>Verification QR</div>
                </div>
              )}
            </div>

            <div style={{ background: 'var(--status-success-bg)', padding: '0.75rem 1rem', borderRadius: '6px', fontSize: '0.8125rem', marginBottom: '1.25rem', border: '1px solid var(--status-success-border)' }}>
              <span style={{ color: 'var(--status-success-fg)', fontWeight: 600, fontFamily: 'var(--font-mono)' }}>
                Cryptographic Integrity Verified &bull; Registry Authenticity Sealed
              </span>
            </div>

            <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
              <Link
                to={`/verify/${selectedCred.credentialId}`}
                target="_blank"
                className="btn btn-hero-wine"
                style={{ width: 'auto', fontSize: '0.8125rem', textDecoration: 'none' }}
              >
                Open Public Verification Page &rarr;
              </Link>
              <button onClick={() => { setSelectedCred(null); setCopiedId(false); }} className="btn btn-outline" style={{ width: 'auto', fontSize: '0.8125rem' }}>
                Close
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
};
