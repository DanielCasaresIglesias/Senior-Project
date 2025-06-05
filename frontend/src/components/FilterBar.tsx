// FilterBar.tsx
import React, { useState, useEffect, type ReactNode } from 'react';
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
import FilterButton from './filters/base-filters/FilterButton';

import type { Filters } from '../types/filters';
import './styles/filterBar.css';

type FilterBarProps = {
  onFiltersChange: (newFilters: Filters) => void;
  onFilterPopupClose: (updatedFilters: Filters) => void;
  initialFilters: Filters;
};

const FilterBar: React.FC<FilterBarProps> = ({ onFiltersChange }) => {
  const [showMore, setShowMore] = useState<boolean>(false);
  const [filters, setFilters] = useState<Filters>({
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
  const [maxButtons, setMaxButtons] = useState<number>(7);

  const updateFilter = <K extends keyof Filters>(filterName: K, value: Filters[K]) => {
    const newFilters = { ...filters, [filterName]: value };
    setFilters(newFilters);
    onFiltersChange(newFilters);
  };

  // Define your base filters (first row filters)
  const baseFilters: ReactNode[] = [
    <DistanceFilter
      key="distance"
      label="Distance"
      iconSrc="images/filter-icons/base-icons/distance-icon.png"
      selectedIconSrc="images/filter-icons/selected-icons/distance-icon.png"
      iconAlt="Distance Icon"
      onChange={(val) => updateFilter('distance', val)}
      initialAddress={filters.distance?.address || ''}
      initialMiles={filters.distance?.miles || ''}
    />,
    <TrailsFilter
      key="trails"
      onChange={(val) => updateFilter('trails', val)}
      initialSelected={filters.trails}
    />,
    <ActivitiesFilter
      key="activities"
      onChange={(val) => updateFilter('activities', val)}
      initialSelected={filters.activities}
    />,
    <FacilitiesFilter
      key="facilities"
      onChange={(val) => updateFilter('facilities', val)}
      initialSelected={filters.facilities}
    />,
    <FeaturesFilter
      key="features"
      onChange={(val) => updateFilter('features', val)}
      initialSelected={filters.features}
    />,
    <RatingFilter
      key="rating"
      label="Rating"
      iconSrc="images/filter-icons/base-icons/rating-icon.png"
      selectedIconSrc="images/filter-icons/selected-icons/rating-icon.png"
      iconAlt="Rating Icon"
      onChange={(val) => updateFilter('rating', val)}
      initialSelected={filters.rating ?? 0}
    />,
  ];

  // Define your extra filters (the rest)
  const extraFilters: ReactNode[] = [
    <StateFilter
      key="parkState"
      onChange={(val) => updateFilter('parkState', val)}
      initialSelected={filters.parkState}
    />,
    <RegionFilter
      key="region"
      onChange={(val) => updateFilter('region', val)}
      stateSelected={filters.parkState}
      initialSelected={filters.region}
    />,
    <AccessibilityFilter
      key="accessibility"
      onChange={(val) => updateFilter('accessibility', val)}
      initialSelected={filters.accessibility}
    />,
    <PermitsFilter
      key="permits"
      onChange={(val) => updateFilter('permits', val)}
      initialSelected={filters.permits}
    />,
    <PetPolicyFilter
      key="petPolicy"
      onChange={(val) => updateFilter('petPolicy', val)}
      initialSelected={filters.petPolicy ? filters.petPolicy : null}
    />,
    <DatesFilter
      key="dates"
      label="Dates"
      iconSrc="images/filter-icons/base-icons/date-icon.png"
      selectedIconSrc="images/filter-icons/selected-icons/date-icon.png"
      iconAlt="Calendar Icon"
      onChange={(val) => updateFilter('dates', val)}
      initialSelected={filters.dates ?? { start: '', end: '' }}
    />,
    <WeatherFilter
      key="weather"
      onChange={(val) => updateFilter('weather', val)}
      initialSelected={filters.weather}
    />,
    <ParkingFilter
      key="parking"
      onChange={(val) => updateFilter('parking', val)}
      initialSelected={filters.parking}
    />,
    <FeesFilter
      key="cost"
      onChange={(val) => updateFilter('cost', val)}
      initialSelected={filters.cost}
    />,
  ];

  // Reserve one slot for the "More Filters" button in the first row.
  const visibleBaseFilters = baseFilters.slice(0, maxButtons - 1);
  // Any base filters that didn't fit will be added to the extra filters.
  const additionalBaseFilters = baseFilters.slice(maxButtons - 1);

  // Combine filters that don't appear in the first row.
  const extraFiltersCombined: ReactNode[] = [...additionalBaseFilters, ...extraFilters];

  // Helper: split array into chunks of given size.
  const chunkArray = <T,>(array: T[], size: number): T[][] => {
    const chunks: T[][] = [];
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
      const width = window.innerWidth;
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
        {visibleBaseFilters.map((filterNode, idx) => (
          <React.Fragment key={idx}>{filterNode}</React.Fragment>
        ))}
        <FilterButton
          onClick={() => setShowMore((prev) => !prev)}
          label={showMore ? 'Show Less' : 'Show More'}
          variant="primary"
          iconSrc="images/filter-icons/base-icons/more-filters-icon.png"
          iconAlt="More Filters"
          // children= {showMore ? 'Show Less' : 'Show More'}
        >
        </FilterButton>
      </div>
      {/* Expanded Filters Section */}
      {showMore && (
        <div className="expanded-filters visible">
          {extraFilterRows.map((row, rowIndex) => (
            <div key={rowIndex} className="filter-row">
              {row.map((filterNode, idx) => (
                <React.Fragment key={idx}>{filterNode}</React.Fragment>
              ))}
            </div>
          ))}
        </div>
      )}
    </div>
  );
};

export default FilterBar;
