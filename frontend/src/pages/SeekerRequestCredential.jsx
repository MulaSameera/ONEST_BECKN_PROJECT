import React, { useState } from 'react';
import { useAuth } from '../context/AuthContext';
import { requestApi } from '../services/api';
import { useNavigate } from 'react-router-dom';

export const SeekerRequestCredential = () => {
  const { user } = useAuth();
  const navigate = useNavigate();

  const [formData, setFormData] = useState({
    institutionId: 'INST-ANITS',
    programCode: 'PRG-CSE',
    courseCode: 'CSE-ML',
    requestedCredentialType: 'Semester Grade Card (R23)',
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
        studentId: user?.studentId || 'A23126510162',
      });
      setSuccess(true);
    } catch (err) {
      setError(err.message);
    } finally {
      setLoading(false);
    }
  };

  return (
    <div style={{ maxWidth: '580px', margin: '0 auto' }}>
      <div style={{ marginBottom: '2rem', borderBottom: '1px solid var(--border-wire)', paddingBottom: '1rem' }}>
        <h2 style={{ fontSize: '1.5rem', fontWeight: 800, color: 'var(--text-primary)', letterSpacing: '-0.02em' }}>
          Request Digital Credential
        </h2>
        <p style={{ color: 'var(--text-secondary)', fontSize: '0.875rem' }}>
          Submit a credential application to your issuing university or institute for review and automated eligibility evaluation.
        </p>
      </div>

      {success ? (
        <div className="health-card" style={{ padding: '2.5rem', textAlign: 'center', border: '1px solid var(--status-success-border)', background: 'var(--status-success-bg)' }}>
          <div style={{ fontSize: '1.25rem', fontWeight: 800, color: 'var(--status-success-fg)', marginBottom: '0.5rem', fontFamily: 'var(--font-mono)' }}>
            STATUS: REQUEST SUBMITTED SUCCESSFULLY
          </div>
          <p style={{ color: 'var(--text-secondary)', fontSize: '0.9rem', marginBottom: '1.75rem', lineHeight: 1.6 }}>
            Your request has been placed in the institution's review queue. Once your academic eligibility is evaluated, your credential will be issued and appear in your wallet.
          </p>
          <button onClick={() => navigate('/seeker/dashboard')} className="btn btn-primary" style={{ width: 'auto', padding: '0.65rem 1.5rem' }}>
            Go to Dashboard
          </button>
        </div>
      ) : (
        <div className="health-card" style={{ padding: '2rem' }}>
          {error && (
            <div style={{ padding: '0.75rem 1rem', background: 'var(--status-error-bg)', border: '1px solid var(--status-error-border)', borderRadius: '3px', color: 'var(--status-error-fg)', fontSize: '0.85rem', marginBottom: '1.25rem', fontFamily: 'var(--font-mono)' }}>
              [ERROR] {error}
            </div>
          )}

          <form onSubmit={handleSubmit} style={{ display: 'flex', flexDirection: 'column', gap: '1.25rem' }}>
            <div>
              <label style={{ display: 'block', fontSize: '0.75rem', fontWeight: 600, color: 'var(--text-secondary)', marginBottom: '0.35rem', textTransform: 'uppercase', letterSpacing: '0.04em' }}>
                Issuing Institution Code
              </label>
              <input
                type="text"
                required
                name="institutionId"
                placeholder="e.g. INST-ANITS"
                value={formData.institutionId}
                onChange={handleChange}
                style={{ width: '100%', padding: '0.65rem 0.85rem', borderRadius: '3px', fontSize: '0.875rem', fontFamily: 'var(--font-mono)' }}
              />
              <div style={{ display: 'flex', gap: '0.4rem', marginTop: '0.4rem', fontSize: '0.75rem', color: 'var(--text-secondary)', alignItems: 'center' }}>
                <span>Quick Select:</span>
                <button
                  type="button"
                  onClick={() => setFormData(prev => ({ ...prev, institutionId: 'INST-ANITS' }))}
                  style={{ color: 'var(--accent-wine)', textDecoration: 'underline', fontWeight: 600 }}
                >
                  INST-ANITS (Anil Neerukonda Institute of Tech &amp; Sci)
                </button>
              </div>
            </div>

            <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '1.25rem' }}>
              <div>
                <label style={{ display: 'block', fontSize: '0.75rem', fontWeight: 600, color: 'var(--text-secondary)', marginBottom: '0.35rem', textTransform: 'uppercase', letterSpacing: '0.04em' }}>
                  Program (Branch)
                </label>
                <select
                  name="programCode"
                  value={formData.programCode}
                  onChange={handleChange}
                  style={{ width: '100%', padding: '0.65rem 0.85rem', borderRadius: '3px', fontSize: '0.875rem', background: '#FFFFFF' }}
                >
                  <option value="PRG-CSE">PRG-CSE — Computer Science &amp; Engg</option>
                  <option value="PRG-CSM">PRG-CSM — CSE (AI &amp; ML)</option>
                  <option value="PRG-CSD">PRG-CSD — CSE (Data Science)</option>
                  <option value="PRG-IT">PRG-IT — Information Technology</option>
                  <option value="PRG-ECE">PRG-ECE — Electronics &amp; Comm Engg</option>
                  <option value="PRG-EEE">PRG-EEE — Electrical &amp; Electronics Engg</option>
                  <option value="PRG-MECH">PRG-MECH — Mechanical Engineering</option>
                  <option value="PRG-CIVIL">PRG-CIVIL — Civil Engineering</option>
                  <option value="PRG-CHEM">PRG-CHEM — Chemical Engineering</option>
                </select>
              </div>
              <div>
                <label style={{ display: 'block', fontSize: '0.75rem', fontWeight: 600, color: 'var(--text-secondary)', marginBottom: '0.35rem', textTransform: 'uppercase', letterSpacing: '0.04em' }}>
                  Course Subject
                </label>
                <select
                  name="courseCode"
                  value={formData.courseCode}
                  onChange={handleChange}
                  style={{ width: '100%', padding: '0.65rem 0.85rem', borderRadius: '3px', fontSize: '0.875rem', background: '#FFFFFF' }}
                >
                  <optgroup label="CSE Courses">
                    <option value="CSE-ML">CSE-ML — Machine Learning</option>
                    <option value="CSE-CNS">CSE-CNS — Cryptography &amp; Network Security</option>
                    <option value="CSE-CT">CSE-CT — Cloud Technologies</option>
                    <option value="CSE-DIP">CSE-DIP — Digital Image Processing</option>
                    <option value="CSE-NLP">CSE-NLP — Natural Language Processing</option>
                  </optgroup>
                  <optgroup label="CSM / CSD / IT Courses">
                    <option value="CSM-NNDL">CSM-NNDL — Neural Networks &amp; Deep Learning</option>
                    <option value="CSM-DEVOPS">CSM-DEVOPS — DevOps (Skill Course)</option>
                    <option value="CSD-BDT">CSD-BDT — Big Data Technologies</option>
                    <option value="IT-DAA">IT-DAA — Design &amp; Analysis of Algorithms</option>
                  </optgroup>
                  <optgroup label="ECE / MECH / CHEM Courses">
                    <option value="ECE-VLSID">ECE-VLSID — VLSI Design</option>
                    <option value="MECH-HT">MECH-HT — Heat Transfer</option>
                    <option value="CHEM-MT2">CHEM-MT2 — Mass Transfer-II</option>
                  </optgroup>
                </select>
              </div>
            </div>

            <div>
              <label style={{ display: 'block', fontSize: '0.75rem', fontWeight: 600, color: 'var(--text-secondary)', marginBottom: '0.35rem', textTransform: 'uppercase', letterSpacing: '0.04em' }}>
                Requested Credential Type
              </label>
              <select
                name="requestedCredentialType"
                value={formData.requestedCredentialType}
                onChange={handleChange}
                style={{ width: '100%', padding: '0.65rem 0.85rem', borderRadius: '3px', fontSize: '0.875rem', background: '#FFFFFF' }}
              >
                <option value="Semester Grade Card (R23)">Semester Grade Card (R23)</option>
                <option value="B.Tech Degree Credential">B.Tech Degree Credential</option>
                <option value="Consolidated Grade Transcript">Consolidated Grade Transcript</option>
                <option value="Course Completion Credential">Course Completion Credential</option>
                <option value="Provisional Certificate">Provisional Certificate</option>
              </select>
            </div>

            <button type="submit" disabled={loading} className="btn btn-primary" style={{ marginTop: '0.5rem', padding: '0.75rem' }}>
              {loading ? 'Submitting to Institution...' : 'Submit Credential Request'}
            </button>
          </form>
        </div>
      )}
    </div>
  );
};
