import React, { useState } from 'react';
import { useAuth } from '../context/AuthContext';
import { credentialApi } from '../services/api';
import { Award, CheckCircle2, ShieldCheck, QrCode, AlertCircle, Copy, ExternalLink } from 'lucide-react';
import { Link } from 'react-router-dom';

export const ProviderIssueCredential = () => {
  const { user } = useAuth();
  const [formData, setFormData] = useState({
    studentId: 'STU-000001',
    institutionId: user?.institutionId || 'INST-001',
    programCode: 'PRG-001',
    courseCode: 'CRS-001',
    credentialType: 'Course Completion Credential',
    courseStartDate: '2025-06-01',
    courseEndDate: '2026-04-30',
    attendancePercent: 88.50,
    finalScore: 84.00,
  });

  const [loading, setLoading] = useState(false);
  const [issuedCred, setIssuedCred] = useState(null);
  const [error, setError] = useState(null);
  const [copied, setCopied] = useState(false);

  const handleChange = (e) => {
    setFormData({ ...formData, [e.target.name]: e.target.value });
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    setLoading(true);
    setError(null);
    setIssuedCred(null);

    try {
      const payload = {
        ...formData,
        attendancePercent: parseFloat(formData.attendancePercent),
        finalScore: parseFloat(formData.finalScore),
      };
      const res = await credentialApi.generateCredential(payload);
      setIssuedCred(res);
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
      <div style={{ marginBottom: '2rem' }}>
        <div style={{ display: 'flex', alignItems: 'center', gap: '0.6rem', marginBottom: '0.4rem' }}>
          <span className="badge badge-info"><Award size={12} /> Issuance Engine</span>
          <span className="badge badge-success"><ShieldCheck size={12} /> Deterministic SHA-256 + ZXing QR</span>
        </div>
        <h2 style={{ fontSize: '1.5rem', fontWeight: 800, color: 'var(--text-primary)', letterSpacing: '-0.02em' }}>
          Issue Tamper-Proof Digital Credential
        </h2>
        <p style={{ color: 'var(--text-secondary)', fontSize: '0.875rem' }}>
          Server-side canonical data construction &bull; Automated SHA-256 integrity calculation &bull; Direct PostgreSQL persistence
        </p>
      </div>

      {error && (
        <div style={{ display: 'flex', alignItems: 'center', gap: '0.5rem', padding: '1rem', background: 'var(--danger-bg)', border: '1px solid var(--danger-border)', borderRadius: '0.5rem', color: '#f87171', marginBottom: '1.5rem' }}>
          <AlertCircle size={18} /> {error}
        </div>
      )}

      <div style={{ display: 'grid', gridTemplateColumns: issuedCred ? '1.2fr 1fr' : '1fr', gap: '2rem' }}>
        {/* Form Card */}
        <div className="health-card" style={{ padding: '2.25rem' }}>
          <form onSubmit={handleSubmit} style={{ display: 'flex', flexDirection: 'column', gap: '1.25rem' }}>
            <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '1.25rem' }}>
              <div>
                <label style={{ display: 'block', fontSize: '0.8125rem', fontWeight: 600, color: 'var(--text-secondary)', marginBottom: '0.4rem' }}>Student ID</label>
                <input
                  type="text"
                  required
                  name="studentId"
                  value={formData.studentId}
                  onChange={handleChange}
                  style={{ width: '100%', padding: '0.7rem 0.9rem', borderRadius: '0.5rem', fontSize: '0.9rem' }}
                />
              </div>
              <div>
                <label style={{ display: 'block', fontSize: '0.8125rem', fontWeight: 600, color: 'var(--text-secondary)', marginBottom: '0.4rem' }}>Institution Code</label>
                <input
                  type="text"
                  required
                  name="institutionId"
                  value={formData.institutionId}
                  onChange={handleChange}
                  style={{ width: '100%', padding: '0.7rem 0.9rem', borderRadius: '0.5rem', fontSize: '0.9rem' }}
                />
              </div>
            </div>

            <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '1.25rem' }}>
              <div>
                <label style={{ display: 'block', fontSize: '0.8125rem', fontWeight: 600, color: 'var(--text-secondary)', marginBottom: '0.4rem' }}>Program Code</label>
                <input
                  type="text"
                  required
                  name="programCode"
                  value={formData.programCode}
                  onChange={handleChange}
                  style={{ width: '100%', padding: '0.7rem 0.9rem', borderRadius: '0.5rem', fontSize: '0.9rem' }}
                />
              </div>
              <div>
                <label style={{ display: 'block', fontSize: '0.8125rem', fontWeight: 600, color: 'var(--text-secondary)', marginBottom: '0.4rem' }}>Course Code</label>
                <input
                  type="text"
                  required
                  name="courseCode"
                  value={formData.courseCode}
                  onChange={handleChange}
                  style={{ width: '100%', padding: '0.7rem 0.9rem', borderRadius: '0.5rem', fontSize: '0.9rem' }}
                />
              </div>
            </div>

            <div>
              <label style={{ display: 'block', fontSize: '0.8125rem', fontWeight: 600, color: 'var(--text-secondary)', marginBottom: '0.4rem' }}>Credential Type</label>
              <select
                name="credentialType"
                value={formData.credentialType}
                onChange={handleChange}
                style={{ width: '100%', padding: '0.7rem 0.9rem', borderRadius: '0.5rem', fontSize: '0.9rem' }}
              >
                <option value="Course Completion Credential">Course Completion Credential</option>
                <option value="Degree Credential">Degree Credential</option>
                <option value="Internship Certificate">Internship Certificate</option>
                <option value="Skill Certificate">Skill Certificate</option>
                <option value="Transcript Credential">Transcript Credential</option>
              </select>
            </div>

            <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '1.25rem' }}>
              <div>
                <label style={{ display: 'block', fontSize: '0.8125rem', fontWeight: 600, color: 'var(--text-secondary)', marginBottom: '0.4rem' }}>Course Start Date</label>
                <input
                  type="date"
                  required
                  name="courseStartDate"
                  value={formData.courseStartDate}
                  onChange={handleChange}
                  style={{ width: '100%', padding: '0.7rem 0.9rem', borderRadius: '0.5rem', fontSize: '0.9rem' }}
                />
              </div>
              <div>
                <label style={{ display: 'block', fontSize: '0.8125rem', fontWeight: 600, color: 'var(--text-secondary)', marginBottom: '0.4rem' }}>Course End Date</label>
                <input
                  type="date"
                  required
                  name="courseEndDate"
                  value={formData.courseEndDate}
                  onChange={handleChange}
                  style={{ width: '100%', padding: '0.7rem 0.9rem', borderRadius: '0.5rem', fontSize: '0.9rem' }}
                />
              </div>
            </div>

            <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '1.25rem' }}>
              <div>
                <label style={{ display: 'block', fontSize: '0.8125rem', fontWeight: 600, color: 'var(--text-secondary)', marginBottom: '0.4rem' }}>Attendance (%) &ge; 75%</label>
                <input
                  type="number"
                  step="0.01"
                  min="0"
                  max="100"
                  required
                  name="attendancePercent"
                  value={formData.attendancePercent}
                  onChange={handleChange}
                  style={{ width: '100%', padding: '0.7rem 0.9rem', borderRadius: '0.5rem', fontSize: '0.9rem' }}
                />
              </div>
              <div>
                <label style={{ display: 'block', fontSize: '0.8125rem', fontWeight: 600, color: 'var(--text-secondary)', marginBottom: '0.4rem' }}>Final Score &ge; 50</label>
                <input
                  type="number"
                  step="0.01"
                  min="0"
                  max="100"
                  required
                  name="finalScore"
                  value={formData.finalScore}
                  onChange={handleChange}
                  style={{ width: '100%', padding: '0.7rem 0.9rem', borderRadius: '0.5rem', fontSize: '0.9rem' }}
                />
              </div>
            </div>

            <button type="submit" disabled={loading} className="btn btn-primary" style={{ marginTop: '0.75rem', padding: '0.85rem' }}>
              <Award size={18} />
              {loading ? 'Executing Eligibility Check & Generating SHA-256...' : 'Issue Tamper-Proof Credential'}
            </button>
          </form>
        </div>

        {/* Issuance Receipt / QR Code Preview */}
        {issuedCred && (
          <div className="health-card" style={{ padding: '2rem', border: '1px solid var(--success-border)', background: 'rgba(6, 78, 59, 0.25)' }}>
            <div style={{ display: 'flex', alignItems: 'center', gap: '0.6rem', color: '#4ade80', fontWeight: 700, marginBottom: '1.25rem' }}>
              <CheckCircle2 size={24} /> Credential Created & Persisted
            </div>

            <div style={{ textAlign: 'center', marginBottom: '1.5rem', background: 'rgba(8, 18, 32, 0.8)', padding: '1.25rem', borderRadius: '0.65rem', border: '1px solid var(--border)' }}>
              {issuedCred.qrCodeBase64 ? (
                <div style={{ background: '#fff', padding: '0.6rem', borderRadius: '0.5rem', width: 'fit-content', margin: '0 auto' }}>
                  <img src={issuedCred.qrCodeBase64} alt="Verification QR Code" style={{ width: '160px', height: '160px', display: 'block' }} />
                </div>
              ) : (
                <QrCode size={120} color="var(--text-muted)" style={{ margin: '1rem auto' }} />
              )}
              <div style={{ fontSize: '0.75rem', color: 'var(--text-secondary)', marginTop: '0.75rem' }}>
                Scan with any QR scanner to verify integrity
              </div>
            </div>

            <div style={{ display: 'flex', flexDirection: 'column', gap: '0.85rem', fontSize: '0.85rem' }}>
              <div>
                <span style={{ color: 'var(--text-secondary)', fontSize: '0.75rem' }}>Unique Credential ID:</span>
                <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', background: 'rgba(15, 23, 42, 0.9)', padding: '0.5rem 0.75rem', borderRadius: '0.4rem', border: '1px solid var(--border)', fontFamily: 'var(--font-mono)', marginTop: '0.2rem' }}>
                  <strong style={{ color: 'var(--cyan)' }}>{issuedCred.credentialId}</strong>
                  <button onClick={() => copyToClipboard(issuedCred.credentialId)} style={{ fontSize: '0.75rem', color: 'var(--primary)' }}>
                    {copied ? 'Copied!' : <Copy size={14} />}
                  </button>
                </div>
              </div>

              <div>
                <span style={{ color: 'var(--text-secondary)', fontSize: '0.75rem' }}>Deterministic SHA-256 Integrity Hash:</span>
                <div style={{ background: 'rgba(15, 23, 42, 0.9)', padding: '0.5rem 0.75rem', borderRadius: '0.4rem', border: '1px solid var(--border)', fontFamily: 'var(--font-mono)', fontSize: '0.72rem', wordBreak: 'break-all', marginTop: '0.2rem', color: 'var(--text-primary)' }}>
                  {issuedCred.credentialHash}
                </div>
              </div>

              <div style={{ marginTop: '0.5rem' }}>
                <Link to={`/verify/${issuedCred.credentialId}`} target="_blank" className="btn btn-outline" style={{ width: '100%', fontSize: '0.85rem' }}>
                  <ExternalLink size={14} /> Open Public Verification Page
                </Link>
              </div>
            </div>
          </div>
        )}
      </div>
    </div>
  );
};
