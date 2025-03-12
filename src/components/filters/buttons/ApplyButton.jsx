import React from 'react';
import '../../../styles/buttons/applyButton.css';

const ApplyButton = ({ onClick }) => {
  return (
    <button className="apply-button" onClick={onClick}>
      Apply
    </button>
  );
};

export default ApplyButton;
