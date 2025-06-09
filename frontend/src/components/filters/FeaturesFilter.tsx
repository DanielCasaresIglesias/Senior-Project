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
        'Old-Growth Forest',
        'Canyon',
        'River',
        'Lake/Reservoir',
        'Beach',
        'Sand Dune',
        'Wetland/Marsh',
        'Grassland',
        'Desert',
        'Waterfall',
        'Hot Spring',
        'Rock Formation',
        'Cave',
        'Volcanic Feature',
        'Wildflower Field',
        'Tidepool',
        'Cultural/Historical Site',
      ]}
      onChange={onChange}
      initialSelected={initialSelected}
    />
  );
};

export default FeaturesFilter;
