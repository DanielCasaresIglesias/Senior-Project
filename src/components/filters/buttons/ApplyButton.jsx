import React from 'react';
import '../styles/applyButton.css';

const ApplyButton = ({ onClick }) => {
  return (
    <button className="apply-button" onClick={onClick}>
      Apply
    </button>
  );
};

export default ApplyButton;
