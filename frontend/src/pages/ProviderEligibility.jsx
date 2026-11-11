import React, { useState } from 'react';
import { useAuth } from '../context/AuthContext';
import { eligibilityApi } from '../services/api';

export const ProviderEligibility = () => {
  const { user } = useAuth();
  const [studentId, setStudentId] = useState('A23126510162');
  const [courseCode, setCourseCode] = useState('');
  const [result, setResult] = useState(null);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState(null);

  const handleCheck = async (e) => {
    e?.preventDefault();
    if (!studentId.trim()) return;

    setLoading(true);
    setError(null);
    try {
      const data = await eligibilityApi.checkEligibility(
        studentId.trim(),
        user?.institutionId || 'INST-ANITS',
        courseCode.trim() || null
      );
      setResult(data);
    } catch (err) {
      setError(err.message);
      setResult(null);
    } finally {
      setLoading(false);
    }
  };

  return (
    <div>
      <div style={{ marginBottom: '2rem', borderBottom: '1px solid var(--border-wire)', paddingBottom: '1rem' }}>
        <div style={{ display: 'flex', alignItems: 'center', gap: '0.6rem', marginBottom: '0.4rem' }}>
          <span className="badge badge-info">Automated Logic</span>
          <span className="badge badge-success">5 Defined Rules</span>
        </div>
        <h2 style={{ fontSize: '1.5rem', fontWeight: 800, color: 'var(--text-primary)', letterSpacing: '-0.02em' }}>
          Explainable Eligibility Verification Engine
        </h2>
        <p style={{ color: 'var(--text-secondary)', fontSize: '0.875rem' }}>
          Real-time deterministic rule engine evaluating candidate attendance, score thresholds, completion status, and course timeline validity.
        </p>
      </div>

      {/* Input Search Form */}
      <div className="health-card" style={{ padding: '1.5rem', marginBottom: '2rem' }}>
        <form onSubmit={handleCheck} style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(220px, 1fr)) 160px', gap: '1rem', alignItems: 'flex-end' }}>
          <div>
            <label style={{ display: 'block', fontSize: '0.75rem', fontWeight: 600, color: 'var(--text-secondary)', marginBottom: '0.35rem', textTransform: 'uppercase', letterSpacing: '0.04em' }}>
              Student Hall Ticket / ID
            </label>
            <input
              type="text"
              required
              value={studentId}
              onChange={(e) => setStudentId(e.target.value)}
              placeholder="e.g. A23126510162"
              style={{ width: '100%', padding: '0.65rem 0.85rem', borderRadius: '3px', fontSize: '0.875rem', fontFamily: 'var(--font-mono)' }}
            />
          </div>

          <div>
            <label style={{ display: 'block', fontSize: '0.75rem', fontWeight: 600, color: 'var(--text-secondary)', marginBottom: '0.35rem', textTransform: 'uppercase', letterSpacing: '0.04em' }}>
              Course Code (Optional)
            </label>
            <input
              type="text"
              value={courseCode}
              onChange={(e) => setCourseCode(e.target.value)}
              placeholder="e.g. CSE-ML (Auto-matches if empty)"
              style={{ width: '100%', padding: '0.65rem 0.85rem', borderRadius: '3px', fontSize: '0.875rem', fontFamily: 'var(--font-mono)' }}
            />
          </div>

          <button type="submit" disabled={loading} className="btn btn-primary" style={{ height: '38px' }}>
            {loading ? 'Evaluating...' : 'Evaluate Rules'}
          </button>
        </form>

        <div style={{ marginTop: '0.85rem', display: 'flex', gap: '0.6rem', alignItems: 'center', fontSize: '0.75rem', color: 'var(--text-secondary)', flexWrap: 'wrap' }}>
          <span style={{ fontWeight: 600 }}>Quick Test Records:</span>
          <button type="button" onClick={() => { setStudentId('A23126510162'); setCourseCode('CSE-ML'); }} style={{ color: 'var(--accent-wine)', textDecoration: 'underline', fontWeight: 600 }}>
            A23126510162 (Sameera &bull; Eligible)
          </button>
          <button type="button" onClick={() => { setStudentId('A23126510182'); setCourseCode('CSE-ML'); }} style={{ color: 'var(--accent-wine)', textDecoration: 'underline', fontWeight: 600 }}>
            A23126510182 (Padmakshi &bull; Eligible)
          </button>
          <button type="button" onClick={() => { setStudentId('A23126510177'); setCourseCode('CSE-ML'); }} style={{ color: 'var(--accent-wine)', textDecoration: 'underline', fontWeight: 600 }}>
            A23126510177 (Jaswanth &bull; Eligible)
          </button>
          <button type="button" onClick={() => { setStudentId('A23126510008'); setCourseCode('CSE-DIP'); }} style={{ color: 'var(--status-error-fg)', textDecoration: 'underline', fontWeight: 600 }}>
            A23126510008 (Arrear/Backlog &bull; Ineligible Test)
          </button>
          <button type="button" onClick={() => { setStudentId('A23126502008'); setCourseCode('CHEM-MT2'); }} style={{ color: 'var(--status-error-fg)', textDecoration: 'underline', fontWeight: 600 }}>
            A23126502008 (Naveen Nambiar &bull; Ineligible Audit)
          </button>
        </div>
      </div>

      {error && (
        <div style={{ padding: '0.85rem 1rem', background: 'var(--status-error-bg)', border: '1px solid var(--status-error-border)', borderRadius: '3px', color: 'var(--status-error-fg)', fontSize: '0.85rem', marginBottom: '2rem', fontFamily: 'var(--font-mono)' }}>
          [ERROR] {error}
        </div>
      )}

      {/* Results View */}
      {result && (
        <div>
          {/* Header Outcome Banner */}
          <div
            style={{
              padding: '1.5rem',
              borderRadius: '3px',
              border: '1px solid',
              borderColor: result.eligible ? 'var(--status-success-border)' : 'var(--status-error-border)',
              background: result.eligible ? 'var(--status-success-bg)' : 'var(--status-error-bg)',
              marginBottom: '2rem',
              display: 'flex',
              alignItems: 'center',
              justifyContent: 'space-between',
              flexWrap: 'wrap',
              gap: '1.25rem',
            }}
          >
            <div>
              <div style={{ display: 'flex', alignItems: 'center', gap: '0.6rem', marginBottom: '0.35rem' }}>
                <h3 style={{ fontSize: '1.25rem', fontWeight: 800, color: result.eligible ? 'var(--status-success-fg)' : 'var(--status-error-fg)', fontFamily: 'var(--font-mono)' }}>
                  OVERALL RESULT: {result.overallResult}
                </h3>
              </div>
              <p style={{ fontSize: '0.875rem', color: result.eligible ? 'var(--status-success-fg)' : 'var(--status-error-fg)' }}>
                {result.summaryText}
              </p>
            </div>
            <div style={{ textAlign: 'right', fontSize: '0.8125rem', color: 'var(--text-secondary)' }}>
              <div><strong>Student:</strong> {result.studentName} (<code>{result.studentId}</code>)</div>
              <div><strong>Course:</strong> {result.courseName} (<code>{result.courseCode}</code>)</div>
            </div>
          </div>

          {/* 5 Rules Breakdown Grid */}
          <h3 style={{ fontSize: '1.15rem', fontWeight: 700, color: 'var(--text-primary)', marginBottom: '1.25rem' }}>
            Explainable 5-Rule Verification Breakdown
          </h3>

          <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(300px, 1fr))', gap: '1.25rem' }}>
            {result.rules.map((r, i) => (
              <div
                key={i}
                className="health-card"
                style={{
                  padding: '1.25rem',
                  marginBottom: 0,
                  borderLeft: `4px solid ${r.passed ? 'var(--status-success-fg)' : 'var(--status-error-fg)'}`,
                }}
              >
                <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start', marginBottom: '0.85rem' }}>
                  <h4 style={{ fontSize: '0.9rem', fontWeight: 700, color: 'var(--text-primary)' }}>{r.ruleName}</h4>
                  <span className={`badge ${r.passed ? 'badge-success' : 'badge-danger'}`}>
                    {r.passed ? 'PASS' : 'FAIL'}
                  </span>
                </div>

                <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '0.5rem', fontSize: '0.8125rem', marginBottom: '0.75rem', background: 'var(--bg-secondary)', padding: '0.6rem 0.85rem', borderRadius: '3px', border: '1px solid var(--border-wire)' }}>
                  <div>
                    <span style={{ color: 'var(--text-muted)', fontSize: '0.72rem' }}>Actual Value:</span>
                    <div style={{ fontWeight: 700, color: 'var(--text-primary)', marginTop: '0.15rem' }}>{r.actualValue}</div>
                  </div>
                  <div>
                    <span style={{ color: 'var(--text-muted)', fontSize: '0.72rem' }}>Required Criteria:</span>
                    <div style={{ fontWeight: 600, color: 'var(--text-primary)', marginTop: '0.15rem' }}>{r.requiredValue}</div>
                  </div>
                </div>

                <div style={{ fontSize: '0.8rem', color: 'var(--text-secondary)', lineHeight: 1.5 }}>
                  <strong style={{ color: 'var(--text-primary)' }}>Reason:</strong> {r.reason}
                </div>
              </div>
            ))}
          </div>
        </div>
      )}
    </div>
  );
};
