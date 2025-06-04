// Navbar.tsx
import React from 'react';
// import '../styles/navbar.css';

const Navbar: React.FC = () => {
  return (
    <nav className="navbar">
      <a href="/" className="nav-link">
        Home
      </a>
      <a href="/search" className="nav-link">
        Search
      </a>
      <a href="/about" className="nav-link">
        About
      </a>
    </nav>
  );
};

export default Navbar;
