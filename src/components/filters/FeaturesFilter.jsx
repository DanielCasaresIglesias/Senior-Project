import React from 'react';
import SearchableChecklistFilter from './base-filters/SearchableChecklistFilter';

const FeaturesFilter = ({ onChange }) => {
  return (
    <SearchableChecklistFilter
      label="Features"
      iconSrc="images/filter-icons/base-icons/features-icon.png"
      iconAlt="Features Icon"
      options={[
        'Waterfalls', 'Beaches', 'Oldgrowth Forests', 'Cliffs', 'Summits',
        'Glaciers', 'Geysers', 'Volcanoes', 'Sand Dunes', 'Salt Flats', 'Lakes',
        'Rivers'
      ]}
      onChange={onChange}
    />
  );
};

export default FeaturesFilter;
