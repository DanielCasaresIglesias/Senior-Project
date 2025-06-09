// frontend/src/components/header/components/UserControls.tsx
import React from 'react';

export interface UserControlsProps {
  user: { username: string; profilePic: string } | null;
  toggleProfileOverlay: () => void;
  toggleLoginOverlay: () => void;
}

const UserControls: React.FC<UserControlsProps> = ({
  user,
  toggleProfileOverlay,
  toggleLoginOverlay,
}) => {
  return user ? (
    <div className="profile-button" onClick={toggleProfileOverlay}>
      <img src={user.profilePic} alt="Profile" className="profile-pic" />
      <span className="username">{user.username}</span>
    </div>
  ) : (
    <button className="login-button" onClick={toggleLoginOverlay}>
      Login
    </button>
  );
};

export default UserControls;
