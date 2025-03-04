import React from 'react';
import RadioButtonFilter from './base-filters/RadioButtonFilter';

const CostFilter = ({ onChange }) => {
  return (
    <RadioButtonFilter
      label="Cost"
      iconSrc="images/filter-icons/cost-icon.png"
      iconAlt="Cost Icon"
      options={['None', 'Poor', 'Some', 'Plentiful']}
      onChange={onChange}
    />
  );
};

export default CostFilter;
