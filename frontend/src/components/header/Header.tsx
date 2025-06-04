import React, { useState, useEffect } from 'react';
import './styles/header.css';
import ProfileOverlay from './components/ProfileOverlay';
import LoginOverlay from './components/LoginOverlay';
import UserControls from './components/UserControls';
import Navbar from './components/Navbar';
import type { User } from '../../types/user';
import type { LoginData } from '../../types/loginData';

type HeaderProps = {
  user: User | null;
  onLogin: (longData: LoginData) => void;
  onLogout: () => void;
  onSignup: () => void;
};

const Header: React.FC<HeaderProps> = ({ user, onLogin, onLogout, onSignup }) => {
  const [showProfileOverlay, setShowProfileOverlay] = useState<boolean>(false);
  const [showLoginOverlay, setShowLoginOverlay] = useState<boolean>(false);
  const [isMenuOpen, setIsMenuOpen] = useState<boolean>(false);
  const [accountMenuOpen, setAccountMenuOpen] = useState<boolean>(false);
  const [isMobile, setIsMobile] = useState<boolean>(window.innerWidth < 920);

  useEffect(() => {
    const handleResize = () => {
      setIsMobile(window.innerWidth < 921);
      if (window.innerWidth >= 921) {
        setIsMenuOpen(false);
        setAccountMenuOpen(false);
      }
    };

    window.addEventListener('resize', handleResize);
    return () => window.removeEventListener('resize', handleResize);
  }, []);

  const toggleProfileOverlay = () => {
    setShowProfileOverlay((prev) => !prev);
    setShowLoginOverlay(false);
  };

  const toggleLoginOverlay = () => {
    setShowLoginOverlay((prev) => !prev);
    setShowProfileOverlay(false);
  };

  const toggleMenu = () => {
    setIsMenuOpen((prev) => !prev);
    if (isMenuOpen) setAccountMenuOpen(false);
  };

  return (
    <header className="header">
      <a href="/" className="logo">
        <img src="/images/logo.png" alt="Logo" className="logo-image" />
        <span className="website-name">Park Radar</span>
      </a>

      {isMobile ? (
        <button onClick={toggleMenu} className="hamburger-button">
          {isMenuOpen ? '✕' : '☰'}
        </button>
      ) : (
        <>
          <Navbar />
          <div className="user-controls">
            <UserControls
              user={user}
              toggleProfileOverlay={toggleProfileOverlay}
              toggleLoginOverlay={toggleLoginOverlay}
            />
          </div>
        </>
      )}

      {isMobile && (
        <div className={`mobile-menu ${isMenuOpen ? 'open' : ''}`}>
          <div className="mobile-menu-header">
            <button onClick={toggleMenu} className="mobile-menu-close">
              ✕
            </button>
          </div>
          <div className="mobile-menu-content">
            <div className="mobile-navbar">
              <Navbar />
            </div>
            <div className="mobile-account-section">
              {user ? (
                <div className="mobile-account">
                  <button
                    onClick={() => setAccountMenuOpen((prev) => !prev)}
                    className="mobile-account-button"
                  >
                    Account
                  </button>
                  {accountMenuOpen && (
                    <div className="mobile-account-submenu">
                      <a href="/profile" className="mobile-account-option">
                        Profile
                      </a>
                      <button onClick={onLogout} className="mobile-account-option">
                        Logout
                      </button>
                    </div>
                  )}
                </div>
              ) : (
                <a href="/login" className="login-button">
                  Login
                </a>
              )}
            </div>
          </div>
        </div>
      )}

      {showProfileOverlay && user && (
        <ProfileOverlay
          user={user}
          onClose={() => setShowProfileOverlay(false)}
          onLogout={onLogout}
        />
      )}

      {/* Optional: LoginOverlay (if needed later) */}
      {showLoginOverlay && !user && (
        <LoginOverlay
          onClose={() => setShowLoginOverlay(false)}
          onLogin={onLogin}
          onSignup={onSignup}
        />
      )}
    </header>
  );
};

export default Header;
