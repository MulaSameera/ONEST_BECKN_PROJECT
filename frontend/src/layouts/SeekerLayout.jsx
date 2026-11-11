import React from 'react';
import { NavLink, Outlet } from 'react-router-dom';

export const SeekerLayout = () => {
  const navItems = [
    { to: '/seeker/dashboard', label: 'My Dashboard' },
    { to: '/seeker/credentials', label: 'My Credentials & QR Codes' },
    { to: '/seeker/request', label: 'Request New Credential' },
  ];

  return (
    <div style={{ padding: '1.5rem 0 4rem' }}>
      <div style={{ display: 'flex', gap: '0.65rem', overflowX: 'auto', borderBottom: '1px solid var(--border-wire)', paddingBottom: '0.85rem', marginBottom: '2.25rem', scrollbarWidth: 'none' }}>
        {navItems.map((item) => {
          return (
            <NavLink
              key={item.to}
              to={item.to}
              end={item.to === '/seeker/dashboard'}
              className={({ isActive }) =>
                `btn ${isActive ? 'btn-card-dark' : 'btn-outline'}`
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
