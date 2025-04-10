import React, { useState, useRef, useEffect } from 'react';
import '../styles/loginOverlay.css';

const LoginOverlay = ({ onClose, onLogin, onSignup }) => {
  const overlayRef = useRef(null);
  const [formData, setFormData] = useState({
    username: '',
    password: '',
    remember: false
  });

  // Close overlay when clicking outside
  useEffect(() => {
    const handleClickOutside = (event) => {
      if (overlayRef.current && !overlayRef.current.contains(event.target)) {
        onClose();
      }
    };

    document.addEventListener('mousedown', handleClickOutside);
    return () => document.removeEventListener('mousedown', handleClickOutside);
  }, [onClose]);

  const handleChange = (e) => {
    const { name, value, type, checked } = e.target;
    setFormData(prev => ({
      ...prev,
      [name]: type === 'checkbox' ? checked : value
    }));
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    onLogin(formData);
  };

  return (
    <div className="overlay-container">
      <div className="login-overlay" ref={overlayRef}>
        <div className="overlay-header">
          <h3>Login</h3>
        </div>
        <div className="overlay-body">
          <form onSubmit={handleSubmit}>
            <input
              type="text"
              name="username"
              placeholder="Username or Email"
              value={formData.username}
              onChange={handleChange}
              className="input-field"
            />
            <input
              type="password"
              name="password"
              placeholder="Password"
              value={formData.password}
              onChange={handleChange}
              className="input-field"
            />
            <div className="checkbox-container">
              <label>
                <input
                  type="checkbox"
                  name="remember"
                  checked={formData.remember}
                  onChange={handleChange}
                />
                Remember Me
              </label>
            </div>
            <button type="submit" className="login-submit-button">Login</button>
          </form>
          <button className="signup-button" onClick={onSignup}>Sign Up</button>
          <div className="forgot-password">
            <a href="/forgot-password">Forgot your password?</a>
          </div>
        </div>
      </div>
    </div>
  );
};

export default LoginOverlay;
