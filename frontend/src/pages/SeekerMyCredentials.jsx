import React, { useState, useEffect } from 'react';
import { useAuth } from '../context/AuthContext';
import { credentialApi } from '../services/api';
import { Award, ShieldCheck, Eye, ExternalLink, RefreshCw, X } from 'lucide-react';
import { Link } from 'react-router-dom';

export const SeekerMyCredentials = () => {
  const { user } = useAuth();
  const [credentials, setCredentials] = useState([]);
  const [loading, setLoading] = useState(true);
  const [selectedCred, setSelectedCred] = useState(null);
  const [error, setError] = useState(null);

  const fetchCredentials = async () => {
    setLoading(true);
    try {
      const studentId = user?.studentId || 'STU-000001';
      const data = await credentialApi.getCredentialsByStudent(studentId);
      setCredentials(data);
    } catch (err) {
      setError(err.message);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    fetchCredentials();
  }, [user]);

  return (
    <div>
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '1.75rem', flexWrap: 'wrap', gap: '1rem' }}>
        <div>
          <h2 style={{ fontSize: '1.5rem', fontWeight: 800, color: 'var(--text-primary)', letterSpacing: '-0.02em' }}>
            My Verified Digital Credentials
          </h2>
          <p style={{ color: 'var(--text-secondary)', fontSize: '0.875rem' }}>
            Official digital certificates issued under the ONEST national registry &bull; Cryptographically verifiable via QR code
          </p>
        </div>
        <button onClick={fetchCredentials} className="btn btn-outline" style={{ width: 'auto' }}>
          <RefreshCw size={14} className={loading ? 'spin' : ''} /> Refresh
        </button>
      </div>

      {loading ? (
        <div style={{ textAlign: 'center', padding: '3rem', color: 'var(--text-secondary)' }}>Loading your digital wallet...</div>
      ) : credentials.length === 0 ? (
        <div className="health-card" style={{ textAlign: 'center', padding: '3.5rem' }}>
          <Award size={40} color="var(--text-muted)" style={{ margin: '0 auto 0.85rem' }} />
          <h3 style={{ fontSize: '1.15rem', fontWeight: 700, color: 'var(--text-primary)', marginBottom: '0.35rem' }}>No Issued Credentials Yet</h3>
          <p style={{ color: 'var(--text-secondary)', fontSize: '0.875rem', marginBottom: '1.25rem' }}>
            You do not have any issued certificates. Submit a request to your institution to get started.
          </p>
          <Link to="/seeker/request" className="btn btn-primary" style={{ width: 'auto', display: 'inline-flex' }}>
            Request a Credential
          </Link>
        </div>
      ) : (
        <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(320px, 1fr))', gap: '1.75rem' }}>
          {credentials.map((c) => (
            <div key={c.credentialId} className="portal-card">
              <div>
                <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start', marginBottom: '1rem' }}>
                  <div className="portal-icon-wrapper portal-icon-seeker" style={{ width: '2.85rem', height: '2.85rem', marginBottom: 0 }}>
                    <Award size={22} />
                  </div>
                  <span className="badge badge-success">
                    <ShieldCheck size={12} /> {c.verificationStatus || 'Verified'}
                  </span>
                </div>

                <h3 style={{ fontSize: '1.2rem', fontWeight: 800, color: 'var(--text-primary)', marginBottom: '0.3rem' }}>
                  {c.credentialType}
                </h3>
                <div style={{ fontSize: '0.825rem', color: 'var(--cyan)', marginBottom: '0.85rem', fontWeight: 600 }}>
                  {c.institutionName}
                </div>

                <div style={{ display: 'flex', flexDirection: 'column', gap: '0.4rem', fontSize: '0.825rem', color: 'var(--text-secondary)', marginBottom: '1.5rem', background: 'rgba(8, 18, 32, 0.6)', padding: '0.85rem', borderRadius: '0.5rem', border: '1px solid var(--border)' }}>
                  <div><strong style={{ color: 'var(--text-primary)' }}>Course:</strong> {c.courseName || c.courseCode}</div>
                  <div><strong style={{ color: 'var(--text-primary)' }}>Issue Date:</strong> {c.issueDate}</div>
                  <div><strong style={{ color: 'var(--text-primary)' }}>Score:</strong> {c.finalScore} / 100 &bull; <strong style={{ color: 'var(--text-primary)' }}>Attendance:</strong> {c.attendancePercent}%</div>
                  <div><strong style={{ color: 'var(--text-primary)' }}>ID:</strong> <code>{c.credentialId}</code></div>
                </div>
              </div>

              <div style={{ display: 'flex', gap: '0.6rem' }}>
                <button
                  onClick={() => setSelectedCred(c)}
                  className="btn btn-primary"
                  style={{ fontSize: '0.85rem' }}
                >
                  <Eye size={14} /> Open Certificate & QR
                </button>
                <Link
                  to={`/verify/${c.credentialId}`}
                  target="_blank"
                  className="btn btn-outline"
                  style={{ width: 'auto', padding: '0.5rem 0.85rem' }}
                  title="Public Verification"
                >
                  <ExternalLink size={14} />
                </Link>
              </div>
            </div>
          ))}
        </div>
      )}

      {/* Credential Certificate Modal */}
      {selectedCred && (
        <div className="modal-overlay">
          <div className="modal-content" style={{ width: '100%', maxWidth: '650px', maxHeight: '90vh', overflowY: 'auto', padding: '2.25rem' }}>
            <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', borderBottom: '1px solid var(--border)', paddingBottom: '0.85rem', marginBottom: '1.5rem' }}>
              <div style={{ display: 'flex', alignItems: 'center', gap: '0.5rem' }}>
                <Award size={22} color="var(--cyan)" />
                <h3 style={{ fontSize: '1.3rem', fontWeight: 800, color: 'var(--text-primary)' }}>Official Digital Credential</h3>
              </div>
              <button onClick={() => setSelectedCred(null)} style={{ color: 'var(--text-secondary)' }}>
                <X size={20} />
              </button>
            </div>

            <div style={{ textAlign: 'center', padding: '1.5rem', background: 'rgba(8, 18, 32, 0.85)', borderRadius: '0.75rem', border: '1px solid var(--border)', marginBottom: '1.5rem' }}>
              <div style={{ fontSize: '0.75rem', fontWeight: 700, color: 'var(--cyan)', textTransform: 'uppercase', letterSpacing: '0.08em' }}>
                {selectedCred.institutionName}
              </div>
              <h2 style={{ fontSize: '1.45rem', fontWeight: 800, color: 'var(--text-primary)', margin: '0.45rem 0' }}>
                {selectedCred.credentialType}
              </h2>
              <div style={{ fontSize: '0.9rem', color: 'var(--text-secondary)' }}>
                This is to certify that <strong style={{ color: 'var(--text-primary)' }}>{selectedCred.studentName || user?.displayName}</strong> has successfully completed the curriculum for
              </div>
              <div style={{ fontSize: '1.15rem', fontWeight: 800, color: 'var(--primary)', margin: '0.6rem 0' }}>
                {selectedCred.courseName || selectedCred.courseCode}
              </div>
              <div style={{ fontSize: '0.8rem', color: 'var(--text-secondary)' }}>
                Conferred on {selectedCred.issueDate} &bull; Final Score: {selectedCred.finalScore}%
              </div>

              {selectedCred.qrCodeBase64 && (
                <div style={{ marginTop: '1.25rem' }}>
                  <div style={{ background: '#fff', padding: '0.5rem', borderRadius: '0.4rem', width: 'fit-content', margin: '0 auto' }}>
                    <img src={selectedCred.qrCodeBase64} alt="Verification QR Code" style={{ width: '140px', height: '140px', display: 'block' }} />
                  </div>
                  <div style={{ fontSize: '0.72rem', color: 'var(--text-secondary)', marginTop: '0.45rem' }}>Scan with camera to verify authenticity</div>
                </div>
              )}
            </div>

            <div style={{ background: 'rgba(176, 0, 90, 0.15)', padding: '0.85rem 1rem', borderRadius: '0.45rem', fontSize: '0.82rem', marginBottom: '1.5rem', border: '1px solid var(--border-active)', display: 'flex', alignItems: 'center', gap: '0.5rem' }}>
              <ShieldCheck size={18} color="#22C55E" />
              <span style={{ color: '#FFFFFF', fontWeight: 600 }}>
                Cryptographically Sealed &bull; Tamper-Evident Digital Credential
              </span>
            </div>

            <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
              <Link to={`/verify/${selectedCred.credentialId}`} target="_blank" className="btn btn-primary" style={{ width: 'auto', fontSize: '0.85rem' }}>
                <ExternalLink size={14} /> Open Public Verification Page
              </Link>
              <button onClick={() => setSelectedCred(null)} className="btn btn-outline" style={{ width: 'auto', fontSize: '0.85rem' }}>
                Close
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
};
