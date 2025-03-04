import React, { useState, useRef } from 'react';
import useOutsideAlerter from '../../../hooks/useOutsideAlerter';
import FilterButton from '../FilterButton';
import '../../../styles/filters/checklistFilter.css';

const ChecklistFilter = ({ label, iconSrc, iconAlt, options, onChange }) => {
  const [isOpen, setIsOpen] = useState(false);
  const [selectedOptions, setSelectedOptions] = useState([]);
  const wrapperRef = useRef(null);

  useOutsideAlerter(wrapperRef, () => setIsOpen(false)); // Close when clicking outside

  const handleCheckboxChange = (option) => {
    setSelectedOptions((prevSelected) => {
      const updatedSelected = prevSelected.includes(option)
        ? prevSelected.filter((item) => item !== option)
        : [...prevSelected, option];

      onChange(updatedSelected);
      return updatedSelected;
    });
  };

  return (
    <div className="filter checklist-filter" ref={wrapperRef}>
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
                type="checkbox"
                checked={selectedOptions.includes(option)}
                onChange={() => handleCheckboxChange(option)}
              />
              {option}
            </label>
          ))}
        </div>
      )}
    </div>
  );
};

export default ChecklistFilter;
