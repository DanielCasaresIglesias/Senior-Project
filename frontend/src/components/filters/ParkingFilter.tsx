import React from 'react';
import RadioButtonFilter from './base-filters/RadioButtonFilter';


type ParkingFilterProps = {
  onChange: (selected: string | null) => void;
  initialSelected: string | null;
};

const ParkingFilter: React.FC<ParkingFilterProps> = ({
  onChange,
  initialSelected
}) => {
  return (
    <RadioButtonFilter
      label="Parking"
      iconSrc="images/filter-icons/base-icons/parking-icon.png"
      selectedIconSrc="images/filter-icons/selected-icons/parking-icon.png"
      iconAlt="Parking Icon"
      options={['None', 'Poor', 'Some', 'Plentiful']}
      onChange={onChange}
      initialSelected={initialSelected}
    />
  );
};

export default ParkingFilter;
