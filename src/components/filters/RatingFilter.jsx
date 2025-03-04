import React, { useState, useRef } from 'react';
import FilterButton from './FilterButton';
import useOutsideAlerter from '../../hooks/useOutsideAlerter';
import StarIcon from '../StarIcon';
import '../../styles/filters/ratingFilter.css';

const RatingFilter = ({ onChange }) => {
  const [selectedRating, setSelectedRating] = useState(0);
  const [isOpen, setIsOpen] = useState(false);
  const wrapperRef = useRef(null);
  
  useOutsideAlerter(wrapperRef, () => setIsOpen(false));

  // Define the rating options. 
  // Option 0 represents "0+" (All ratings). For options 2-5, if selected, all stars with value >= that are filled.
  const ratingOptions = [
    { value: 0, label: '0+' },
    { value: 2, label: '2' },
    { value: 3, label: '3' },
    { value: 4, label: '4' },
    { value: 5, label: '5' }
  ];

  const handleStarClick = (rating) => {
    setSelectedRating(rating);
    onChange(rating);
  };

  return (
    <div className="filter rating-filter" ref={wrapperRef}>
      <FilterButton
        onClick={() => setIsOpen(!isOpen)}
        variant="primary"
        iconSrc="images/filter-icons/rating-icon.png"
        iconAlt="Rating Icon"
      >
        Rating
      </FilterButton>
      {isOpen && (
        <div className="filter-popup rating-popup">
          Rating
          <div className="star-container">
            {ratingOptions.map((option) => {
              // If 0 is selected, only the 0+ star is filled.
              // Otherwise, fill all stars with value >= selectedRating.
              const filled = selectedRating === 0 ? (option.value === 0) : (option.value >= selectedRating);
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
        </div>
      )}
    </div>
  );
};

export default RatingFilter;
