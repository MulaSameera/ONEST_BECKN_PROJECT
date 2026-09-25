import React from 'react';
import { NavLink, Outlet } from 'react-router-dom';
import { LayoutDashboard, Users, FileText, CheckCircle2, Award, ListChecks, BarChart3, ShieldAlert } from 'lucide-react';

export const ProviderLayout = () => {
  const navItems = [
    { to: '/provider/dashboard', label: 'Dashboard', icon: LayoutDashboard },
    { to: '/provider/requests', label: 'Credential Requests', icon: FileText },
    { to: '/provider/eligibility', label: 'Eligibility Engine', icon: CheckCircle2 },
    { to: '/provider/issue', label: 'Issue Credential', icon: Award },
    { to: '/provider/issued', label: 'Issued Credentials', icon: ListChecks },
    { to: '/provider/students', label: 'Students Directory', icon: Users },
    { to: '/provider/analytics', label: 'Analytics', icon: BarChart3 },
    { to: '/provider/audit', label: 'Audit Trail', icon: ShieldAlert },
  ];

  return (
    <div style={{ padding: '1.75rem 0 3.5rem' }}>
      {/* Sub-Navigation Bar */}
      <div style={{ display: 'flex', gap: '0.6rem', overflowX: 'auto', borderBottom: '1px solid var(--border)', paddingBottom: '0.85rem', marginBottom: '2.25rem', scrollbarWidth: 'none' }}>
        {navItems.map((item) => {
          const Icon = item.icon;
          return (
            <NavLink
              key={item.to}
              to={item.to}
              end={item.to === '/provider/dashboard'}
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
