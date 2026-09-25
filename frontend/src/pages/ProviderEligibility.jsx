import React, { useState } from 'react';
import { useAuth } from '../context/AuthContext';
import { eligibilityApi } from '../services/api';
import { CheckCircle2, XCircle, Search, AlertCircle, Sparkles, ShieldCheck } from 'lucide-react';

export const ProviderEligibility = () => {
  const { user } = useAuth();
  const [studentId, setStudentId] = useState('STU-000001');
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
        user?.institutionId || 'INST-001',
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
      <div style={{ marginBottom: '2rem' }}>
        <div style={{ display: 'flex', alignItems: 'center', gap: '0.6rem', marginBottom: '0.4rem' }}>
          <span className="badge badge-info"><Sparkles size={12} /> Automated Logic</span>
          <span className="badge badge-success"><ShieldCheck size={12} /> 5 Project-Defined Rules</span>
        </div>
        <h2 style={{ fontSize: '1.5rem', fontWeight: 800, color: 'var(--text-primary)', letterSpacing: '-0.02em' }}>
          Explainable Eligibility Verification Engine
        </h2>
        <p style={{ color: 'var(--text-secondary)', fontSize: '0.875rem' }}>
          Real-time deterministic rule engine evaluating candidate attendance, score thresholds, completion status, and course timeline validity.
        </p>
      </div>

      {/* Input Search Form */}
      <div className="health-card" style={{ padding: '1.75rem', marginBottom: '2rem' }}>
        <form onSubmit={handleCheck} style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(220px, 1fr)) 160px', gap: '1rem', alignItems: 'flex-end' }}>
          <div>
            <label style={{ display: 'block', fontSize: '0.8125rem', fontWeight: 600, color: 'var(--text-secondary)', marginBottom: '0.4rem' }}>
              Student ID
            </label>
            <input
              type="text"
              required
              value={studentId}
              onChange={(e) => setStudentId(e.target.value)}
              placeholder="e.g. STU-000001"
              style={{ width: '100%', padding: '0.7rem 0.9rem', borderRadius: '0.5rem', fontSize: '0.9rem' }}
            />
          </div>

          <div>
            <label style={{ display: 'block', fontSize: '0.8125rem', fontWeight: 600, color: 'var(--text-secondary)', marginBottom: '0.4rem' }}>
              Course Code (Optional)
            </label>
            <input
              type="text"
              value={courseCode}
              onChange={(e) => setCourseCode(e.target.value)}
              placeholder="e.g. CRS-001 (Auto-matches if empty)"
              style={{ width: '100%', padding: '0.7rem 0.9rem', borderRadius: '0.5rem', fontSize: '0.9rem' }}
            />
          </div>

          <button type="submit" disabled={loading} className="btn btn-primary" style={{ height: '42px' }}>
            <Search size={16} /> {loading ? 'Evaluating...' : 'Evaluate Rules'}
          </button>
        </form>

        <div style={{ marginTop: '0.85rem', display: 'flex', gap: '0.6rem', alignItems: 'center', fontSize: '0.75rem', color: 'var(--text-secondary)' }}>
          <span>Quick Test IDs:</span>
          <button type="button" onClick={() => setStudentId('STU-000001')} style={{ color: 'var(--cyan)', textDecoration: 'underline' }}>STU-000001</button>
          <button type="button" onClick={() => setStudentId('STU-000002')} style={{ color: 'var(--cyan)', textDecoration: 'underline' }}>STU-000002</button>
          <button type="button" onClick={() => setStudentId('STU-000003')} style={{ color: 'var(--cyan)', textDecoration: 'underline' }}>STU-000003</button>
        </div>
      </div>

      {error && (
        <div style={{ display: 'flex', alignItems: 'center', gap: '0.5rem', padding: '1rem', background: 'var(--danger-bg)', border: '1px solid var(--danger-border)', borderRadius: '0.5rem', color: '#f87171', marginBottom: '2rem' }}>
          <AlertCircle size={18} /> {error}
        </div>
      )}

      {/* Results View */}
      {result && (
        <div>
          {/* Header Outcome Banner */}
          <div
            style={{
              padding: '1.75rem',
              borderRadius: '0.875rem',
              border: '1px solid',
              borderColor: result.eligible ? 'var(--success-border)' : 'var(--danger-border)',
              background: result.eligible ? 'rgba(34, 197, 94, 0.12)' : 'rgba(239, 68, 68, 0.12)',
              marginBottom: '2rem',
              display: 'flex',
              alignItems: 'center',
              justifyContent: 'space-between',
              flexWrap: 'wrap',
              gap: '1.25rem',
              backdropFilter: 'blur(12px)',
            }}
          >
            <div>
              <div style={{ display: 'flex', alignItems: 'center', gap: '0.6rem', marginBottom: '0.35rem' }}>
                {result.eligible ? <CheckCircle2 size={26} color="var(--success)" /> : <XCircle size={26} color="var(--danger)" />}
                <h3 style={{ fontSize: '1.35rem', fontWeight: 800, color: result.eligible ? '#4ade80' : '#f87171' }}>
                  OVERALL RESULT: {result.overallResult}
                </h3>
              </div>
              <p style={{ fontSize: '0.9rem', color: result.eligible ? '#86efac' : '#fca5a5' }}>
                {result.summaryText}
              </p>
            </div>
            <div style={{ textAlign: 'right', fontSize: '0.85rem', color: 'var(--text-secondary)' }}>
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
                  padding: '1.5rem',
                  marginBottom: 0,
                  borderLeft: `4px solid ${r.passed ? 'var(--success)' : 'var(--danger)'}`,
                }}
              >
                <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start', marginBottom: '0.85rem' }}>
                  <h4 style={{ fontSize: '0.95rem', fontWeight: 700, color: 'var(--text-primary)' }}>{r.ruleName}</h4>
                  <span className={`badge ${r.passed ? 'badge-success' : 'badge-danger'}`}>
                    {r.passed ? 'PASS' : 'FAIL'}
                  </span>
                </div>

                <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '0.5rem', fontSize: '0.8125rem', marginBottom: '0.85rem', background: 'rgba(8, 18, 32, 0.6)', padding: '0.6rem 0.85rem', borderRadius: '0.45rem', border: '1px solid var(--border)' }}>
                  <div>
                    <span style={{ color: 'var(--text-secondary)' }}>Actual Value:</span>
                    <div style={{ fontWeight: 700, color: 'var(--text-primary)', marginTop: '0.15rem' }}>{r.actualValue}</div>
                  </div>
                  <div>
                    <span style={{ color: 'var(--text-secondary)' }}>Required Criteria:</span>
                    <div style={{ fontWeight: 600, color: 'var(--cyan)', marginTop: '0.15rem' }}>{r.requiredValue}</div>
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
