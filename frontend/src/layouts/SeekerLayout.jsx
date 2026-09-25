import React from 'react';
import { NavLink, Outlet } from 'react-router-dom';
import { LayoutDashboard, Award, PlusCircle } from 'lucide-react';

export const SeekerLayout = () => {
  const navItems = [
    { to: '/seeker/dashboard', label: 'My Dashboard', icon: LayoutDashboard },
    { to: '/seeker/credentials', label: 'My Credentials & QR Codes', icon: Award },
    { to: '/seeker/request', label: 'Request New Credential', icon: PlusCircle },
  ];

  return (
    <div style={{ padding: '1.75rem 0 3.5rem' }}>
      <div style={{ display: 'flex', gap: '0.6rem', overflowX: 'auto', borderBottom: '1px solid var(--border)', paddingBottom: '0.85rem', marginBottom: '2.25rem', scrollbarWidth: 'none' }}>
        {navItems.map((item) => {
          const Icon = item.icon;
          return (
            <NavLink
              key={item.to}
              to={item.to}
              end={item.to === '/seeker/dashboard'}
              className={({ isActive }) =>
                `btn ${isActive ? 'btn-primary' : 'btn-outline'}`
              }
              style={{ width: 'auto', padding: '0.5rem 1rem', fontSize: '0.85rem', whiteSpace: 'nowrap', borderRadius: '0.5rem' }}
            >
              <Icon size={16} />
              {item.label}
            </NavLink>
          );
        })}
      </div>

      <Outlet />
    </div>
  );
};
