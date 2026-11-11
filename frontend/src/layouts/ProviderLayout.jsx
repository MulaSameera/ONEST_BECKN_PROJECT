import React from 'react';
import { NavLink, Outlet } from 'react-router-dom';

export const ProviderLayout = () => {
  const navItems = [
    { to: '/provider/dashboard', label: 'Dashboard' },
    { to: '/provider/requests', label: 'Credential Requests' },
    { to: '/provider/eligibility', label: 'Eligibility Engine' },
    { to: '/provider/issue', label: 'Issue Credential' },
    { to: '/provider/issued', label: 'Issued Credentials' },
    { to: '/provider/students', label: 'Students Directory' },
    { to: '/provider/analytics', label: 'Analytics' },
    { to: '/provider/audit', label: 'Audit Trail' },
  ];

  return (
    <div style={{ padding: '1.5rem 0 4rem' }}>
      {/* Sub-Navigation Bar */}
      <div style={{ display: 'flex', gap: '0.65rem', overflowX: 'auto', borderBottom: '1px solid var(--border-wire)', paddingBottom: '0.85rem', marginBottom: '2.25rem', scrollbarWidth: 'none' }}>
        {navItems.map((item) => {
          return (
            <NavLink
              key={item.to}
              to={item.to}
              end={item.to === '/provider/dashboard'}
              className={({ isActive }) =>
                `btn ${isActive ? 'btn-hero-wine' : 'btn-outline'}`
              }
              style={{ width: 'auto', padding: '0.45rem 1rem', fontSize: '0.8125rem', whiteSpace: 'nowrap', borderRadius: '6px' }}
            >
              {item.label}
            </NavLink>
          );
        })}
      </div>

      <Outlet />
    </div>
  );
};
