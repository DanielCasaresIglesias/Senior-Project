import React from 'react';
import SearchableChecklistFilter from './base-filters/SearchableChecklistFilter';

type FacilitiesFilterProps = {
  onChange: (selected: string[]) => void;
  initialSelected: string[];
};

const FacilitiesFilter: React.FC<FacilitiesFilterProps> = ({
  onChange,
  initialSelected
}) => {
  return (
    <SearchableChecklistFilter
      label="Facilities"
      iconSrc="images/filter-icons/base-icons/facilities-icon.png"
      selectedIconSrc="images/filter-icons/selected-icons/facilities-icon.png"
      iconAlt="Facilities Icon"
      options={['Museum', 'Ranger Station', 'Bathrooms', 'Picnic Areas']}
      onChange={onChange}
      initialSelected={initialSelected}
    />
  );
};

export default FacilitiesFilter;
