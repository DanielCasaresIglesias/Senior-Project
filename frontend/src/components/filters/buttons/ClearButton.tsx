import React from 'react';
import '../styles/clearButton.css';

type ClearButtonProps = {
  onClick: (event: React.MouseEvent<HTMLButtonElement>) => void;
};

const ClearButton: React.FC<ClearButtonProps> = ({ onClick }) => {
  return (
    <button className="clear-button" onClick={onClick}>
      Clear
    </button>
  );
};

export default ClearButton;
