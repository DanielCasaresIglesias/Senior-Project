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
        'Restrooms',
        'Showers',
        'Potable Water',
        'Visitor Center',
        'Interpretive Exibits/Museum',
        'Gift Shop/Store',
        'Tent Campsites',
        'RV Hook-ups',
        'Group Campsites/Cabins',
        'Picnic Areas',
        'Playgrounds',
        'Boat Launches/Docks',
        'Fishing Piers',
        'Parking Lots',
        'Event Spaces',
        'Educational Facilities',
        'Community Gardens',
        'Wi-Fi Access Points',
        'Bike Racks',
        'Bike Repair Stations',
        'EV Charging Stations',
        'Gas Stations',
        'Ranger Stations',
        'First Aid Stations',
      ]}
      onChange={onChange}
      initialSelected={initialSelected}
    />
  );
};

export default FacilitiesFilter;
