import React, { useState, useRef, useEffect } from 'react';
import useOutsideAlerter from '../../../hooks/useOutsideAlerter';
import FilterButton from '../FilterButton';
import ApplyButton from '../buttons/ApplyButton';
import ClearButton from '../buttons/ClearButton';
import '../styles/searchableChecklistFilter.css';

const SearchableChecklistFilter = ({ label, iconSrc, iconAlt, options, onChange }) => {
  const [isOpen, setIsOpen] = useState(false);
  const [tempSelected, setTempSelected] = useState([]);
  const [searchTerm, setSearchTerm] = useState('');
  const [appliedSelected, setAppliedSelected] = useState([]);
  const wrapperRef = useRef(null);

  // Close the popup and clear temporary selections when clicking outside.
  useOutsideAlerter(wrapperRef, () => setIsOpen(false));

  // Whenever the popup is closed, clear the temporary selections.
  useEffect(() => {
    if (!isOpen) {
      setTempSelected([]);
      setSearchTerm('');
    }
  }, [isOpen]);

  const handleCheckboxChange = (option) => {
    setTempSelected((prevSelected) => {
      if (prevSelected.includes(option)) {
        return prevSelected.filter((item) => item !== option);
      } else {
        return [...prevSelected, option];
      }
    });
  };

  const applySelection = () => {
    setAppliedSelected(tempSelected);
    onChange(tempSelected);
    setIsOpen(false);
  };

  const clearSelection = () => {
    setTempSelected([]);
    setAppliedSelected([]);
    onChange([]);
    setIsOpen(false);
  };

  const filteredOptions = options.filter((option) =>
    option.toLowerCase().includes(searchTerm.toLowerCase())
  );

  return (
    <div className="filter searchable-checklist-filter" ref={wrapperRef}>
      <FilterButton
        onClick={() => setIsOpen(!isOpen)}
        variant="primary"
        iconSrc={iconSrc}
        iconAlt={iconAlt}
      >
        {label}
      </FilterButton>
      {isOpen && (
        <div className="searchable-checklist-filter-popup">
          {/* Fixed header */}
          <p className="title">{label}</p>
          <input
            type="text"
            className="search-input"
            placeholder="Search..."
            value={searchTerm}
            onChange={(e) => setSearchTerm(e.target.value)}
          />
          {/* Scrollable options list */}
          <div className="options">
            {filteredOptions.length > 0 ? (
              filteredOptions.map((option) => (
                <label key={option} className="option">
                  <input
                    type="checkbox"
                    checked={tempSelected.includes(option)}
                    onChange={() => handleCheckboxChange(option)}
                  />
                  {option}
                </label>
              ))
            ) : (
              <p className="no-results">No results found</p>
            )}
          </div>
          {/* Fixed footer with Apply and Clear buttons */}
          <div className="buttons">
            <ApplyButton onClick={applySelection} />
            <ClearButton onClick={clearSelection} />
          </div>
        </div>
      )}
    </div>
  );
};

export default SearchableChecklistFilter;
