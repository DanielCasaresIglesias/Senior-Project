import React, { useState } from 'react';
import StateFilter from './StateFilter';
import RegionFilter from './RegionFilter';
import AccessibilityFilter from './AccessibilityFilter';
import PermitsFilter from './PermitsFilter';
import PetPolicyFilter from './PetPolicyFilter';
import DatesFilter from './DatesFilter';
import WeatherFilter from './WeatherFilter';
import ParkingFilter from './ParkingFilter';
import CostFilter from './CostFilter';

const MoreFilters = ({ filters, updateFilter }) => {
  const [isOpen, setIsOpen] = useState(false);

  return (
    <div className="more-filters">
      <button onClick={() => setIsOpen(!isOpen)}>More Filters</button>
      {isOpen && (
        <div className="more-filters-popup">
          <StateFilter onChange={(val) => updateFilter('parkState', val)} />
          <RegionFilter onChange={(val) => updateFilter('region', val)} stateSelected={filters.parkState} />
          <AccessibilityFilter onChange={(val) => updateFilter('accessibility', val)} />
          <PermitsFilter onChange={(val) => updateFilter('permits', val)} />
          <PetPolicyFilter onChange={(val) => updateFilter('petPolicy', val)} />
          <DatesFilter onChange={(val) => updateFilter('dates', val)} />
          <WeatherFilter onChange={(val) => updateFilter('weather', val)} />
          <ParkingFilter onChange={(val) => updateFilter('parking', val)} />
          <CostFilter onChange={(val) => updateFilter('cost', val)} />
        </div>
      )}
    </div>
  );
};

export default MoreFilters;
