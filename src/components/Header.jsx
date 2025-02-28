import React, { useState } from 'react';
import '../styles/header.css';
import ProfileOverlay from './ProfileOverlay';
import LoginOverlay from './LoginOverlay';

const Header = ({ user, onLogin, onLogout, onSignup }) => {
  const [showProfileOverlay, setShowProfileOverlay] = useState(false);
  const [showLoginOverlay, setShowLoginOverlay] = useState(false);

  // Toggle the respective overlay ensuring only one is open at a time.
  const toggleProfileOverlay = () => {
    setShowProfileOverlay(!showProfileOverlay);
    setShowLoginOverlay(false);
  };

  const toggleLoginOverlay = () => {
    setShowLoginOverlay(!showLoginOverlay);
    setShowProfileOverlay(false);
  };

  return (
    <header className="header">
      {/* Logo and website name */}
      <a href="/" className="logo">
        <img src="/images/logo.png" alt="Logo" className="logo-image" />
        <span className="website-name">Park Radar</span>
      </a>

      {/* Navigation links */}
      <nav className="navbar">
        <a href="/" className="nav-link">Home</a>
        <a href="/search" className="nav-link">Search</a>
        <a href="/about" className="nav-link">About</a>
      </nav>

      {/* User controls: either profile or login button */}
      <div className="user-controls">
        {user ? (
          <div className="profile-button" onClick={toggleProfileOverlay}>
            <img src={user.profilePic} alt="Profile" className="profile-pic" />
            <span className="username">{user.username}</span>
          </div>
        ) : (
          <button className="login-button" onClick={toggleLoginOverlay}>Login</button>
        )}

        {showProfileOverlay && user && (
          <ProfileOverlay
            user={user}
            onClose={() => setShowProfileOverlay(false)}
            onLogout={onLogout}
          />
        )}
        {showLoginOverlay && !user && (
          <LoginOverlay
            onClose={() => setShowLoginOverlay(false)}
            onLogin={onLogin}
            onSignup={onSignup}
          />
        )}
      </div>
    </header>
  );
};

export default Header;
