import React, { useState, useRef } from 'react';
import useOutsideAlerter from '../../../hooks/useOutsideAlerter';
import FilterButton from './FilterButton';
import ApplyButton from '../buttons/ApplyButton';
import ClearButton from '../buttons/ClearButton';
import '../styles/checklistFilter.css';

type ChecklistFilterProps = {
  label: string;
  iconSrc: string;
  selectedIconSrc: string;
  iconAlt: string;
  options: string[];
  onChange: (selected: string[]) => void;
  initialSelected?: string[];
};

const ChecklistFilter: React.FC<ChecklistFilterProps> = ({
  label,
  iconSrc,
  selectedIconSrc,
  iconAlt,
  options,
  onChange,
  initialSelected = [],
}) => {
  const [isOpen, setIsOpen] = useState(false);
  const [appliedFilters, setAppliedFilters] = useState<string[]>(initialSelected);
  const [selectedFilters, setSelectedFilters] = useState<string[]>(initialSelected);
  const wrapperRef = useRef<HTMLDivElement>(null);

  useOutsideAlerter(wrapperRef, () => setIsOpen(false));

  const handleCheckboxChange = (option: string) => {
    setSelectedFilters((prevSelected) =>
      prevSelected.includes(option)
        ? prevSelected.filter((item) => item !== option)
        : [...prevSelected, option]
    );
  };

  const applySelection = () => {
    setAppliedFilters(selectedFilters);
    onChange(selectedFilters);
    setIsOpen(false);
  };

  const clearSelection = () => {
    setSelectedFilters([]);
    setAppliedFilters([]);
    onChange([]);
    setIsOpen(false);
  };

  const isFilterActive = appliedFilters.length > 0;

  return (
    <div className="filter checklist-filter" ref={wrapperRef}>
      <FilterButton
        onClick={() => setIsOpen(!isOpen)}
        variant={isFilterActive ? "selected" : "primary"}
        iconSrc={isFilterActive ? selectedIconSrc : iconSrc}
        iconAlt={iconAlt}
        label={label}
      />
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
