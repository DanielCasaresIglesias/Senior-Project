import React, { useState, useRef } from 'react';
import useOutsideAlerter from '../../hooks/useOutsideAlerter';
import FilterButton from './FilterButton';
import ApplyButton from './buttons/ApplyButton';
import ClearButton from './buttons/ClearButton';
import './styles/datesFilter.css';

const DatesFilter = ({ onChange }) => {
  const [isOpen, setIsOpen] = useState(false);
  const [appliedStartDate, setAppliedStartDate] = useState('');
  const [appliedEndDate, setAppliedEndDate] = useState('');
  const [tempStartDate, setTempStartDate] = useState('');
  const [tempEndDate, setTempEndDate] = useState('');
  const wrapperRef = useRef(null);

  useOutsideAlerter(wrapperRef, () => setIsOpen(false)); // Close when clicking outside

  const today = new Date().toISOString().split("T")[0];

  // Open popup and initialize temporary state
  const togglePopup = () => {
    if (!isOpen) {
      setTempStartDate(appliedStartDate);
      setTempEndDate(appliedEndDate);
    }
    setIsOpen(!isOpen);
  };

  const handleDateChange = (type, value) => {
    if (type === 'start') {
      setTempStartDate(value);
      if (tempEndDate && value > tempEndDate) {
        setTempEndDate(value); // Ensure end date is not before start date
      }
    } else {
      setTempEndDate(value);
    }
  };

  const applySelection = () => {
    setAppliedStartDate(tempStartDate);
    setAppliedEndDate(tempEndDate);
    onChange({ start: tempStartDate, end: tempEndDate });
    setIsOpen(false);
  };

  const clearSelection = () => {
    setTempStartDate('');
    setTempEndDate('');
    setAppliedStartDate('');
    setAppliedEndDate('');
    onChange({ start: '', end: '' });
    setIsOpen(false);
  };

  return (
    <div className="filter dates-filter" ref={wrapperRef}>
      <FilterButton
        onClick={togglePopup}
        variant="primary"
        iconSrc="images/filter-icons/base-icons/date-icon.png"
        iconAlt="Calendar Icon"
      >
        Dates
      </FilterButton>
      {isOpen && (
        <div className="dates-filter-popup">
          <p className="title">Dates</p>
          <div className="start-date">
          <label>Start Date:</label>
            <input
              type="date"
              value={tempStartDate}
              onChange={(e) => handleDateChange('start', e.target.value)}
              min={today}
            />
          </div>
          <div className="end-date">
            <label>End Date:</label>
            <input
              type="date"
              value={tempEndDate}
              onChange={(e) => handleDateChange('end', e.target.value)}
              min={tempStartDate || today}
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
