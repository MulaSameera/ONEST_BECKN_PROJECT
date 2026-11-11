import React from 'react';
import { Link, useLocation, useNavigate } from 'react-router-dom';
import { useAuth } from '../context/AuthContext';

export const Header = () => {
  const { user, isAuthenticated, logout } = useAuth();
  const navigate = useNavigate();
  const location = useLocation();

  const handleLogout = () => {
    logout();
    navigate('/');
  };

  const isHome = location.pathname === '/';
  const isIssuer = location.pathname.startsWith('/provider');
  const isStudent = location.pathname.startsWith('/seeker');
  const isVerify = location.pathname.startsWith('/verify');

  return (
    <header className="app-header">
      <div className="container header-inner">
        {/* Brand Logo & Subtitle */}
        <Link to="/" className="brand-wrapper">
          <div className="brand-logo-mark">
            <span className="brand-onest">ONEST</span>
          </div>
          <div className="brand-divider"></div>
          <div>
            <div className="brand-title">Digital Credential Platform</div>
            <div className="brand-subtitle">Education &amp; Skilling Ecosystem</div>
          </div>
        </Link>

        {/* Center Navigation Links */}
        <nav className="header-nav" aria-label="Main Navigation">
          <Link to="/" className={`nav-link ${isHome ? 'active' : ''}`}>
            Home
          </Link>
          <Link
            to={isAuthenticated && user?.role === 'ROLE_PROVIDER' ? '/provider' : '/provider/login'}
            className={`nav-link ${isIssuer ? 'active' : ''}`}
          >
            Issuer Portal
          </Link>
          <Link
            to={isAuthenticated && user?.role === 'ROLE_SEEKER' ? '/seeker' : '/seeker/login'}
            className={`nav-link ${isStudent ? 'active' : ''}`}
          >
            Student Portal
          </Link>
          <Link to="/verify" className={`nav-link ${isVerify ? 'active' : ''}`}>
            Verification
          </Link>
        </nav>

        {/* Right Status / Auth Section */}
        <div className="header-right">
          {isAuthenticated ? (
            <div style={{ display: 'flex', alignItems: 'center', gap: '0.85rem' }}>
              <div style={{ textAlign: 'right' }}>
                <div style={{ fontSize: '0.8125rem', fontWeight: 700, color: 'var(--text-primary)' }}>
                  {user.displayName || user.username}
                </div>
                <div style={{ display: 'flex', alignItems: 'center', gap: '0.25rem', justifyContent: 'flex-end', marginTop: '0.1rem' }}>
                  {user.role === 'ROLE_PROVIDER' ? (
                    <span className="badge badge-wine" style={{ fontSize: '0.65rem', padding: '0.12rem 0.45rem' }}>
                      Issuer Authority
                    </span>
                  ) : (
                    <span className="badge badge-dark" style={{ fontSize: '0.65rem', padding: '0.12rem 0.45rem' }}>
                      Verified Student
                    </span>
                  )}
                </div>
              </div>
              <button
                onClick={handleLogout}
                className="btn btn-outline"
                style={{ padding: '0.35rem 0.75rem', fontSize: '0.75rem' }}
                title="Log out of session"
              >
                Logout
              </button>
            </div>
          ) : (
            <div className="network-status-pill">
              <span className="network-dot"></span>
              <span className="network-label">ONEST Network</span>
              <span className="network-chevron">▾</span>
            </div>
          )}
        </div>
      </div>
    </header>
  );
};
