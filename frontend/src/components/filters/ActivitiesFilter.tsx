// frontend/src/components/filters/ActivitiesFilter.tsx
import React from 'react';
import SearchableChecklistFilter from './base-filters/SearchableChecklistFilter';

type ActivitiesFilterProps = {
  onChange: (selected: string[]) => void;
  initialSelected: string[];
};

const ActivitiesFilter: React.FC<ActivitiesFilterProps> = ({
  onChange,
  initialSelected,
}) => {
  return (
    <SearchableChecklistFilter
      label="Activities"
      iconSrc="images/filter-icons/base-icons/activities-icon.png"
      selectedIconSrc="images/filter-icons/selected-icons/activities-icon.png"
      iconAlt="Activities Icon"
      options={[
        'Hiking',
        'Backpacking',
        'Mountain Biking',
        'Road Cycling',
        'Equestrian Riding',
        'Swimming',
        'Scuba Diving/Snorkeling',
        'Non-Motorized Boating',
        'Motorized Boating',
        'Surfing',
        'Fishing',
        'Guided Tours',
        'Birdwatching',
        'Whale Watching',
        'Snow Sports',
        'Rock Climbing',
        'Geocaching',
        'Sledding/tobogganing',
        'Hunting',
      ]}
      onChange={onChange}
      initialSelected={initialSelected}
    />
  );
};

export default ActivitiesFilter;
