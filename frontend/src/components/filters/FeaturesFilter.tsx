import React from 'react';
import SearchableChecklistFilter from './base-filters/SearchableChecklistFilter';

type FeaturesFilterProps = {
  onChange: (selected: string[]) => void;
  initialSelected: string[];
};

const FeaturesFilter: React.FC<FeaturesFilterProps> = ({
  onChange,
  initialSelected
}) => {
  return (
    <SearchableChecklistFilter
      label="Features"
      iconSrc="images/filter-icons/base-icons/features-icon.png"
      selectedIconSrc="images/filter-icons/selected-icons/features-icon.png"
      iconAlt="Features Icon"
      options={[
        'Waterfalls', 'Beaches', 'Oldgrowth Forests', 'Cliffs', 'Summits',
        'Glaciers', 'Geysers', 'Volcanoes', 'Sand Dunes', 'Salt Flats', 'Lakes',
        'Rivers'
      ]}
      onChange={onChange}
      initialSelected={initialSelected}
    />
  );
};

export default FeaturesFilter;
