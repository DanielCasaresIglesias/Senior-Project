import React from 'react';
import SearchableChecklistFilter from './base-filters/SearchableChecklistFilter';


type ActivitiesFilterProps = {
  onChange: (selected: string[]) => void;
  initialSelected: string[];
};

const ActivitiesFilter: React.FC<ActivitiesFilterProps> = ({
  onChange,
  initialSelected
}) => {
  return (
    <SearchableChecklistFilter
      label="Activities"
      iconSrc="images/filter-icons/base-icons/activities-icon.png"
      selectedIconSrc="images/filter-icons/selected-icons/activities-icon.png"
      iconAlt="Activities Icon"
      options={[
        'Rock Climbing', 'Surfing', 'Kayaking', 'Hiking', 'Archery', 'Fishing',
        'Winter Sports', 'Guided Tours', 'Canoeing', 'Skiing', 'Snowboarding'
      ]}
      onChange={onChange}
      initialSelected={initialSelected}
    />
  );
};

export default ActivitiesFilter;
