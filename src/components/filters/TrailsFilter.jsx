import React from 'react';
import ChecklistFilter from './base-filters/ChecklistFilter';

const TrailsFilter = ({ onChange, initialSelected=[] }) => {
  return (
    <ChecklistFilter
      label="Trails"
      iconSrc="images/filter-icons/base-icons/trails-icon.png"
      selectedIconSrc="images/filter-icons/selected-icons/trails-icon.png"
      iconAlt="Trails Icon"
      options={['Hiking', 'Mountain Biking', 'Horseback Riding']}
      onChange={onChange}
      initialSelected={initialSelected}
    />
  );
};

export default TrailsFilter;
