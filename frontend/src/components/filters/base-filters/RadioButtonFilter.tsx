import React, { useState, useRef } from 'react';
import useOutsideAlerter from '../../../hooks/useOutsideAlerter';
import FilterButton from './FilterButton';
import ApplyButton from '../buttons/ApplyButton';
import ClearButton from '../buttons/ClearButton';
import '../styles/radioButtonFilter.css';

type RadioButtonFilterProps = {
  label: string;
  iconSrc: string;
  selectedIconSrc: string;
  iconAlt: string;
  options: string[];
  onChange: (selected: string | null) => void;
  initialSelected?: string | null;
};

const RadioButtonFilter: React.FC<RadioButtonFilterProps> = ({
  label,
  iconSrc,
  selectedIconSrc,
  iconAlt,
  options,
  onChange,
  initialSelected = null,
}) => {
  const [isOpen, setIsOpen] = useState(false);
  // Track the applied selection (last confirmed)
  const [appliedOption, setAppliedOption] = useState<string | null>(initialSelected);
  // Track the temporary, currently selected option in the popup
  const [tempOption, setTempOption] = useState<string | null>(initialSelected);
  const wrapperRef = useRef<HTMLDivElement>(null);

  useOutsideAlerter(wrapperRef, () => setIsOpen(false));

  // When opening the popup, initialize the temporary selection to what is applied.
  const togglePopup = () => {
    if (!isOpen) {
      setTempOption(appliedOption);
    }
    setIsOpen(!isOpen);
  };

  const handleRadioChange = (option: string) => {
    setTempOption(option);
  };

  const applySelection = () => {
    setAppliedOption(tempOption);
    onChange(tempOption);
    setIsOpen(false);
  };

  const clearSelection = () => {
    setTempOption(null);
    setAppliedOption(null);
    onChange(null);
    setIsOpen(false);
  };

  // The filter is "active" only if an option has been applied
  const isFilterActive = appliedOption !== null;

  return (
    <div className="filter radiolist-filter" ref={wrapperRef}>
      <FilterButton
        onClick={togglePopup}
        variant={isFilterActive ? "selected" : "primary"}
        // Show the selected icon only when an option is applied.
        iconSrc={isFilterActive ? selectedIconSrc : iconSrc}
        iconAlt={iconAlt}
        label={label}
      />
      {isOpen && (
        <div className="radiolist-filter-popup">
          <p className="title">{label}</p>
          <div className="options">
            {options.map((option) => (
              <label key={option} className="option">
                <input
                  type="radio"
                  name={label} // same group to ensure only one option can be selected
                  checked={tempOption === option}
                  onChange={() => handleRadioChange(option)}
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

export default RadioButtonFilter;
