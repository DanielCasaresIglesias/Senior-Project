import React, { useState, useRef } from 'react';
import useOutsideAlerter from '../../../hooks/useOutsideAlerter';
import FilterButton from '../FilterButton';
import ApplyButton from '../buttons/ApplyButton';
import ClearButton from '../buttons/ClearButton';
import '../styles/checklistFilter.css';

const ChecklistFilter = ({ label, iconSrc, iconAlt, options, onChange }) => {
  const [isOpen, setIsOpen] = useState(false);
  const [tempSelected, setTempSelected] = useState([]); // Temporary selection state
  const [appliedSelected, setAppliedSelected] = useState([]); // Applied selection state
  const wrapperRef = useRef(null);

  useOutsideAlerter(wrapperRef, () => setIsOpen(false));

  const handleCheckboxChange = (option) => {
    setTempSelected((prevSelected) =>
      prevSelected.includes(option)
        ? prevSelected.filter((item) => item !== option)
        : [...prevSelected, option]
    );
  };

  const applySelection = () => {
    setAppliedSelected(tempSelected);
    onChange(appliedSelected);
    setIsOpen(false);
  };

  const clearSelection = () => {
    setTempSelected([]);
    setAppliedSelected([]);
    onChange([])
    setIsOpen(false);
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
        <div className="checklist-filter-popup">
          {/* Fixed Header */}
          <p className="title">{label}</p>

          {/* Scrollable Options */}
          <div className="options">
            {options.map((option) => (
              <label key={option} className="option">
                <input
                  type="checkbox"
                  checked={tempSelected.includes(option)}
                  onChange={() => handleCheckboxChange(option)}
                />
                {option}
              </label>
            ))}
          </div>

          {/* Fixed Footer */}
          <div className="buttons">
            <ApplyButton onClick={applySelection} />
            <ClearButton onClick={clearSelection} />
          </div>
        </div>
      )}

    </div>
  );
};

export default ChecklistFilter;
