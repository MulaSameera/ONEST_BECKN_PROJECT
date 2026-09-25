import React from 'react';
import { Link } from 'react-router-dom';
import { Building2, ArrowLeft } from 'lucide-react';

export const ProviderLoginPlaceholder = () => {
  return (
    <div style={{ maxWidth: '480px', margin: '3rem auto', background: '#fff', padding: '2rem', borderRadius: '0.75rem', border: '1px solid #e2e8f0', boxShadow: 'var(--shadow-sm)' }}>
      <Link to="/" style={{ display: 'inline-flex', alignItems: 'center', gap: '0.5rem', fontSize: '0.875rem', color: '#64748b', marginBottom: '1.5rem' }}>
        <ArrowLeft size={16} /> Back to Portals
      </Link>
      <div style={{ display: 'flex', alignItems: 'center', gap: '0.75rem', marginBottom: '1rem' }}>
        <div className="brand-icon" style={{ background: '#1e3a8a' }}>
          <Building2 size={20} />
        </div>
        <div>
          <h2 style={{ fontSize: '1.25rem', fontWeight: 700 }}>Credential Provider Login</h2>
          <p style={{ fontSize: '0.8125rem', color: '#64748b' }}>Authorized Academic & Institutional Issuers</p>
        </div>
      </div>
      <div style={{ padding: '1rem', background: '#eff6ff', borderRadius: '0.5rem', border: '1px solid #bfdbfe', fontSize: '0.875rem', color: '#1e3a8a', marginBottom: '1.5rem' }}>
        <strong>Phase 1 Foundation Active:</strong> Full Spring Security & JWT Authentication for Providers will be wired in Phase 2.
      </div>
      <div style={{ display: 'flex', flexDirection: 'column', gap: '1rem' }}>
        <div>
          <label style={{ display: 'block', fontSize: '0.8125rem', fontWeight: 600, marginBottom: '0.35rem' }}>Issuer ID / Username</label>
          <input
            type="text"
            placeholder="e.g. ISSUER-001"
            disabled
            style={{ width: '100%', padding: '0.625rem 0.75rem', borderRadius: '0.375rem', border: '1px solid #cbd5e1', background: '#f8fafc' }}
          />
        </div>
        <div>
          <label style={{ display: 'block', fontSize: '0.8125rem', fontWeight: 600, marginBottom: '0.35rem' }}>Password</label>
          <input
            type="password"
            placeholder="••••••••"
            disabled
            style={{ width: '100%', padding: '0.625rem 0.75rem', borderRadius: '0.375rem', border: '1px solid #cbd5e1', background: '#f8fafc' }}
          />
        </div>
        <button className="btn btn-primary" disabled style={{ opacity: 0.7, cursor: 'not-allowed' }}>
          Provider Login (Available in Phase 2)
        </button>
      </div>
    </div>
  );
};
