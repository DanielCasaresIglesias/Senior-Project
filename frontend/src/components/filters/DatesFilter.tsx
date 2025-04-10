import React, { useState, useRef, useEffect } from 'react';
import useOutsideAlerter from '../../hooks/useOutsideAlerter';
import FilterButton from './base-filters/FilterButton';
import ApplyButton from './buttons/ApplyButton';
import ClearButton from './buttons/ClearButton';
import './styles/datesFilter.css';

type DateRange = {
  start: string;
  end: string;
};

type DatesFilterProps = {
  label: string;
  iconSrc: string;
  selectedIconSrc: string;
  iconAlt: string;
  onChange: (range: DateRange) => void;
  initialSelected?: DateRange;
};

const DatesFilter: React.FC<DatesFilterProps> = ({
  label,
  iconSrc,
  selectedIconSrc,
  iconAlt,
  onChange,
  initialSelected = { start: '', end: '' },
}) => {
  const [isOpen, setIsOpen] = useState(false);
  // Track the applied (i.e. confirmed) date range.
  const [appliedDates, setAppliedDates] = useState<DateRange>(initialSelected);
  // Track the temporary date selections while the popup is open.
  const [tempDates, setTempDates] = useState<DateRange>(initialSelected);
  const wrapperRef = useRef<HTMLDivElement>(null);
  const today = new Date().toISOString().split('T')[0];

  useOutsideAlerter(wrapperRef, () => setIsOpen(false));

  // When the popup opens, sync tempDates with the appliedDates.
  useEffect(() => {
    if (isOpen) {
      setTempDates(appliedDates);
    }
  }, [isOpen, appliedDates]);

  const togglePopup = () => {
    setIsOpen(!isOpen);
  };

  // Handle date changes. For the start date, if the selected date is after the current end date,
  // update the end date to match the start date to keep the range valid.
  const handleDateChange = (type: 'start' | 'end', value: string) => {
    if (type === 'start') {
      setTempDates((prev) => ({
        start: value,
        end: prev.end && value > prev.end ? value : prev.end,
      }));
    } else {
      setTempDates((prev) => ({ ...prev, end: value }));
    }
  };

  const applySelection = () => {
    setAppliedDates(tempDates);
    onChange(tempDates);
    setIsOpen(false);
  };

  const clearSelection = () => {
    const cleared: DateRange = { start: '', end: '' };
    setTempDates(cleared);
    setAppliedDates(cleared);
    onChange(cleared);
    setIsOpen(false);
  };

  // The filter is considered active (and uses the "selected" variant) if either date is set.
  const isFilterActive = appliedDates.start !== '' || appliedDates.end !== '';

  return (
    <div className="filter dates-filter" ref={wrapperRef}>
      <FilterButton
        onClick={togglePopup}
        variant={isFilterActive ? 'selected' : 'primary'}
        iconSrc={isFilterActive ? selectedIconSrc : iconSrc}
        iconAlt={iconAlt}
        label={label}
      >
      </FilterButton>
      {isOpen && (
        <div className="dates-filter-popup">
          <p className="title">{label}</p>
          <div className="start-date">
            <label>Start Date:</label>
            <input
              type="date"
              value={tempDates.start}
              onChange={(e) => handleDateChange('start', e.target.value)}
              min={today}
            />
          </div>
          <div className="end-date">
            <label>End Date:</label>
            <input
              type="date"
              value={tempDates.end}
              onChange={(e) => handleDateChange('end', e.target.value)}
              min={tempDates.start || today}
            />
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

export default DatesFilter;
