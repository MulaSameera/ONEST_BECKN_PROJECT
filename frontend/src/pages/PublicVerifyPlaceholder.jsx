import React from 'react';
import { Link } from 'react-router-dom';
import { QrCode, ArrowLeft, Search } from 'lucide-react';

export const PublicVerifyPlaceholder = () => {
  return (
    <div style={{ maxWidth: '640px', margin: '3rem auto', background: '#fff', padding: '2.5rem', borderRadius: '0.75rem', border: '1px solid #e2e8f0', boxShadow: 'var(--shadow-sm)' }}>
      <Link to="/" style={{ display: 'inline-flex', alignItems: 'center', gap: '0.5rem', fontSize: '0.875rem', color: '#64748b', marginBottom: '1.5rem' }}>
        <ArrowLeft size={16} /> Back to Portals
      </Link>
      <div style={{ display: 'flex', alignItems: 'center', gap: '0.75rem', marginBottom: '1.5rem' }}>
        <div className="brand-icon" style={{ background: '#7e22ce' }}>
          <QrCode size={22} />
        </div>
        <div>
          <h2 style={{ fontSize: '1.5rem', fontWeight: 700 }}>Public Credential Verification</h2>
          <p style={{ fontSize: '0.875rem', color: '#64748b' }}>Deterministic SHA-256 Tamper Verification Engine</p>
        </div>
      </div>
      <div style={{ padding: '1rem', background: '#faf5ff', borderRadius: '0.5rem', border: '1px solid #e9d5ff', fontSize: '0.875rem', color: '#6b21a8', marginBottom: '1.5rem' }}>
        <strong>Phase 1 Foundation Active:</strong> Full cryptographic verification endpoint, hash reconstruction, and QR decoding will be wired in Phase 6.
      </div>
      <div style={{ display: 'flex', gap: '0.5rem', marginBottom: '1rem' }}>
        <input
          type="text"
          placeholder="Enter Credential ID (e.g. ONEST-CRED-00000001)"
          disabled
          style={{ flex: 1, padding: '0.75rem 1rem', borderRadius: '0.375rem', border: '1px solid #cbd5e1', background: '#f8fafc' }}
        />
        <button className="btn btn-primary" disabled style={{ width: 'auto', opacity: 0.7, cursor: 'not-allowed' }}>
          <Search size={16} /> Verify
        </button>
      </div>
    </div>
  );
};
