// frontend/src/components/filters/FacilitiesFilter.tsx
import React from 'react';
import SearchableChecklistFilter from './base-filters/SearchableChecklistFilter';

type FacilitiesFilterProps = {
  onChange: (selected: string[]) => void;
  initialSelected: string[];
};

const FacilitiesFilter: React.FC<FacilitiesFilterProps> = ({
  onChange,
  initialSelected,
}) => {
  return (
    <SearchableChecklistFilter
      label="Facilities"
      iconSrc="images/filter-icons/base-icons/facilities-icon.png"
      selectedIconSrc="images/filter-icons/selected-icons/facilities-icon.png"
      iconAlt="Facilities Icon"
      options={[
        'Restroom',
        'Shower',
        'Potable Water',
        'Visitor Center',
        'Museum',
        'Gift Shop',
        'RV Hook-up',
        'Picnic Area',
        'Boat Launch/Dock',
        'Fishing Pier',
        'Parking Lot',
        'Event Space',
        'Educational Facility',
        'Wi-Fi Access Point',
        'Bike Rack',
        'Bike Repair Station',
        'EV Charging Station',
        'Gas Station',
        'Ranger Station',
        'First Aid Station',
      ]}
      onChange={onChange}
      initialSelected={initialSelected}
    />
  );
};

export default FacilitiesFilter;
