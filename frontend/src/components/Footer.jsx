import React from 'react';
import { ShieldCheck, Lock } from 'lucide-react';

export const Footer = () => {
  return (
    <footer className="app-footer">
      <div className="container" style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', flexWrap: 'wrap', gap: '1.25rem' }}>
        <div style={{ display: 'flex', alignItems: 'center', gap: '0.6rem' }}>
          <ShieldCheck size={18} color="var(--cyan)" />
          <span>
            <strong style={{ color: 'var(--text-primary)' }}>ONEST Digital Credential Infrastructure</strong> &bull; Java Spring Boot &bull; PostgreSQL &bull; React
          </span>
        </div>
        <div style={{ display: 'flex', alignItems: 'center', gap: '0.5rem', color: 'var(--text-secondary)' }}>
          <Lock size={14} color="var(--primary)" />
          <span>Deterministic SHA-256 Cryptographic Verification Engine</span>
        </div>
      </div>
    </footer>
  );
};
