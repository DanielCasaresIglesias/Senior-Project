import React, { useState, useRef } from 'react';
import useOutsideAlerter from '../../hooks/useOutsideAlerter';
import FilterButton from './FilterButton';
import ApplyButton from './buttons/ApplyButton';
import ClearButton from './buttons/ClearButton';
import StarIcon from '../StarIcon';
import './styles/ratingFilter.css';

const RatingFilter = ({ onChange }) => {
  // Applied rating is the confirmed value
  const [appliedRating, setAppliedRating] = useState(0);
  // Temp rating stores user changes until Apply is clicked
  const [tempRating, setTempRating] = useState(0);
  const [isOpen, setIsOpen] = useState(false);
  const wrapperRef = useRef(null);

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
  const handleStarClick = (rating) => {
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

  return (
    <div className="filter rating-filter" ref={wrapperRef}>
      <FilterButton
        onClick={togglePopup}
        variant="primary"
        iconSrc="images/filter-icons/rating-icon.png"
        iconAlt="Rating Icon"
      >
        Rating
      </FilterButton>
      {isOpen && (
        <div className="rating-filter-popup">
          <p className="title">Rating</p>
          <div className="star-container">
            {ratingOptions.map((option) => {
              // If tempRating is 0, only the 0+ star is filled.
              // Otherwise, fill all stars with option.value >= tempRating.
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
