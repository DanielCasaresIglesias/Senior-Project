const UserControls = ({ user, toggleProfileOverlay, toggleLoginOverlay }) => {
return user ? (
        <div className="profile-button" onClick={toggleProfileOverlay}>
            <img src={user.profilePic} alt="Profile" className="profile-pic" />
            <span className="username">{user.username}</span>
        </div>
    ) : (
        <a href="/login" className="login-button">Login</a>
    );
};

export default UserControls;
  