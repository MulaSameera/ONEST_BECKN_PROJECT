import React from 'react';
import { Navigate, useLocation } from 'react-router-dom';
import { useAuth } from '../context/AuthContext';
import { ShieldAlert } from 'lucide-react';

export const ProtectedRoute = ({ children, requiredRole }) => {
  const { user, loading, isAuthenticated } = useAuth();
  const location = useLocation();

  if (loading) {
    return (
      <div style={{ padding: '4rem 0', textAlign: 'center', color: 'var(--text-secondary)' }}>
        <div style={{ fontSize: '1rem', fontWeight: 600 }}>Verifying session authentication...</div>
      </div>
    );
  }

  if (!isAuthenticated) {
    const redirectPath = requiredRole === 'ROLE_PROVIDER' ? '/provider/login' : '/seeker/login';
    return <Navigate to={redirectPath} state={{ from: location }} replace />;
  }

  if (requiredRole && user.role !== requiredRole) {
    return (
      <div className="health-card" style={{ maxWidth: '500px', margin: '3rem auto', padding: '2.5rem', border: '1px solid var(--danger-border)', background: 'var(--danger-bg)' }}>
        <div style={{ display: 'flex', alignItems: 'center', gap: '0.6rem', marginBottom: '0.75rem' }}>
          <ShieldAlert size={24} color="var(--danger)" />
          <h3 style={{ color: '#f87171', fontSize: '1.25rem', fontWeight: 800, margin: 0 }}>Access Denied (HTTP 403)</h3>
        </div>
        <p style={{ color: 'var(--text-secondary)', fontSize: '0.9rem', lineHeight: 1.6 }}>
          Your account role (<strong>{user.role}</strong>) does not have permission to access this portal.
        </p>
      </div>
    );
  }

  return children;
};
