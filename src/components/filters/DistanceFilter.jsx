import React, { useState, useRef } from 'react';
import FilterButton from './FilterButton';
import useOutsideAlerter from '../../hooks/useOutsideAlerter';
import '../../styles/filters/distanceFilter.css';

const DistanceFilter = ({ onChange }) => {
  const [isOpen, setIsOpen] = useState(false);
  const [address, setAddress] = useState('');
  const [miles, setMiles] = useState('');
  const wrapperRef = useRef(null);
  useOutsideAlerter(wrapperRef, () => setIsOpen(false));

  // Immediately update parent when inputs change
  const handleAddressChange = (e) => {
    const newAddress = e.target.value;
    setAddress(newAddress);
    onChange({ address: newAddress, miles });
  };

  const handleMilesChange = (e) => {
    const newMiles = e.target.value;
    setMiles(newMiles);
    onChange({ address, miles: newMiles });
  };

  return (
    <div className="filter distance-filter" ref={wrapperRef}>
      <FilterButton
        onClick={() => setIsOpen(!isOpen)}
        variant="primary"
        iconSrc="images/filter-icons/distance-icon.png"
        iconAlt="Distance Icon"
      >
        Distance
      </FilterButton>
      {isOpen && (
        <div className="filter-popup">
          Distance
          <input
            type="text"
            placeholder="Enter address"
            value={address}
            onChange={handleAddressChange}
          />
          <input
            type="number"
            placeholder="Miles"
            value={miles}
            onChange={handleMilesChange}
          />
        </div>
      )}
    </div>
  );
};

export default DistanceFilter;
