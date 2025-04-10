import React, { useState, useRef } from 'react';
import useOutsideAlerter from '../../hooks/useOutsideAlerter';
import FilterButton from './base-filters/FilterButton';
import ApplyButton from './buttons/ApplyButton';
import ClearButton from './buttons/ClearButton';
import StarIcon from '../StarIcon';
import './styles/ratingFilter.css';

type RatingFilterProps = {
  label: string;
  iconSrc: string;
  selectedIconSrc: string;
  iconAlt: string;
  onChange: (selected: number) => void;
  initialSelected?: number;
};

const RatingFilter: React.FC<RatingFilterProps> = ({
  label,
  iconSrc,
  selectedIconSrc,
  iconAlt,
  onChange,
  initialSelected = 0,
}) => {
  const [isOpen, setIsOpen] = useState(false);
  const [appliedRating, setAppliedRating] = useState<number>(initialSelected);
  const [tempRating, setTempRating] = useState<number>(initialSelected);
  const wrapperRef = useRef<HTMLDivElement>(null);

  useOutsideAlerter(wrapperRef, () => setIsOpen(false));

  // Rating options: 0 represents "0+" (all ratings), then 2-5.
  const ratingOptions = [
    { value: 0, label: '0+' },
    { value: 2, label: '2' },
    { value: 3, label: '3' },
    { value: 4, label: '4' },
    { value: 5, label: '5' }
  ];

  // When opening the popup, initialize temp rating from the applied rating.
  const togglePopup = () => {
    if (!isOpen) {
      setTempRating(appliedRating);
    }
    setIsOpen(!isOpen);
  };

  // Update temporary rating on star click (does not apply immediately)
  const handleStarClick = (rating: number) => {
    setTempRating(rating);
  };

  // Apply temporary rating: update applied rating and notify parent.
  const applySelection = () => {
    setAppliedRating(tempRating);
    onChange(tempRating);
    setIsOpen(false);
  };

  // Clear the selection: reset temporary and applied rating.
  const clearSelection = () => {
    setTempRating(0);
    setAppliedRating(0);
    onChange(0);
    setIsOpen(false);
  };

  const isFilterActive = appliedRating > 0; // If applied rating is more than 0, the filter is active.

  return (
    <div className="filter rating-filter" ref={wrapperRef}>
      <FilterButton
        onClick={togglePopup}
        variant={isFilterActive ? "selected" : "primary"} // Toggle variant based on active state
        iconSrc={isFilterActive ? selectedIconSrc : iconSrc} // Use selected icon when active
        iconAlt={iconAlt}
        label={label}
      />
      {isOpen && (
        <div className="rating-filter-popup">
          <p className="title">{label}</p>
          <div className="star-container">
            {ratingOptions.map((option) => {
              const filled =
                tempRating === 0 ? (option.value === 0) : (option.value >= tempRating);
              return (
                <StarIcon
                  key={option.value}
                  label={option.label}
                  filled={filled}
                  onClick={() => handleStarClick(option.value)}
                />
              );
            })}
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

export default RatingFilter;
