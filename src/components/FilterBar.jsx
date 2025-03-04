import React, { useState } from 'react';
import DistanceFilter from './filters/DistanceFilter';
import TrailsFilter from './filters/TrailsFilter';
import ActivitiesFilter from './filters/ActivitiesFilter';
import FacilitiesFilter from './filters/FacilitiesFilter';
import FeaturesFilter from './filters/FeaturesFilter';
import RatingFilter from './filters/RatingFilter';
import MoreFilters from './filters/MoreFilters';
import ParkStateFilter from './filters/ParkStateFilter';
import RegionFilter from './filters/RegionFilter';
import AccessibilityFilter from './filters/AccessibilityFilter';
import PermitsFilter from './filters/PermitsFilter';
import PetPolicyFilter from './filters/PetPolicyFilter';
import DatesFilter from './filters/DatesFilter';
import WeatherFilter from './filters/WeatherFilter';
import ParkingFilter from './filters/ParkingFilter';
import CostFilter from './filters/CostFilter';
import '../styles/filterBar.css';

const FilterBar = ({ onFiltersChange }) => {
  const [showMore, setShowMore] = useState(false);
  const [filters, setFilters] = useState({
    distance: null,
    trails: [],
    activities: [],
    facilities: [],
    features: [],
    rating: null,
    // More Filters:
    parkState: null,
    region: null,
    accessibility: [],
    permits: [],
    petPolicy: null,
    dates: null,
    weather: null,
    parking: null,
    cost: null,
  });

  const updateFilter = (filterName, value) => {
    const newFilters = { ...filters, [filterName]: value };
    setFilters(newFilters);
    onFiltersChange(newFilters);
  };

  return (
    <div className="filter-bar-container">
      {/* First Row of Filters */}
      <div className="filter-row">
        <DistanceFilter onChange={(val) => updateFilter('distance', val)} />
        <TrailsFilter onChange={(val) => updateFilter('trails', val)} />
        <ActivitiesFilter onChange={(val) => updateFilter('activities', val)} />
        <FacilitiesFilter onChange={(val) => updateFilter('facilities', val)} />
        <FeaturesFilter onChange={(val) => updateFilter('features', val)} />
        <RatingFilter onChange={(val) => updateFilter('rating', val)} />
        <button className="more-filters-btn" onClick={() => setShowMore(!showMore)}>
          {showMore ? "Show Less" : "More Filters"}
        </button>
      </div>

      {/* Second & Third Row of Filters (Shown Together) */}
      <div className={`expanded-filters ${showMore ? 'visible' : ''}`}>
        <div className="filter-row">
          <ParkStateFilter onChange={(val) => updateFilter('parkState', val)} />
          <RegionFilter onChange={(val) => updateFilter('region', val)} />
          <AccessibilityFilter onChange={(val) => updateFilter('accessibility', val)} />
          <PermitsFilter onChange={(val) => updateFilter('permits', val)} />
          <PetPolicyFilter onChange={(val) => updateFilter('petPolicy', val)} />
          <DatesFilter onChange={(val) => updateFilter('dates', val)} />
        </div>
        <div className="filter-row">
          <WeatherFilter onChange={(val) => updateFilter('weather', val)} />
          <ParkingFilter onChange={(val) => updateFilter('parking', val)} />
          <CostFilter onChange={(val) => updateFilter('cost', val)} />
        </div>
      </div>
    </div>
  );
};

export default FilterBar;
