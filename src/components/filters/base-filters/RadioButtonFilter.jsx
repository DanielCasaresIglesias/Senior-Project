import React, { useState, useRef } from 'react';
import useOutsideAlerter from '../../../hooks/useOutsideAlerter';
import FilterButton from '../FilterButton';
import '../../../styles/filters/radioButtonFilter.css';

const RadioButtonFilter = ({ label, iconSrc, iconAlt, options, onChange }) => {
  const [isOpen, setIsOpen] = useState(false);
  const [selectedOption, setSelectedOption] = useState(null);
  const wrapperRef = useRef(null);

  useOutsideAlerter(wrapperRef, () => setIsOpen(false)); // Close when clicking outside

  const handleRadioChange = (option) => {
    setSelectedOption(option);
    onChange(option); // Only one option can be selected at a time
  };

  return (
    <div className="filter radio-button-filter" ref={wrapperRef}>
      <FilterButton
        onClick={() => setIsOpen(!isOpen)}
        variant="primary"
        iconSrc={iconSrc}
        iconAlt={iconAlt}
      >
        {label}
      </FilterButton>
      {isOpen && (
        <div className="filter-popup">
          {label}
          {options.map((option) => (
            <label key={option} className="option">
              <input
                type="radio"
                name={label} // Ensures only one selection per filter
                checked={selectedOption === option}
                onChange={() => handleRadioChange(option)}
              />
              {option}
            </label>
          ))}
        </div>
      )}
    </div>
  );
};

export default RadioButtonFilter;
