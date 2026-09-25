import React from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { Award, ShieldCheck, LogOut, Building2, GraduationCap } from 'lucide-react';
import { useAuth } from '../context/AuthContext';

export const Header = () => {
  const { user, isAuthenticated, logout } = useAuth();
  const navigate = useNavigate();

  const handleLogout = () => {
    logout();
    navigate('/');
  };

  return (
    <header className="app-header">
      <div className="container header-inner">
        <Link to="/" className="brand-wrapper">
          <div className="brand-icon">
            <Award size={24} />
          </div>
          <div>
            <div className="brand-title">ONEST Credential Platform</div>
            <div className="brand-subtitle">National Digital Credential Issuance & Verification System</div>
          </div>
        </Link>
        <div style={{ display: 'flex', alignItems: 'center', gap: '1rem' }}>
          {isAuthenticated ? (
            <div style={{ display: 'flex', alignItems: 'center', gap: '0.85rem' }}>
              <div style={{ textAlign: 'right' }}>
                <div style={{ fontSize: '0.875rem', fontWeight: 700, color: 'var(--text-primary)' }}>
                  {user.displayName || user.username}
                </div>
                <div style={{ display: 'flex', alignItems: 'center', gap: '0.25rem', justifyContent: 'flex-end', marginTop: '0.15rem' }}>
                  {user.role === 'ROLE_PROVIDER' ? (
                    <span className="badge badge-info" style={{ fontSize: '0.68rem', padding: '0.15rem 0.5rem' }}>
                      <Building2 size={10} /> Provider Authority
                    </span>
                  ) : (
                    <span className="badge badge-cyan" style={{ fontSize: '0.68rem', padding: '0.15rem 0.5rem' }}>
                      <GraduationCap size={10} /> Verified Seeker
                    </span>
                  )}
                </div>
              </div>
              <button
                onClick={handleLogout}
                className="btn btn-outline"
                style={{ width: 'auto', padding: '0.45rem 0.85rem', fontSize: '0.8125rem' }}
                title="Log out of session"
              >
                <LogOut size={14} /> Logout
              </button>
            </div>
          ) : (
            <span className="badge badge-info">
              <ShieldCheck size={14} /> Open Network for Education & Skilling
            </span>
          )}
        </div>
      </div>
    </header>
  );
};
