import React, { useState, useRef, useEffect } from 'react';
import useOutsideAlerter from '../../../hooks/useOutsideAlerter';
import FilterButton from './FilterButton';
import ApplyButton from '../buttons/ApplyButton';
import ClearButton from '../buttons/ClearButton';
import '../styles/checklistFilter.css';

const ChecklistFilter = ({ label, iconSrc, selectedIconSrc, iconAlt, options, onChange, initialSelected = [] }) => {
  const [isOpen, setIsOpen] = useState(false);
  const [selectedFilters, setSelectedFilters] = useState(initialSelected); // Track selected filters
  const wrapperRef = useRef(null);

  useOutsideAlerter(wrapperRef, () => setIsOpen(false));

  const handleCheckboxChange = (option) => {
    setSelectedFilters((prevSelected) =>
      prevSelected.includes(option)
        ? prevSelected.filter((item) => item !== option)
        : [...prevSelected, option]
    );
  };

  const applySelection = () => {
    onChange(selectedFilters); // Directly use selectedFilters
    setIsOpen(false);
  };

  const clearSelection = () => {
    setSelectedFilters([]);
    onChange([]); // Ensure the parent knows it's cleared
    setIsOpen(false);
  };

  // Determine if any filters are selected
  const isFilterActive = selectedFilters.length > 0;

  return (
    <div className="filter checklist-filter" ref={wrapperRef}>
      <FilterButton
        onClick={() => setIsOpen(!isOpen)}
        variant={isFilterActive ? "selected" : "primary"}
        iconSrc={isFilterActive ? selectedIconSrc : iconSrc}
        iconAlt={iconAlt}
        label={label}
      >
      </FilterButton>
      {isOpen && (
        <div className="checklist-filter-popup">
          <p className="title">{label}</p>
          <div className="options">
            {options.map((option) => (
              <label key={option} className="option">
                <input
                  type="checkbox"
                  checked={selectedFilters.includes(option)}
                  onChange={() => handleCheckboxChange(option)}
                />
                {option}
              </label>
            ))}
          </div>
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
