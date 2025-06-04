// UserControls.tsx
import React from 'react';
import type { User } from '../../../types/user';
// import './styles/userControls.css';

type UserControlsProps = {
  user: User | null;
  toggleProfileOverlay: () => void;
  toggleLoginOverlay: () => void;
};

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
    <button onClick={toggleLoginOverlay} className="login-button">
      Login
    </button>
  );
};

export default UserControls;
