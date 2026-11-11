import React, { useState } from 'react';
import { Link, useNavigate, useLocation } from 'react-router-dom';
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

    if (password.trim().length < 8) {
      setError('Password must be at least 8 characters in length');
      return;
    }

    const specialCharRegex = /[!@#$%^&*(),.?":{}|<>_\-+=\[\]\\\/`~]/;
    if (!specialCharRegex.test(password)) {
      setError('Password must contain at least one special character (!@#$%^&*...)');
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
    <div style={{ maxWidth: '460px', margin: '3.5rem auto 4.5rem' }}>
      <Link to="/" style={{ display: 'inline-flex', alignItems: 'center', gap: '0.4rem', fontSize: '0.85rem', color: 'var(--text-secondary)', textDecoration: 'none', marginBottom: '1.5rem', fontWeight: 500 }}>
        &larr; Back to Platform Home
      </Link>

      <div className="floating-credential-card" style={{ maxWidth: '100%', transform: 'none' }}>
        <div className="credential-card-accent-spine" style={{ width: '8px', background: '#1C1917' }}></div>
        <div className="credential-card-body" style={{ padding: '2.25rem' }}>
          <div className="hero-eyebrow" style={{ marginBottom: '0.75rem' }}>
            <span className="eyebrow-crimson-bar" style={{ background: '#1C1917' }}></span>
            <span style={{ color: '#4B5563' }}>LEARNER ACCESS</span>
          </div>

          <h2 className="hero-serif-heading" style={{ fontSize: '1.85rem', marginBottom: '0.35rem' }}>
            Student Portal Login
          </h2>
          <p style={{ fontSize: '0.825rem', color: 'var(--text-secondary)', marginBottom: '1.75rem' }}>
            Graduates, enrolled students, and credential recipients.
          </p>

          {error && (
            <div style={{ padding: '0.85rem 1rem', background: 'var(--status-error-bg)', border: '1px solid var(--status-error-border)', borderRadius: '6px', color: 'var(--status-error-fg)', fontSize: '0.8125rem', marginBottom: '1.5rem', fontFamily: 'var(--font-mono)' }}>
              [AUTH ERROR] {error}
            </div>
          )}

          <form onSubmit={handleSubmit} style={{ display: 'flex', flexDirection: 'column', gap: '1.25rem' }}>
            <div>
              <label style={{ display: 'block', fontSize: '0.75rem', fontWeight: 700, color: '#374151', marginBottom: '0.4rem', textTransform: 'uppercase', letterSpacing: '0.04em' }}>
                Seeker ID / Student ID
              </label>
              <input
                type="text"
                required
                value={identifier}
                onChange={(e) => setIdentifier(e.target.value)}
                placeholder="e.g. A23126510162 or SEEKER-A23126510162"
                style={{ width: '100%', padding: '0.75rem 0.95rem', borderRadius: '6px', border: '1px solid var(--border-wire)', fontSize: '0.9rem', outline: 'none', fontFamily: 'var(--font-mono)' }}
              />
            </div>

            <div>
              <label style={{ display: 'block', fontSize: '0.75rem', fontWeight: 700, color: '#374151', marginBottom: '0.4rem', textTransform: 'uppercase', letterSpacing: '0.04em' }}>
                Password <span style={{ fontSize: '0.72rem', color: 'var(--text-muted)', textTransform: 'none', fontWeight: 400 }}>(Min 8 chars, 1 special char)</span>
              </label>
              <input
                type="password"
                required
                minLength={8}
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                placeholder="••••••••"
                style={{ width: '100%', padding: '0.75rem 0.95rem', borderRadius: '6px', border: '1px solid var(--border-wire)', fontSize: '0.9rem', outline: 'none' }}
              />
            </div>

            <button
              type="submit"
              disabled={loading}
              className="btn btn-card-dark"
              style={{ width: '100%', marginTop: '0.5rem', padding: '0.85rem', justifyContent: 'center' }}
            >
              {loading ? 'Authenticating Student...' : 'Sign In as Student \u2192'}
            </button>
          </form>

          {/* Quick Access Credentials */}
          <div style={{ marginTop: '2rem', paddingTop: '1.25rem', borderTop: '1px solid var(--border-wire)' }}>
            <div style={{ fontSize: '0.7rem', fontWeight: 700, color: 'var(--text-muted)', textTransform: 'uppercase', letterSpacing: '0.06em', marginBottom: '0.65rem' }}>
              Authorized Demonstration Students:
            </div>
            <div style={{ display: 'flex', gap: '0.5rem', flexWrap: 'wrap' }}>
              <button
                type="button"
                onClick={() => setQuickCreds('A23126510162', 'Password@123')}
                className="btn btn-outline"
                style={{ width: 'auto', fontSize: '0.75rem', padding: '0.35rem 0.65rem', borderRadius: '4px' }}
              >
                A23126510162 (Sameera)
              </button>
              <button
                type="button"
                onClick={() => setQuickCreds('A23126510182', 'Password@123')}
                className="btn btn-outline"
                style={{ width: 'auto', fontSize: '0.75rem', padding: '0.35rem 0.65rem', borderRadius: '4px' }}
              >
                A23126510182 (Padmakshi)
              </button>
              <button
                type="button"
                onClick={() => setQuickCreds('A23126510177', 'Password@123')}
                className="btn btn-outline"
                style={{ width: 'auto', fontSize: '0.75rem', padding: '0.35rem 0.65rem', borderRadius: '4px' }}
              >
                A23126510177 (Jaswanth)
              </button>
              <button
                type="button"
                onClick={() => setQuickCreds('A23126510132', 'Password@123')}
                className="btn btn-outline"
                style={{ width: 'auto', fontSize: '0.75rem', padding: '0.35rem 0.65rem', borderRadius: '4px' }}
              >
                A23126510132 (Kartheek)
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};
