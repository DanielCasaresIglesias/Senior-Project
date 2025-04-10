import React from 'react';
import RadioButtonFilter from './base-filters/RadioButtonFilter';


type FeesFilterProps = {
  onChange: (selected: string | null) => void;
  initialSelected: string | null;
};

const FeesFilter: React.FC<FeesFilterProps> = ({
  onChange,
  initialSelected
}) => {
  return (
    <RadioButtonFilter
      label="Cost"
      iconSrc="images/filter-icons/base-icons/fees-icon.png"
      selectedIconSrc="images/filter-icons/selected-icons/fees-icon.png"
      iconAlt="Cost Icon"
      options={['None', 'Poor', 'Some', 'Plentiful']}
      onChange={onChange}
      initialSelected={initialSelected}
    />
  );
};

export default FeesFilter;
