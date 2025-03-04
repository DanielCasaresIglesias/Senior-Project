// SearchButton.jsx
import React from 'react';
import '../styles/searchButton.css';

const SearchButton = ({ onClick, type = "button", variant = "primary" }) => {
  return (
    <button type={type} className={`search-button ${variant}`} onClick={onClick}>
      Search
    </button>
  );
};

export default SearchButton;
