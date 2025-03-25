import React, { useState, useRef } from 'react';
import useOutsideAlerter from '../../../hooks/useOutsideAlerter';
import FilterButton from '../FilterButton';
import ApplyButton from '../buttons/ApplyButton';
import ClearButton from '../buttons/ClearButton';
import '../styles/radioButtonFilter.css';

const RadioButtonFilter = ({ label, iconSrc, iconAlt, options, onChange }) => {
  const [isOpen, setIsOpen] = useState(false);
  const [appliedSelectedOption, setAppliedSelectedOption] = useState(null); // Applied selection
  const [tempSelectedOption, setTempSelectedOption] = useState(null); // Temporary selection
  const wrapperRef = useRef(null);

  useOutsideAlerter(wrapperRef, () => setIsOpen(false)); // Close when clicking outside

  // Initialize temporary selection when opening the popup
  const togglePopup = () => {
    if (!isOpen) {
      setTempSelectedOption(appliedSelectedOption);
    }
    setIsOpen(!isOpen);
  };

  const handleRadioChange = (option) => {
    setTempSelectedOption(option);
  };

  const applySelection = () => {
    setAppliedSelectedOption(tempSelectedOption); // Save selected option
    onChange(tempSelectedOption); // Notify parent
    setIsOpen(false);
  };

  const clearSelection = () => {
    setTempSelectedOption(null);
    setAppliedSelectedOption(null);
    onChange(null); // Reset parent state
    setIsOpen(false);
  };

  return (
    <div className="filter radiolist-filter" ref={wrapperRef}>
      <FilterButton
        onClick={togglePopup}
        variant="primary"
        iconSrc={iconSrc}
        iconAlt={iconAlt}
      >
        {label}
      </FilterButton>
      {isOpen && (
        <div className="radiolist-filter-popup">
          <p className="title">{label}</p>
          <div className="options">
            {options.map((option) => (
              <label key={option} className="option">
                <input
                  type="radio"
                  name={label} // Ensures only one selection per filter
                  checked={tempSelectedOption === option}
                  onChange={() => handleRadioChange(option)}
                />
                {option}
              </label>
            ))}
          </div>
          {/* Fixed Footer with Apply and Clear */}
          <div className="buttons">
            <ApplyButton onClick={applySelection} />
            <ClearButton onClick={clearSelection} />
          </div>
        </div>
      )}
    </div>
  );
};

export default RadioButtonFilter;
