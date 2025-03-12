import React, { useState, useRef } from 'react';
import FilterButton from './FilterButton';
import useOutsideAlerter from '../../hooks/useOutsideAlerter';
import ApplyButton from './buttons/ApplyButton';
import ClearButton from './buttons/ClearButton';
import '../../styles/filters/distanceFilter.css';

const DistanceFilter = ({ onChange }) => {
  const [isOpen, setIsOpen] = useState(false);
  // Applied state: the values that are in effect
  const [appliedAddress, setAppliedAddress] = useState('');
  const [appliedMiles, setAppliedMiles] = useState('');
  // Temporary state: changes are stored here until Apply is clicked
  const [tempAddress, setTempAddress] = useState('');
  const [tempMiles, setTempMiles] = useState('');
  const wrapperRef = useRef(null);
  useOutsideAlerter(wrapperRef, () => setIsOpen(false));

  // When opening the popup, initialize temporary state from applied values.
  const togglePopup = () => {
    if (!isOpen) {
      setTempAddress(appliedAddress);
      setTempMiles(appliedMiles);
    }
    setIsOpen(!isOpen);
  };

  const handleAddressChange = (e) => {
    setTempAddress(e.target.value);
  };

  const handleMilesChange = (e) => {
    const newMiles = e.target.value;
    // Accept empty value or a positive number only
    if (newMiles === '' || Number(newMiles) > 0) {
      setTempMiles(newMiles);
    }
  };

  const applySelection = () => {
    // Commit the temporary values to the applied state.
    setAppliedAddress(tempAddress);
    setAppliedMiles(tempMiles);
    // Notify parent with the new values.
    onChange({ address: tempAddress, miles: tempMiles });
    setIsOpen(false);
  };

  const clearSelection = () => {
    // Reset temporary values.
    setTempAddress('');
    setTempMiles('');
    // Reset applied values.
    setAppliedAddress('');
    setAppliedMiles('');
    // Notify parent of the cleared values.
    onChange({ address: '', miles: '' });
    setIsOpen(false);
  };

  return (
    <div className="filter distance-filter" ref={wrapperRef}>
      <FilterButton
        onClick={togglePopup}
        variant="primary"
        iconSrc="images/filter-icons/distance-icon.png"
        iconAlt="Distance Icon"
      >
        Distance
      </FilterButton>
      {isOpen && (
        <div className="distance-filter-popup">
          <p className="title">Distance</p>
          <input
            type="text"
            placeholder="Enter address"
            value={tempAddress}
            onChange={handleAddressChange}
            className="address-input"
          />
          <input
            type="number"
            placeholder="Miles"
            value={tempMiles}
            onChange={handleMilesChange}
            className="miles-input"
          />
          <div className="buttons">
            <ApplyButton onClick={applySelection} />
            <ClearButton onClick={clearSelection} />
          </div>
        </div>
      )}
    </div>
  );
};

export default DistanceFilter;
