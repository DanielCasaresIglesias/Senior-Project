import React, { useState, useRef } from 'react';
import useOutsideAlerter from '../../hooks/useOutsideAlerter';
import FilterButton from './FilterButton';
import '../../styles/filters/datesFilter.css';

const DatesFilter = ({ onChange }) => {
  const [isOpen, setIsOpen] = useState(false);
  const [startDate, setStartDate] = useState('');
  const [endDate, setEndDate] = useState('');
  const wrapperRef = useRef(null);

  useOutsideAlerter(wrapperRef, () => setIsOpen(false)); // Close when clicking outside

  const today = new Date().toISOString().split("T")[0];

  const handleDateChange = (type, value) => {
    if (type === 'start') {
      setStartDate(value);
      if (endDate && value > endDate) {
        setEndDate(value); // Ensure end date is not before start date
      }
      onChange({ start: value, end: endDate });
    } else {
      setEndDate(value);
      onChange({ start: startDate, end: value });
    }
  };

  return (
    <div className="filter dates-filter" ref={wrapperRef}>
      <FilterButton
        onClick={() => setIsOpen(!isOpen)}
        variant="primary"
        iconSrc="images/filter-icons/date-icon.png"
        iconAlt="Calendar Icon"
      >
        Dates
      </FilterButton>
      {isOpen && (
        <div className="filter-popup">
          <label>Start Date:</label>
          <input
            type="date"
            value={startDate}
            onChange={(e) => handleDateChange('start', e.target.value)}
            min={today}
          />
          <label>End Date:</label>
          <input
            type="date"
            value={endDate}
            onChange={(e) => handleDateChange('end', e.target.value)}
            min={startDate || today}
          />
        </div>
      )}
    </div>
  );
};

export default DatesFilter;
