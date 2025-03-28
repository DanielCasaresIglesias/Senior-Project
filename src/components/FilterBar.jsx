import React, { useState, useEffect } from 'react';
import DistanceFilter from './filters/DistanceFilter';
import TrailsFilter from './filters/TrailsFilter';
import ActivitiesFilter from './filters/ActivitiesFilter';
import FacilitiesFilter from './filters/FacilitiesFilter';
import FeaturesFilter from './filters/FeaturesFilter';
import RatingFilter from './filters/RatingFilter';
import StateFilter from './filters/StateFilter';
import RegionFilter from './filters/RegionFilter';
import AccessibilityFilter from './filters/AccessibilityFilter';
import PermitsFilter from './filters/PermitsFilter';
import PetPolicyFilter from './filters/PetPolicyFilter';
import DatesFilter from './filters/DatesFilter';
import WeatherFilter from './filters/WeatherFilter';
import ParkingFilter from './filters/ParkingFilter';
import FeesFilter from './filters/FeesFilter';
import FilterButton from './filters/FilterButton';
import './styles/filterBar.css';

const FilterBar = ({ onFiltersChange }) => {
  const [showMore, setShowMore] = useState(false);
  const [filters, setFilters] = useState({
    distance: null,
    trails: [],
    activities: [],
    facilities: [],
    features: [],
    rating: null,
    parkState: [],
    region: [],
    accessibility: [],
    permits: [],
    petPolicy: null,
    dates: null,
    weather: null,
    parking: null,
    cost: null,
  });
  // maxButtons includes the "More Filters" button on the first row.
  const [maxButtons, setMaxButtons] = useState(7);

  const updateFilter = (filterName, value) => {
    const newFilters = { ...filters, [filterName]: value };
    setFilters(newFilters);
    onFiltersChange(newFilters);
  };

  // Define your base filters (first row filters)
  const baseFilters = [
    <DistanceFilter key="distance" onChange={(val) => updateFilter('distance', val)} />,
    <TrailsFilter 
      key="trails" 
      onChange={(val) => updateFilter('trails', val)} 
      initialSelected={filters.trails} // Pass the pre-selected options here
    />,
    <ActivitiesFilter key="activities" onChange={(val) => updateFilter('activities', val)} />,
    <FacilitiesFilter key="facilities" onChange={(val) => updateFilter('facilities', val)} />,
    <FeaturesFilter key="features" onChange={(val) => updateFilter('features', val)} />,
    <RatingFilter key="rating" onChange={(val) => updateFilter('rating', val)} />,
  ];

  // Define your extra filters (the rest)
  const extraFilters = [
    <StateFilter key="parkState" onChange={(val) => updateFilter('parkState', val)} />,
    <RegionFilter key="region" onChange={(val) => updateFilter('region', val)} />,
    <AccessibilityFilter key="accessibility" onChange={(val) => updateFilter('accessibility', val)} />,
    <PermitsFilter key="permits" onChange={(val) => updateFilter('permits', val)} />,
    <PetPolicyFilter key="petPolicy" onChange={(val) => updateFilter('petPolicy', val)} />,
    <DatesFilter key="dates" onChange={(val) => updateFilter('dates', val)} />,
    <WeatherFilter key="weather" onChange={(val) => updateFilter('weather', val)} />,
    <ParkingFilter key="parking" onChange={(val) => updateFilter('parking', val)} />,
    <FeesFilter key="cost" onChange={(val) => updateFilter('cost', val)} />,
  ];

  // Reserve one slot for the "More Filters" button in the first row.
  const visibleBaseFilters = baseFilters.slice(0, maxButtons - 1);
  // Any base filters that didn't fit will be added to the extra filters.
  const additionalBaseFilters = baseFilters.slice(maxButtons - 1);

  // Combine filters that don't appear in the first row.
  const extraFiltersCombined = [...additionalBaseFilters, ...extraFilters];

  // Helper: split array into chunks of given size.
  const chunkArray = (array, size) => {
    const chunks = [];
    for (let i = 0; i < array.length; i += size) {
      chunks.push(array.slice(i, i + size));
    }
    return chunks;
  };

  // Chunk the extra filters into rows, each with `maxButtons` filters.
  const extraFilterRows = chunkArray(extraFiltersCombined, maxButtons);

  // Listen for window resize to update maxButtons.
  useEffect(() => {
    const handleResize = () => {
      let width = window.innerWidth;
      let buttons = 7;
      if (width < 1100) {
        // Every 125px decrease in width reduces available buttons by 1.
        buttons = 7 - Math.ceil((1100 - width) / 125);
        if (buttons < 3) buttons = 3;
      }
      setMaxButtons(buttons);
    };

    handleResize(); // initial run
    window.addEventListener('resize', handleResize);
    return () => window.removeEventListener('resize', handleResize);
  }, []);

  return (
    <div className="filter-bar-container">
      {/* First Row */}
      <div className="filter-row">
        {visibleBaseFilters.map((filter) => filter)}
        <FilterButton onClick={() => setShowMore(!showMore)}
          className="more-filters-button"
          variant="primary"
          iconSrc="images/filter-icons/base-icons/more-filters-icon.png"
          iconAlt="More Filters"
        >
          {showMore ? "Show Less" : "Show More"}
        </FilterButton>
      </div>
      {/* Expanded Filters Section */}
      {showMore && (
        <div className="expanded-filters visible">
          {extraFilterRows.map((row, index) => (
            <div key={index} className="filter-row">
              {row.map((filter) => filter)}
            </div>
          ))}
        </div>
      )}
    </div>
  );
};

export default FilterBar;
