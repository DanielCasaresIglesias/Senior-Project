// FilterButton.jsx
import React from 'react';
import '../../styles/filterButton.css';

const FilterButton = ({ iconSrc, iconAlt = "icon", children, onClick, type = "button", variant = "primary" }) => {
  return (
    <button type={type} className={`filter-button ${variant}`} onClick={onClick}>
      {iconSrc && <img src={iconSrc} alt={iconAlt} className="button-icon" />}
      <span className="button-text">{children}</span>
    </button>
  );
};

export default FilterButton;
