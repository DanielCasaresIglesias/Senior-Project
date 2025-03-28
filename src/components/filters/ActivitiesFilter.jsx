import React from 'react';
import SearchableChecklistFilter from './base-filters/SearchableChecklistFilter';

const ActivitiesFilter = ({ onChange }) => {
  return (
    <SearchableChecklistFilter
      label="Activities"
      iconSrc="images/filter-icons/base-icons/activities-icon.png"
      iconAlt="Activities Icon"
      options={[
        'Rock Climbing', 'Surfing', 'Kayaking', 'Hiking', 'Archery', 'Fishing',
        'Winter Sports', 'Guided Tours', 'Canoeing', 'Skiing', 'Snowboarding'
      ]}
      onChange={onChange}
    />
  );
};

export default ActivitiesFilter;
