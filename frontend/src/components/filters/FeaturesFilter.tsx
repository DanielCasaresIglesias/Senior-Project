// frontend/src/components/filters/FeaturesFilter.tsx
import React from 'react';
import SearchableChecklistFilter from './base-filters/SearchableChecklistFilter';

type FeaturesFilterProps = {
  onChange: (selected: string[]) => void;
  initialSelected: string[];
};

const FeaturesFilter: React.FC<FeaturesFilterProps> = ({
  onChange,
  initialSelected,
}) => {
  return (
    <SearchableChecklistFilter
      label="Features"
      iconSrc="images/filter-icons/base-icons/features-icon.png"
      selectedIconSrc="images/filter-icons/selected-icons/features-icon.png"
      iconAlt="Features Icon"
      options={[
        'Old-Growth Forests',
        'Canyons/Gorges',
        'Rivers',
        'Lakes/Reservoirs/Ponds',
        'Beaches',
        'Sand Dunes',
        'Wetlands/Marshes',
        'Meadows/Grasslands',
        'Deserts',
        'Waterfalls',
        'Hot Springs',
        'Rock Formations',
        'Caves',
        'Volcanic Features',
        'Wildflower Fields',
        'Wildlife Habitats',
        'Tidepools',
        'Cultural/Historical Sites',
      ]}
      onChange={onChange}
      initialSelected={initialSelected}
    />
  );
};

export default FeaturesFilter;
