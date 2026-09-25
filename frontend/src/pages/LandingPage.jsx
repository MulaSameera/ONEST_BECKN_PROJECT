import React from 'react';
import { useNavigate } from 'react-router-dom';
import { Building2, GraduationCap, QrCode, ArrowRight, ShieldCheck, CheckCircle2 } from 'lucide-react';
import { HealthStatusCard } from '../components/HealthStatusCard';

export const LandingPage = () => {
  const navigate = useNavigate();

  return (
    <div>
      {/* Hero Section */}
      <section className="hero-section">
        <div className="hero-tag">
          <ShieldCheck size={16} /> ONEST Ecosystem Standard &bull; Tamper-Proof Credentials
        </div>
        <h1 className="hero-title">
          National Digital Credential <span>Issuance & Verification</span>
        </h1>
        <p className="hero-description">
          A secure, explainable, and production-grade platform built on Spring Boot, PostgreSQL, and SHA-256 integrity checks for verified academic & vocational credentials.
        </p>
      </section>

      {/* System Health Check Component */}
      <HealthStatusCard />

      {/* Portals Selection Grid (Requirement 8) */}
      <div className="portals-grid">
        {/* Credential Provider Portal */}
        <div className="portal-card">
          <div>
            <div className="portal-icon-wrapper portal-icon-provider">
              <Building2 size={28} />
            </div>
            <h2 className="portal-title">Credential Provider</h2>
            <p className="portal-desc">
              For accredited universities, training institutes, and issuers to review student requests, run automated explainable eligibility rules, and issue tamper-evident credentials.
            </p>
            <ul className="portal-features">
              <li>
                <CheckCircle2 size={16} /> Student & Institution Validation
              </li>
              <li>
                <CheckCircle2 size={16} /> 5-Rule Explainable Eligibility Engine
              </li>
              <li>
                <CheckCircle2 size={16} /> Deterministic Canonical SHA-256 Hashing
              </li>
              <li>
                <CheckCircle2 size={16} /> Batch Issuance & QR Generation
              </li>
            </ul>
          </div>
          <button
            onClick={() => navigate('/provider/login')}
            className="btn btn-primary"
          >
            Enter Provider Portal <ArrowRight size={18} />
          </button>
        </div>

        {/* Credential Seeker Portal */}
        <div className="portal-card">
          <div>
            <div className="portal-icon-wrapper portal-icon-seeker">
              <GraduationCap size={28} />
            </div>
            <h2 className="portal-title">Credential Seeker</h2>
            <p className="portal-desc">
              For students, graduates, and professionals to request credentials, view their academic transcripts, and download cryptographic QR codes.
            </p>
            <ul className="portal-features">
              <li>
                <CheckCircle2 size={16} /> View Enrolled Courses & Scores
              </li>
              <li>
                <CheckCircle2 size={16} /> Track Credential Request Status
              </li>
              <li>
                <CheckCircle2 size={16} /> Access Issued Digital Certificates
              </li>
              <li>
                <CheckCircle2 size={16} /> Share Instant Verification QR Codes
              </li>
            </ul>
          </div>
          <button
            onClick={() => navigate('/seeker/login')}
            className="btn btn-secondary"
          >
            Enter Seeker Portal <ArrowRight size={18} />
          </button>
        </div>

        {/* Public Verifier */}
        <div className="portal-card">
          <div>
            <div className="portal-icon-wrapper portal-icon-verifier">
              <QrCode size={28} />
            </div>
            <h2 className="portal-title">Public Verification</h2>
            <p className="portal-desc">
              Instant verification for employers, verification agencies, and third parties without requiring an account or login.
            </p>
            <ul className="portal-features">
              <li>
                <CheckCircle2 size={16} /> Instant Credential ID Lookup
              </li>
              <li>
                <CheckCircle2 size={16} /> Camera / Image QR Code Scanner
              </li>
              <li>
                <CheckCircle2 size={16} /> Real-Time SHA-256 Hash Recheck
              </li>
              <li>
                <CheckCircle2 size={16} /> Tamper & Revocation Detection
              </li>
            </ul>
          </div>
          <button
            onClick={() => navigate('/verify')}
            className="btn btn-outline"
          >
            Verify a Credential <ArrowRight size={18} />
          </button>
        </div>
      </div>
    </div>
  );
};
