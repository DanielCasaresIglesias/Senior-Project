import React, { useState, useRef, useEffect } from 'react';
import useOutsideAlerter from '../../../hooks/useOutsideAlerter';
import FilterButton from './FilterButton';
import ApplyButton from '../buttons/ApplyButton';
import ClearButton from '../buttons/ClearButton';
import '../styles/searchableChecklistFilter.css';

type SearchableChecklistFilterProps = {
  label: string;
  iconSrc: string;
  selectedIconSrc: string;
  iconAlt: string;
  options: string[];
  onChange: (selected: string[]) => void;
  initialSelected?: string[];
};

const SearchableChecklistFilter: React.FC<SearchableChecklistFilterProps> = ({
  label,
  iconSrc,
  selectedIconSrc,
  iconAlt,
  options,
  onChange,
  initialSelected = [],
}) => {
  const [isOpen, setIsOpen] = useState(false);
  const [tempSelected, setTempSelected] = useState<string[]>(initialSelected);
  const [appliedSelected, setAppliedSelected] = useState<string[]>(initialSelected);
  const [searchTerm, setSearchTerm] = useState('');
  const wrapperRef = useRef<HTMLDivElement>(null);

  useOutsideAlerter(wrapperRef, () => setIsOpen(false));

  useEffect(() => {
    if (!isOpen) {
      setTempSelected(appliedSelected);
      setSearchTerm('');
    }
  }, [isOpen, appliedSelected]);

  const togglePopup = () => {
    if (!isOpen) {
      setTempSelected(appliedSelected);
    }
    setIsOpen(!isOpen);
  };

  const handleCheckboxChange = (option: string) => {
    setTempSelected((prev) =>
      prev.includes(option)
        ? prev.filter((item) => item !== option)
        : [...prev, option]
    );
  };

  const applySelection = () => {
    setAppliedSelected(tempSelected);
    onChange(tempSelected);
    setIsOpen(false);
  };

  const clearSelection = () => {
    setAppliedSelected([]);
    setTempSelected([]);
    onChange([]);
    setIsOpen(false);
  };

  const filteredOptions = options.filter((option) =>
    option.toLowerCase().includes(searchTerm.toLowerCase())
  );

  const isFilterActive = appliedSelected.length > 0;

  return (
    <div className="filter searchable-checklist-filter" ref={wrapperRef}>
      <FilterButton
        onClick={togglePopup}
        variant={isFilterActive ? 'selected' : 'primary'}
        iconSrc={isFilterActive ? selectedIconSrc : iconSrc}
        iconAlt={iconAlt}
        label={label}
      />
      {isOpen && (
        <div className="searchable-checklist-filter-popup">
          <p className="title">{label}</p>
          <input
            type="text"
            className="search-input"
            placeholder="Search..."
            value={searchTerm}
            onChange={(e) => setSearchTerm(e.target.value)}
          />
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
