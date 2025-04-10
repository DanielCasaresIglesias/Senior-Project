import React from 'react';
import SearchableChecklistFilter from './base-filters/SearchableChecklistFilter';

const FacilitiesFilter = ({ onChange }) => {
  return (
    <SearchableChecklistFilter
      label="Facilities"
      iconSrc="images/filter-icons/base-icons/facilities-icon.png"
      iconAlt="Facilities Icon"
      options={['Museum', 'Ranger Station', 'Bathrooms', 'Picnic Areas']}
      onChange={onChange}
    />
  );
};

export default FacilitiesFilter;
