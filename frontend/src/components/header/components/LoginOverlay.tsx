// LoginOverlay.tsx
import React, { useState, useRef, useEffect } from 'react';
import '../styles/loginOverlay.css';
import type { LoginData } from '../../../types/loginData';

type LoginOverlayProps = {
  onClose: () => void;
  onLogin: (data: LoginData) => void;
  onSignup: () => void;
};

const LoginOverlay: React.FC<LoginOverlayProps> = ({ onClose, onLogin, onSignup }) => {
  const overlayRef = useRef<HTMLDivElement>(null);
  const [formData, setFormData] = useState<LoginData>({
    username: "",
    profilePic: "",
    password: "",
    remember: false,
  });

  // Close overlay when clicking outside
  useEffect(() => {
    const handleClickOutside = (event: MouseEvent) => {
      if (
        overlayRef.current &&
        !overlayRef.current.contains(event.target as Node)
      ) {
        onClose();
      }
    };

    document.addEventListener('mousedown', handleClickOutside);
    return () => {
      document.removeEventListener('mousedown', handleClickOutside);
    };
  }, [onClose]);

  const handleChange = (
    e: React.ChangeEvent<HTMLInputElement>
  ): void => {
    const { name, value, type, checked } = e.target;
    setFormData((prev) => ({
      ...prev,
      [name]: type === 'checkbox' ? checked : value,
    }));
  };

  const handleSubmit = (e: React.FormEvent<HTMLFormElement>): void => {
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
            <button type="submit" className="login-submit-button">
              Login
            </button>
          </form>
          <button className="signup-button" onClick={onSignup}>
            Sign Up
          </button>
          <div className="forgot-password">
            <a href="/forgot-password">Forgot your password?</a>
          </div>
        </div>
      </div>
    </div>
  );
};

export default LoginOverlay;
