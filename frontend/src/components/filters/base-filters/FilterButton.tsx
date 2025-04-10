// FilterButton.jsx
import React from 'react';
import '../styles/filterButton.css';

type FilterButtonProps = {
  iconSrc?: string;
  iconAlt?: string;
  label: string;
  onClick: (event: React.MouseEvent<HTMLButtonElement>) => void;
  type?: 'button' | 'submit' | 'reset';
  variant?: string; // You could narrow this if you have known values like "primary" | "secondary"
};

const FilterButton: React.FC<FilterButtonProps> = ({
  iconSrc,
  iconAlt = 'icon',
  label,
  onClick,
  type = 'button',
  variant = 'primary',
}) => {
  return (
    <button type={type} className={`filter-button ${variant}`} onClick={onClick}>
      {iconSrc && <img src={iconSrc} alt={iconAlt} className="button-icon" />}
      <span className="button-text">{label}</span>
    </button>
  );
};

export default FilterButton;
