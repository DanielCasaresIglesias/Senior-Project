import React from 'react';
import ChecklistFilter from './base-filters/ChecklistFilter';

const TrailsFilter = ({ onChange }) => {
  return (
    <ChecklistFilter
      label="Trails"
      iconSrc="images/filter-icons/trails-icon.png"
      iconAlt="Trails Icon"
      options={['Hiking', 'Mountain Biking', 'Horseback Riding']}
      onChange={onChange}
    />
  );
};

export default TrailsFilter;
