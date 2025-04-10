import React from 'react';
import '../styles/applyButton.css';

type ApplyButtonProps = {
  onClick: (event: React.MouseEvent<HTMLButtonElement>) => void;
};

const ApplyButton: React.FC<ApplyButtonProps> = ({ onClick }) => {
  return (
    <button className="apply-button" onClick={onClick}>
      Apply
    </button>
  );
};

export default ApplyButton;
