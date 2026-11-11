import React from 'react';

export const Footer = () => {
  return (
    <footer className="app-footer">
      <div className="container footer-inner">
        <div className="footer-brand">
          <span className="brand-onest" style={{ fontSize: '1rem', marginRight: '0.4rem' }}>ONEST</span>
          <span className="footer-title">Digital Credential Platform</span>
        </div>
        <div className="footer-tagline">
          Building trust in education. Empowering futures.
        </div>
      </div>
    </footer>
  );
};
