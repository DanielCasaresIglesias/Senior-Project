import React from 'react';
import RadioButtonFilter from './base-filters/RadioButtonFilter';

const ParkingFilter = ({ onChange }) => {
  return (
    <RadioButtonFilter
      label="Parking"
      iconSrc="images/filter-icons/parking-icon.png"
      iconAlt="Parking Icon"
      options={['None', 'Poor', 'Some', 'Plentiful']}
      onChange={onChange}
    />
  );
};

export default ParkingFilter;
