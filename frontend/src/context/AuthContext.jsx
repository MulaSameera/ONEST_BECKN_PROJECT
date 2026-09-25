import React, { createContext, useContext, useState, useEffect } from 'react';
import { authApi } from '../services/api';

const AuthContext = createContext(null);

export const AuthProvider = ({ children }) => {
  const [user, setUser] = useState(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const initAuth = async () => {
      const token = localStorage.getItem('onest_auth_token');
      if (token) {
        try {
          const profile = await authApi.getCurrentUser();
          setUser(profile);
        } catch (err) {
          console.error('Session restoration failed:', err.message);
          localStorage.removeItem('onest_auth_token');
          setUser(null);
        }
      }
      setLoading(false);
    };

    initAuth();
  }, []);

  const loginProvider = async (username, password) => {
    const data = await authApi.loginProvider(username, password);
    localStorage.setItem('onest_auth_token', data.token);
    setUser({
      username: data.username,
      role: data.role,
      displayName: data.displayName,
      institutionId: data.institutionId,
      studentId: null,
    });
    return data;
  };

  const loginSeeker = async (identifier, password) => {
    const data = await authApi.loginSeeker(identifier, password);
    localStorage.setItem('onest_auth_token', data.token);
    setUser({
      username: data.username,
      role: data.role,
      displayName: data.displayName,
      institutionId: null,
      studentId: data.studentId,
    });
    return data;
  };

  const logout = () => {
    localStorage.removeItem('onest_auth_token');
    setUser(null);
  };

  return (
    <AuthContext.Provider
      value={{
        user,
        loading,
        isAuthenticated: !!user,
        role: user?.role,
        loginProvider,
        loginSeeker,
        logout,
      }}
    >
      {children}
    </AuthContext.Provider>
  );
};

export const useAuth = () => {
  const context = useContext(AuthContext);
  if (!context) {
    throw new Error('useAuth must be used within an AuthProvider');
  }
  return context;
};
