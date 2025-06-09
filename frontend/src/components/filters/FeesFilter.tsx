// frontend/src/components/filters/FeesFilter.tsx
import React, { useState, useRef } from 'react';
import useOutsideAlerter from '../../hooks/useOutsideAlerter';
import FilterButton from './base-filters/FilterButton';
import ApplyButton from './buttons/ApplyButton';
import ClearButton from './buttons/ClearButton';
// import './styles/feesFilter.css';

type FeesFilterProps = {
  onChange: (range: { min: number; max: number }) => void;
  initialMin: number;
  initialMax: number;
};

/**
 * “Cost” filter: identical shape to ParkingFilter, but for entry fees.
 * Range from $0 to $50 (or adjust to your maximum park entry fee).
 */
const FeesFilter: React.FC<FeesFilterProps> = ({
  onChange,
  initialMin,
  initialMax,
}) => {
  const wrapperRef = useRef<HTMLDivElement>(null);
  useOutsideAlerter(wrapperRef, () => setIsOpen(false));

  const [isOpen, setIsOpen] = useState(false);
  const [tempMin, setTempMin] = useState(initialMin);
  const [tempMax, setTempMax] = useState(initialMax);
  const [appliedMin, setAppliedMin] = useState(initialMin);
  const [appliedMax, setAppliedMax] = useState(initialMax);

  const ABS_MIN = 0;
  const ABS_MAX = 50;

  const togglePopup = () => {
    if (!isOpen) {
      setTempMin(appliedMin);
      setTempMax(appliedMax);
    }
    setIsOpen(!isOpen);
  };

  const handleSliderChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const [low, high] = e.target.value.split(',').map(Number);
    if (!isNaN(low) && !isNaN(high)) {
      setTempMin(low);
      setTempMax(high);
    }
  };

  const handleMinInput = (e: React.ChangeEvent<HTMLInputElement>) => {
    const val = Number(e.target.value);
    if (!isNaN(val) && val >= ABS_MIN && val <= tempMax) {
      setTempMin(val);
    }
  };
  const handleMaxInput = (e: React.ChangeEvent<HTMLInputElement>) => {
    const val = Number(e.target.value);
    if (!isNaN(val) && val <= ABS_MAX && val >= tempMin) {
      setTempMax(val);
    }
  };

  const applySelection = () => {
    setAppliedMin(tempMin);
    setAppliedMax(tempMax);
    onChange({ min: tempMin, max: tempMax });
    setIsOpen(false);
  };

  const clearSelection = () => {
    setTempMin(ABS_MIN);
    setTempMax(ABS_MAX);
    setAppliedMin(ABS_MIN);
    setAppliedMax(ABS_MAX);
    onChange({ min: ABS_MIN, max: ABS_MAX });
    setIsOpen(false);
  };

  const isActive = appliedMin !== ABS_MIN || appliedMax !== ABS_MAX;

  return (
    <div className="filter fees-filter" ref={wrapperRef}>
      <FilterButton
        onClick={togglePopup}
        variant={isActive ? 'selected' : 'primary'}
        iconSrc={
          isActive
            ? 'images/filter-icons/selected-icons/fees-icon.png'
            : 'images/filter-icons/base-icons/fees-icon.png'
        }
        iconAlt="Fees Icon"
        label="Cost"
      />
      {isOpen && (
        <div className="fees-filter-popup">
          <p className="title">Entry Fee Range ($)</p>
          <div className="slider-row">
            <input
              type="range"
              min={ABS_MIN}
              max={ABS_MAX}
              value={`${tempMin},${tempMax}`}
              onChange={handleSliderChange}
              className="dual-slider"
              step={1}
            />
          </div>
          <div className="inputs-row">
            <input
              type="number"
              value={tempMin}
              onChange={handleMinInput}
              min={ABS_MIN}
              max={tempMax}
            />
            <span>to</span>
            <input
              type="number"
              value={tempMax}
              onChange={handleMaxInput}
              min={tempMin}
              max={ABS_MAX}
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

export default FeesFilter;
