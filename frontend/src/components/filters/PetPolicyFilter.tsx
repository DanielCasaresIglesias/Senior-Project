// frontend/src/components/filters/PetPolicyFilter.tsx
import React, { useState, useRef } from 'react';
import useOutsideAlerter from '../../hooks/useOutsideAlerter';
import FilterButton from './base-filters/FilterButton';
import ApplyButton from './buttons/ApplyButton';
import ClearButton from './buttons/ClearButton';
// import '../styles/petPolicyFilter.css';

type PetPolicyFilterProps = {
  onChange: (selected: string) => void;
  initialSelected: string | null;
};

/**
 * A single dropdown (radio list) of pet‐policy choices.
 * Options: 'No Pets Allowed', 'Parking Lot Only', 'Pets Allowed (Limited)', 'Pets Allowed', 'Pets Allowed on Leash', 'Service Animals Only'
 */
const PetPolicyFilter: React.FC<PetPolicyFilterProps> = ({
  onChange,
  initialSelected,
}) => {
  const options = [
    'No Pets Allowed',
    'Parking Lot Only',
    'Pets Allowed (Limited)',
    'Pets Allowed',
    'Pets Allowed on Leash',
    'Service Animals Only',
  ];

  const [isOpen, setIsOpen] = useState(false);
  const [tempSelected, setTempSelected] = useState<string | null>(
    initialSelected
  );
  const [appliedSelected, setAppliedSelected] = useState<string | null>(
    initialSelected
  );
  const wrapperRef = useRef<HTMLDivElement>(null);

  useOutsideAlerter(wrapperRef, () => setIsOpen(false));

  const togglePopup = () => {
    if (!isOpen) {
      setTempSelected(appliedSelected);
    }
    setIsOpen(!isOpen);
  };

  const handleRadioChange = (val: string) => {
    setTempSelected(val);
  };

  const applySelection = () => {
    setAppliedSelected(tempSelected);
    onChange(tempSelected!);
    setIsOpen(false);
  };

  const clearSelection = () => {
    setTempSelected(null);
    setAppliedSelected(null);
    onChange('');
    setIsOpen(false);
  };

  const isActive = appliedSelected !== null && appliedSelected !== '';

  return (
    <div className="filter petpolicy-filter" ref={wrapperRef}>
      <FilterButton
        onClick={togglePopup}
        variant={isActive ? 'selected' : 'primary'}
        iconSrc={
          isActive
            ? 'images/filter-icons/selected-icons/pet-policy-icon.png'
            : 'images/filter-icons/base-icons/pet-policy-icon.png'
        }
        iconAlt="Pet Policy Icon"
        label="Pet Policy"
      />
      {isOpen && (
        <div className="petpolicy-filter-popup">
          <p className="title">Pet Policy</p>
          <div className="options">
            {options.map(opt => (
              <label key={opt} className="option">
                <input
                  type="radio"
                  name="petPolicy"
                  checked={tempSelected === opt}
                  onChange={() => handleRadioChange(opt)}
                />
                {opt}
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

export default PetPolicyFilter;
