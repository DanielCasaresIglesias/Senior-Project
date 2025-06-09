import React, { useState } from 'react';
import StateFilter from './StateFilter';
import RegionFilter from './RegionFilter';
import AccessibilityFilter from './AccessibilityFilter';
import PermitsFilter from './PermitsFilter';
import PetPolicyFilter from './PetPolicyFilter';
// import DatesFilter from './DatesFilter';
// import WeatherFilter from './WeatherFilter';
import ParkingFilter from './ParkingFilter';
import FeesFilter from './FeesFilter';
import './styles/moreFilters.css';

type DateRange = { start: string; end: string };
type DistanceRange = { address: string; miles: string };

interface Filters {
  parkState: string[];
  region: string[];
  accessibility: string[];
  permits: string[];
  petPolicy: string | null;
  dates: DateRange | null;
  weather: string | null;
  parking: string | null;
  cost: string | null;
  // (You can add other keys if needed, but these are the ones MoreFilters uses.)
}

type MoreFiltersProps = {
  filters: Filters;
  updateFilter: <K extends keyof Filters>(filterName: K, value: Filters[K]) => void;
};

const MoreFilters: React.FC<MoreFiltersProps> = ({ filters, updateFilter }) => {
  const [isOpen, setIsOpen] = useState<boolean>(false);

  return (
    <div className="more-filters">
      <button
        onClick={() => setIsOpen((prev) => !prev)}
        className="more-filters-button"
      >
        More Filters
      </button>

      {isOpen && (
        <div className="more-filters-popup">
          <StateFilter
            onChange={(val) => updateFilter('parkState', val)}
            initialSelected={filters.parkState}
          />

          <RegionFilter
            onChange={(val) => updateFilter('region', val)}
            stateSelected={filters.parkState}
            initialSelected={filters.region}
          />

          <AccessibilityFilter
            onChange={(val) => updateFilter('accessibility', val)}
            initialSelected={filters.accessibility}
          />

          <PermitsFilter
            onChange={(val) => updateFilter('permits', val)}
            initialSelected={filters.permits}
          />

          <PetPolicyFilter
            onChange={(val) => updateFilter('petPolicy', val)}
            initialSelected={filters.petPolicy}
          />

          <ParkingFilter
            onChange={(val) => updateFilter('parking', val)}
            initialSelected={filters.parking}
          />

          <FeesFilter
            onChange={(val) => updateFilter('cost', val)}
            initialSelected={filters.cost}
          />
        </div>
      )}
    </div>
  );
};

export default MoreFilters;
