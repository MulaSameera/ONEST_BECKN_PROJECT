import React, { useState } from 'react';
import { useAuth } from '../context/AuthContext';
import { requestApi } from '../services/api';
import { FileText, CheckCircle2, AlertCircle, ArrowRight } from 'lucide-react';
import { useNavigate } from 'react-router-dom';

export const SeekerRequestCredential = () => {
  const { user } = useAuth();
  const navigate = useNavigate();

  const [formData, setFormData] = useState({
    institutionId: 'INST-001',
    programCode: 'PRG-001',
    courseCode: 'CRS-001',
    requestedCredentialType: 'Course Completion Credential',
  });

  const [loading, setLoading] = useState(false);
  const [success, setSuccess] = useState(false);
  const [error, setError] = useState(null);

  const handleChange = (e) => {
    setFormData({ ...formData, [e.target.name]: e.target.value });
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    setLoading(true);
    setError(null);
    try {
      await requestApi.createRequest({
        ...formData,
        studentId: user?.studentId || 'STU-000001',
      });
      setSuccess(true);
    } catch (err) {
      setError(err.message);
    } finally {
      setLoading(false);
    }
  };

  return (
    <div style={{ maxWidth: '560px', margin: '0 auto' }}>
      <div style={{ marginBottom: '2rem' }}>
        <h2 style={{ fontSize: '1.5rem', fontWeight: 800, color: 'var(--text-primary)', letterSpacing: '-0.02em' }}>
          Request Digital Credential
        </h2>
        <p style={{ color: 'var(--text-secondary)', fontSize: '0.875rem' }}>
          Submit a credential application to your issuing university or institute for review and automated eligibility evaluation.
        </p>
      </div>

      {success ? (
        <div className="health-card" style={{ padding: '2.5rem', textAlign: 'center', border: '1px solid var(--success-border)', background: 'rgba(6, 78, 59, 0.25)' }}>
          <div style={{ width: '4rem', height: '4rem', borderRadius: '50%', background: 'rgba(34, 197, 94, 0.2)', display: 'flex', alignItems: 'center', justifyContent: 'center', margin: '0 auto 1rem' }}>
            <CheckCircle2 size={36} color="var(--success)" />
          </div>
          <h3 style={{ fontSize: '1.35rem', fontWeight: 800, color: '#4ade80', marginBottom: '0.5rem' }}>
            Request Submitted Successfully!
          </h3>
          <p style={{ color: 'var(--text-secondary)', fontSize: '0.9rem', marginBottom: '1.75rem', lineHeight: 1.6 }}>
            Your request has been placed in the institution's review queue. Once your academic eligibility is evaluated, your credential will be issued and appear in your wallet.
          </p>
          <button onClick={() => navigate('/seeker/dashboard')} className="btn btn-primary" style={{ width: 'auto', padding: '0.75rem 1.5rem' }}>
            Go to Dashboard <ArrowRight size={16} />
          </button>
        </div>
      ) : (
        <div className="health-card" style={{ padding: '2.25rem' }}>
          {error && (
            <div style={{ display: 'flex', alignItems: 'center', gap: '0.5rem', padding: '0.75rem 1rem', background: 'var(--danger-bg)', border: '1px solid var(--danger-border)', borderRadius: '0.5rem', color: '#f87171', fontSize: '0.875rem', marginBottom: '1.25rem' }}>
              <AlertCircle size={16} /> {error}
            </div>
          )}

          <form onSubmit={handleSubmit} style={{ display: 'flex', flexDirection: 'column', gap: '1.25rem' }}>
            <div>
              <label style={{ display: 'block', fontSize: '0.8125rem', fontWeight: 600, color: 'var(--text-secondary)', marginBottom: '0.4rem' }}>
                Institution ID
              </label>
              <input
                type="text"
                required
                name="institutionId"
                placeholder="e.g. INST-001, INST-002, etc."
                value={formData.institutionId}
                onChange={handleChange}
                style={{ width: '100%', padding: '0.7rem 0.9rem', borderRadius: '0.5rem', fontSize: '0.9rem' }}
              />
              <div style={{ display: 'flex', gap: '0.4rem', marginTop: '0.4rem', fontSize: '0.75rem', color: 'var(--text-secondary)' }}>
                <span>Quick Select:</span>
                <button type="button" onClick={() => setFormData(prev => ({ ...prev, institutionId: 'INST-001' }))} style={{ color: 'var(--cyan)', textDecoration: 'underline' }}>INST-001</button>
                <button type="button" onClick={() => setFormData(prev => ({ ...prev, institutionId: 'INST-002' }))} style={{ color: 'var(--cyan)', textDecoration: 'underline' }}>INST-002</button>
                <button type="button" onClick={() => setFormData(prev => ({ ...prev, institutionId: 'INST-003' }))} style={{ color: 'var(--cyan)', textDecoration: 'underline' }}>INST-003</button>
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
              <label style={{ display: 'block', fontSize: '0.8125rem', fontWeight: 600, color: 'var(--text-secondary)', marginBottom: '0.4rem' }}>Requested Credential Type</label>
              <select
                name="requestedCredentialType"
                value={formData.requestedCredentialType}
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

            <button type="submit" disabled={loading} className="btn btn-primary" style={{ marginTop: '0.5rem', padding: '0.85rem' }}>
              <FileText size={16} />
              {loading ? 'Submitting to Institution...' : 'Submit Credential Request'}
            </button>
          </form>
        </div>
      )}
    </div>
  );
};
