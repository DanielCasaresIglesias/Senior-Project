// ProfileOverlay.tsx
import React, { useEffect, useRef } from 'react';
import '../styles/profileOverlay.css';

interface User {
  username: string;
  profilePic: string;
  // add other fields if needed
}

type ProfileOverlayProps = {
  user: User;
  onClose: () => void;
  onLogout: () => void;
};

const ProfileOverlay: React.FC<ProfileOverlayProps> = ({ user, onClose, onLogout }) => {
  const overlayRef = useRef<HTMLDivElement>(null);

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
    return () => document.removeEventListener('mousedown', handleClickOutside);
  }, [onClose]);

  return (
    <div className="overlay-container">
      <div className="profile-overlay" ref={overlayRef}>
        <div className="overlay-header">
          <img
            src={user.profilePic}
            alt="Profile"
            className="small-profile-pic"
          />
          <span className="small-username">{user.username}</span>
        </div>
        <div className="overlay-body">
          <ul className="profile-links">
            <li>
              <a href="/profile">Profile</a>
            </li>
            <li>
              <a href="/trips">Trips</a>
            </li>
            <li>
              <a href="/saved">Saved</a>
            </li>
            <li>
              <a href="/settings">Settings</a>
            </li>
          </ul>
          <button className="logout-button" onClick={onLogout}>
            Logout
          </button>
        </div>
      </div>
    </div>
  );
};

export default ProfileOverlay;
