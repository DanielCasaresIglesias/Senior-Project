import React from 'react';
import RadioButtonFilter from './base-filters/RadioButtonFilter';

const FeesFilter = ({ onChange }) => {
  return (
    <RadioButtonFilter
      label="Cost"
      iconSrc="images/filter-icons/base-icons/fees-icon.png"
      iconAlt="Cost Icon"
      options={['None', 'Poor', 'Some', 'Plentiful']}
      onChange={onChange}
    />
  );
};

export default FeesFilter;
