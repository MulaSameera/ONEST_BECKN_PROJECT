import React, { useState } from 'react';
import { Link, useNavigate, useLocation } from 'react-router-dom';
import { Building2, ArrowLeft, Lock, AlertCircle, Key } from 'lucide-react';
import { useAuth } from '../context/AuthContext';

export const ProviderLoginPage = () => {
  const [username, setUsername] = useState('');
  const [password, setPassword] = useState('');
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState(null);

  const { loginProvider } = useAuth();
  const navigate = useNavigate();
  const location = useLocation();

  const from = location.state?.from?.pathname || '/provider/dashboard';

  const handleSubmit = async (e) => {
    e.preventDefault();
    if (!username.trim() || !password.trim()) {
      setError('Please provide both Issuer ID and Password');
      return;
    }

    if (password.trim().length < 6) {
      setError('Password must be at least 6 characters');
      return;
    }

    setLoading(true);
    setError(null);

    try {
      await loginProvider(username.trim(), password);
      navigate(from, { replace: true });
    } catch (err) {
      setError(err.message || 'Authentication failed. Please verify your credentials.');
    } finally {
      setLoading(false);
    }
  };

  const setQuickCreds = (user, pass) => {
    setUsername(user);
    setPassword(pass);
    setError(null);
  };

  return (
    <div className="health-card" style={{ maxWidth: '480px', margin: '3rem auto', padding: '2.5rem' }}>
      <Link to="/" style={{ display: 'inline-flex', alignItems: 'center', gap: '0.5rem', fontSize: '0.85rem', color: 'var(--text-secondary)', marginBottom: '1.5rem', transition: 'color 150ms' }}>
        <ArrowLeft size={16} /> Back to Portals
      </Link>

      <div style={{ display: 'flex', alignItems: 'center', gap: '0.85rem', marginBottom: '1.75rem' }}>
        <div className="portal-icon-wrapper portal-icon-provider" style={{ width: '3rem', height: '3rem', marginBottom: 0 }}>
          <Building2 size={24} />
        </div>
        <div>
          <h2 style={{ fontSize: '1.4rem', fontWeight: 800, color: 'var(--text-primary)', letterSpacing: '-0.02em' }}>Provider Authentication</h2>
          <p style={{ fontSize: '0.8125rem', color: 'var(--text-secondary)' }}>Issuing Institutions &amp; Universities</p>
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
            Issuer ID / Institution Code
          </label>
          <input
            type="text"
            required
            value={username}
            onChange={(e) => setUsername(e.target.value)}
            placeholder="e.g. ISSUER-001 or INST-001"
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
            minLength={6}
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            placeholder="••••••••"
            style={{ width: '100%', padding: '0.7rem 0.9rem', borderRadius: '0.5rem', fontSize: '0.9375rem' }}
          />
        </div>

        <button
          type="submit"
          disabled={loading}
          className="btn btn-primary"
          style={{ marginTop: '0.5rem' }}
        >
          <Lock size={16} />
          {loading ? 'Authenticating...' : 'Authenticate Provider'}
        </button>
      </form>

      {/* Quick Access Credentials */}
      <div style={{ marginTop: '2rem', paddingTop: '1.25rem', borderTop: '1px solid var(--border)' }}>
        <div style={{ fontSize: '0.72rem', fontWeight: 700, color: 'var(--cyan)', textTransform: 'uppercase', letterSpacing: '0.06em', marginBottom: '0.6rem', display: 'flex', alignItems: 'center', gap: '0.35rem' }}>
          <Key size={12} /> Sample Authorized Profiles
        </div>
        <div style={{ display: 'flex', gap: '0.5rem', flexWrap: 'wrap' }}>
          <button
            type="button"
            onClick={() => setQuickCreds('ISSUER-001', 'password123')}
            className="btn btn-outline"
            style={{ width: 'auto', fontSize: '0.75rem', padding: '0.35rem 0.65rem' }}
          >
            ISSUER-001 / password123
          </button>
          <button
            type="button"
            onClick={() => setQuickCreds('INST-001', 'admin123')}
            className="btn btn-outline"
            style={{ width: 'auto', fontSize: '0.75rem', padding: '0.35rem 0.65rem' }}
          >
            INST-001 / admin123
          </button>
        </div>
      </div>
    </div>
  );
};
