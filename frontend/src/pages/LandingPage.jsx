import React from 'react';
import { useNavigate } from 'react-router-dom';
import { HealthStatusCard } from '../components/HealthStatusCard';

export const LandingPage = () => {
  const navigate = useNavigate();

  return (
    <div className="landing-wrapper">
      {/* ============================================================
          HERO SECTION — EDITORIAL SERIF & FLOATING CREDENTIAL CARD
          ============================================================ */}
      <section className="hero-editorial-split">
        {/* Left Column: Typography & Action */}
        <div className="hero-editorial-content">
          <div className="hero-eyebrow">
            <span className="eyebrow-crimson-bar"></span>
            <span>SECURE &nbsp;/&nbsp; TRANSPARENT &nbsp;/&nbsp; TRUSTED</span>
          </div>

          <h1 className="hero-serif-heading">
            Trusted credentials.<br />
            Verifiable achievements.
          </h1>

          <p className="hero-serif-desc">
            Issue, access and verify academic and vocational credentials through a transparent digital credential infrastructure.
          </p>

          <div style={{ marginTop: '2rem' }}>
            <button
              onClick={() => navigate('/provider/login')}
              className="btn btn-hero-wine"
            >
              Get Started &nbsp;&rarr;
            </button>
          </div>
        </div>

        {/* Right Column: Floating Vision & Credential Showcase Card */}
        <div className="hero-credential-preview-wrapper">
          {/* Floating Academic Credential Card */}
          <div className="floating-credential-card">
            <div className="credential-card-accent-spine"></div>
            <div className="credential-card-body" style={{ display: 'flex', flexDirection: 'column', justifyContent: 'space-between' }}>
              <div>
                <div className="credential-card-brand" style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '0.85rem' }}>
                  <span className="brand-onest-sm">ONEST</span>
                  <span style={{
                    fontSize: '0.68rem',
                    fontFamily: 'var(--font-mono)',
                    fontWeight: 700,
                    color: 'var(--status-success-fg)',
                    background: 'var(--status-success-bg)',
                    border: '1px solid var(--status-success-border)',
                    padding: '0.15rem 0.5rem',
                    borderRadius: '12px'
                  }}>
                    ● NETWORK ACTIVE
                  </span>
                </div>

                <div className="credential-card-title" style={{ fontSize: '1.25rem', fontFamily: 'var(--font-serif)', color: 'var(--accent-wine)', fontWeight: 700, lineHeight: 1.35, marginBottom: '0.65rem' }}>
                  From achievement to authentication.
                </div>

                <p style={{ fontSize: '0.85rem', color: 'var(--text-secondary)', lineHeight: 1.6, margin: '0 0 1.25rem 0' }}>
                  Transform academic accomplishments into verifiable digital credentials, accessible whenever they are needed.
                </p>
              </div>

              <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', paddingTop: '0.85rem', borderTop: '1px solid var(--border-wire)', marginTop: 'auto' }}>
                <div style={{
                  fontSize: '0.75rem',
                  fontWeight: 800,
                  letterSpacing: '0.08em',
                  color: 'var(--accent-wine)',
                  fontFamily: 'var(--font-mono)'
                }}>
                  ISSUE &bull; ACCESS &bull; VERIFY
                </div>

                {/* Verified QR Code Graphic */}
                <div className="credential-card-qr-box" style={{ padding: '0.35rem' }} title="Scan to verify credentials">
                  <svg width="48" height="48" viewBox="0 0 24 24" fill="none">
                    {/* Outer Frame */}
                    <rect x="2" y="2" width="7" height="7" rx="1.5" stroke="#111827" strokeWidth="1.8"/>
                    <rect x="4" y="4" width="3" height="3" fill="#111827"/>
                    <rect x="15" y="2" width="7" height="7" rx="1.5" stroke="#111827" strokeWidth="1.8"/>
                    <rect x="17" y="4" width="3" height="3" fill="#111827"/>
                    <rect x="2" y="15" width="7" height="7" rx="1.5" stroke="#111827" strokeWidth="1.8"/>
                    <rect x="4" y="17" width="3" height="3" fill="#111827"/>
                    {/* Data Grid Bits */}
                    <rect x="11" y="4" width="2" height="2" fill="#7A162B"/>
                    <rect x="11" y="8" width="2" height="2" fill="#111827"/>
                    <rect x="15" y="11" width="2" height="2" fill="#111827"/>
                    <rect x="11" y="15" width="2" height="2" fill="#7A162B"/>
                    <rect x="15" y="15" width="3" height="2" fill="#111827"/>
                    <rect x="19" y="15" width="3" height="2" fill="#7A162B"/>
                    <rect x="15" y="19" width="2" height="3" fill="#111827"/>
                    <rect x="19" y="19" width="3" height="3" fill="#111827"/>
                  </svg>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* ============================================================
          SYSTEM CONNECTIVITY & REGISTRY DIAGNOSTICS BANNER
          ============================================================ */}
      <HealthStatusCard />

      {/* ============================================================
          THREE ROLE-BASED ACTION CARDS
          ============================================================ */}
      <div className="role-cards-grid">
        {/* Card 1: Credential Provider (Issuer) */}
        <div className="role-card role-card-provider">
          <div className="role-card-content">
            <div className="role-eyebrow eyebrow-crimson">
              <span className="eyebrow-bullet-bar crimson-bar"></span>
              FOR INSTITUTIONS &amp; ISSUERS
            </div>
            <h2 className="role-title">
              Credential <span className="highlight-wine">Provider</span>
            </h2>
            <p className="role-desc">
              For accredited universities, autonomous colleges, and training institutes to review student requests, validate eligibility criteria, and issue signed digital credentials.
            </p>

            <ul className="role-checklist">
              <li>Review credential requests</li>
              <li>Evaluate 5-rule eligibility</li>
              <li>Issue tamper-proof credentials</li>
            </ul>

            <button
              onClick={() => navigate('/provider/login')}
              className="btn btn-card-wine"
            >
              Open issuer portal &nbsp;&rarr;
            </button>
          </div>
        </div>

        {/* Card 2: Credential Seeker (Student) */}
        <div className="role-card role-card-seeker">
          <div className="role-card-content">
            <div className="role-eyebrow eyebrow-dark">
              <span className="eyebrow-bullet-bar dark-bar"></span>
              FOR STUDENTS &amp; GRADUATES
            </div>
            <h2 className="role-title">Credential Seeker</h2>
            <p className="role-desc">
              For students, graduates, and professionals to track issuance requests, view verified digital certificates, and share cryptographic credentials.
            </p>

            <ul className="role-checklist">
              <li>Track issuance requests</li>
              <li>Access verified credentials</li>
              <li>Download cryptographic QR code</li>
            </ul>

            <button
              onClick={() => navigate('/seeker/login')}
              className="btn btn-card-dark"
            >
              Open student portal &nbsp;&rarr;
            </button>
          </div>
        </div>

        {/* Card 3: Public Verification */}
        <div className="role-card role-card-verify">
          <div className="role-card-content">
            <div className="role-eyebrow eyebrow-dark">
              <span className="eyebrow-bullet-bar dark-bar"></span>
              FOR EMPLOYERS &amp; THIRD PARTIES
            </div>
            <h2 className="role-title">Public Verification</h2>
            <p className="role-desc">
              Instant cryptographic verification for employers, verification agencies, and universities without requiring an account or credentials.
            </p>

            <ul className="role-checklist">
              <li>Verify credential by unique ID</li>
              <li>Validate SHA-256 signature</li>
              <li>Instant tamper detection</li>
            </ul>

            <button
              onClick={() => navigate('/verify')}
              className="btn btn-card-dark"
            >
              Verify a credential &nbsp;&rarr;
            </button>
          </div>
        </div>
      </div>
    </div>
  );
};
