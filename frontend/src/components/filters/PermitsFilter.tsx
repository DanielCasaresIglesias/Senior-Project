// frontend/src/components/filters/PermitsFilter.tsx
import React, { useState, useRef } from 'react';
import useOutsideAlerter from '../../hooks/useOutsideAlerter';
import FilterButton from './base-filters/FilterButton';
import ApplyButton from './buttons/ApplyButton';
import ClearButton from './buttons/ClearButton';
// import '../styles/permitsFilter.css';

type PermitsFilterProps = {
  onChange: (selected: string[]) => void;
  initialSelected: string[];
};

/**
 * Renders a single “Permits” button whose dropdown shows three sections (drone, fishing, hunting).
 * Each is a simple checkbox—users can check none, one, two, or all three.
 */
const PermitsFilter: React.FC<PermitsFilterProps> = ({
  onChange,
  initialSelected,
}) => {
  const [isOpen, setIsOpen] = useState(false);
  const [tempSelected, setTempSelected] = useState<string[]>(initialSelected);
  const [appliedSelected, setAppliedSelected] = useState<string[]>(initialSelected);
  const wrapperRef = useRef<HTMLDivElement>(null);

  useOutsideAlerter(wrapperRef, () => setIsOpen(false));

  const togglePopup = () => {
    if (!isOpen) {
      setTempSelected(appliedSelected);
    }
    setIsOpen(!isOpen);
  };

  const handleCheckboxChange = (permType: string) => {
    setTempSelected(prev =>
      prev.includes(permType)
        ? prev.filter(x => x !== permType)
        : [...prev, permType]
    );
  };

  const applySelection = () => {
    setAppliedSelected(tempSelected);
    onChange(tempSelected);
    setIsOpen(false);
  };

  const clearSelection = () => {
    setTempSelected([]);
    setAppliedSelected([]);
    onChange([]);
    setIsOpen(false);
  };

  const isActive = appliedSelected.length > 0;

  return (
    <div className="filter permits-filter" ref={wrapperRef}>
      <FilterButton
        onClick={togglePopup}
        variant={isActive ? 'selected' : 'primary'}
        iconSrc={
          isActive
            ? 'images/filter-icons/selected-icons/permit-icon.png'
            : 'images/filter-icons/base-icons/permit-icon.png'
        }
        iconAlt="Permit Icon"
        label="Permits"
      />
      {isOpen && (
        <div className="permits-filter-popup">
          <p className="title">Permits</p>
          <div className="sections">
            <div className="section">
              <h4>Drone</h4>
              <label>
                <input
                  type="checkbox"
                  checked={tempSelected.includes('drone')}
                  onChange={() => handleCheckboxChange('drone')}
                />
                Drone Permit
              </label>
            </div>
            <div className="section">
              <h4>Fishing</h4>
              <label>
                <input
                  type="checkbox"
                  checked={tempSelected.includes('fishing')}
                  onChange={() => handleCheckboxChange('fishing')}
                />
                Fishing Permit
              </label>
            </div>
            <div className="section">
              <h4>Hunting</h4>
              <label>
                <input
                  type="checkbox"
                  checked={tempSelected.includes('hunting')}
                  onChange={() => handleCheckboxChange('hunting')}
                />
                Hunting Permit
              </label>
            </div>
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

export default PermitsFilter;
