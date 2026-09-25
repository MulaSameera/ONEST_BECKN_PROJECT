import React, { useState } from 'react';
import { Link, useNavigate, useLocation } from 'react-router-dom';
import { GraduationCap, ArrowLeft, Lock, AlertCircle, Key } from 'lucide-react';
import { useAuth } from '../context/AuthContext';

export const SeekerLoginPage = () => {
  const [identifier, setIdentifier] = useState('');
  const [password, setPassword] = useState('');
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState(null);

  const { loginSeeker } = useAuth();
  const navigate = useNavigate();
  const location = useLocation();

  const from = location.state?.from?.pathname || '/seeker/dashboard';

  const handleSubmit = async (e) => {
    e.preventDefault();
    if (!identifier.trim() || !password.trim()) {
      setError('Please provide both Seeker / Student ID and Password');
      return;
    }

    setLoading(true);
    setError(null);

    try {
      await loginSeeker(identifier.trim(), password);
      navigate(from, { replace: true });
    } catch (err) {
      setError(err.message || 'Authentication failed. Student record not found or invalid.');
    } finally {
      setLoading(false);
    }
  };

  const setQuickCreds = (id, pass) => {
    setIdentifier(id);
    setPassword(pass);
    setError(null);
  };

  return (
    <div className="health-card" style={{ maxWidth: '480px', margin: '3rem auto', padding: '2.5rem' }}>
      <Link to="/" style={{ display: 'inline-flex', alignItems: 'center', gap: '0.5rem', fontSize: '0.85rem', color: 'var(--text-secondary)', marginBottom: '1.5rem', transition: 'color 150ms' }}>
        <ArrowLeft size={16} /> Back to Portals
      </Link>

      <div style={{ display: 'flex', alignItems: 'center', gap: '0.85rem', marginBottom: '1.75rem' }}>
        <div className="portal-icon-wrapper portal-icon-seeker" style={{ width: '3rem', height: '3rem', marginBottom: 0 }}>
          <GraduationCap size={24} />
        </div>
        <div>
          <h2 style={{ fontSize: '1.4rem', fontWeight: 800, color: 'var(--text-primary)', letterSpacing: '-0.02em' }}>Seeker Authentication</h2>
          <p style={{ fontSize: '0.8125rem', color: 'var(--text-secondary)' }}>Students & Credential Recipients</p>
        </div>
      </div>

      {error && (
        <div style={{ display: 'flex', alignItems: 'center', gap: '0.5rem', padding: '0.75rem 1rem', background: 'var(--danger-bg)', border: '1px solid var(--danger-border)', borderRadius: '0.5rem', color: '#f87171', fontSize: '0.875rem', marginBottom: '1.25rem' }}>
          <AlertCircle size={16} style={{ flexShrink: 0 }} />
          <span>{error}</span>
        </div>
      )}

      <form onSubmit={handleSubmit} style={{ display: 'flex', flexDirection: 'column', gap: '1.25rem' }}>
        <div>
          <label style={{ display: 'block', fontSize: '0.8125rem', fontWeight: 600, color: 'var(--text-secondary)', marginBottom: '0.4rem' }}>
            Seeker ID / Student ID
          </label>
          <input
            type="text"
            required
            value={identifier}
            onChange={(e) => setIdentifier(e.target.value)}
            placeholder="e.g. SEEKER-000001 or STU-000001"
            style={{ width: '100%', padding: '0.7rem 0.9rem', borderRadius: '0.5rem', fontSize: '0.9375rem' }}
          />
        </div>

        <div>
          <label style={{ display: 'block', fontSize: '0.8125rem', fontWeight: 600, color: 'var(--text-secondary)', marginBottom: '0.4rem' }}>
            Password
          </label>
          <input
            type="password"
            required
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            placeholder="••••••••"
            style={{ width: '100%', padding: '0.7rem 0.9rem', borderRadius: '0.5rem', fontSize: '0.9375rem' }}
          />
        </div>

        <button
          type="submit"
          disabled={loading}
          className="btn btn-secondary"
          style={{ marginTop: '0.5rem' }}
        >
          <Lock size={16} />
          {loading ? 'Authenticating & Generating JWT...' : 'Authenticate Seeker'}
        </button>
      </form>

      {/* Quick Test Demo Credentials */}
      <div style={{ marginTop: '2rem', paddingTop: '1.25rem', borderTop: '1px solid var(--border)' }}>
        <div style={{ fontSize: '0.72rem', fontWeight: 700, color: 'var(--cyan)', textTransform: 'uppercase', letterSpacing: '0.06em', marginBottom: '0.6rem', display: 'flex', alignItems: 'center', gap: '0.35rem' }}>
          <Key size={12} /> Test Credentials (from PostgreSQL dataset)
        </div>
        <div style={{ display: 'flex', gap: '0.5rem', flexWrap: 'wrap' }}>
          <button
            type="button"
            onClick={() => setQuickCreds('SEEKER-000001', 'student123')}
            className="btn btn-outline"
            style={{ width: 'auto', fontSize: '0.75rem', padding: '0.35rem 0.65rem' }}
          >
            SEEKER-000001 / student123
          </button>
          <button
            type="button"
            onClick={() => setQuickCreds('STU-000001', 'student123')}
            className="btn btn-outline"
            style={{ width: 'auto', fontSize: '0.75rem', padding: '0.35rem 0.65rem' }}
          >
            STU-000001 / student123
          </button>
        </div>
      </div>
    </div>
  );
};
