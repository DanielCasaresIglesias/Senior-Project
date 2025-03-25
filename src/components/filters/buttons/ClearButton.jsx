import React from 'react';
import '../styles/clearButton.css';

const ClearButton = ({ onClick }) => {
  return (
    <button className="clear-button" onClick={onClick}>
      Clear
    </button>
  );
};

export default ClearButton;
