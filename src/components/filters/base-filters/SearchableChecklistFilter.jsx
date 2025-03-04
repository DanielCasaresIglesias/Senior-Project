import React, { useState, useRef } from 'react';
import FilterButton from '../FilterButton';
import useOutsideAlerter from '../../../hooks/useOutsideAlerter';
import '../../../styles/filters/searchableChecklistFilter.css';

const SearchableChecklistFilter = ({ label, iconSrc, iconAlt, options, onChange }) => {
  const [isOpen, setIsOpen] = useState(false);
  const [selectedOptions, setSelectedOptions] = useState([]);
  const [searchTerm, setSearchTerm] = useState('');
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
        <div className="filter-popup">
          {label}
          <input
            type="text"
            className="search-input"
            placeholder="Search..."
            value={searchTerm}
            onChange={(e) => setSearchTerm(e.target.value)}
          />
          <div className="options-list">
            {filteredOptions.length > 0 ? (
              filteredOptions.map((option) => (
                <label key={option} className="option">
                  <input
                    type="checkbox"
                    checked={selectedOptions.includes(option)}
                    onChange={() => handleCheckboxChange(option)}
                  />
                  {option}
                </label>
              ))
            ) : (
              <p className="no-results">No results found</p>
            )}
          </div>
        </div>
      )}
    </div>
  );
};

export default SearchableChecklistFilter;
