// FindAPark.tsx
import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import FilterBar from '../../../components/FilterBar';
import SearchButton from '../../../components/SearchButton';
import type { Filters } from '../../../types/filters';
import '../styles/findAPark.css';


const FindAPark: React.FC = () => {
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
  const navigate = useNavigate();

  const handleFiltersChange = (newFilters: Filters): void => {
    setFilters(newFilters);
  };

  const handleFilterPopupClose = (updatedFilters: Filters) => {
    const params = new URLSearchParams();
    // Convert updatedFilters to params (example omitted)
    navigate(`/search/results?${params.toString()}`);
    window.location.reload();
  };

  const handleSearch = (): void => {
    const queryParams = new URLSearchParams();

    if (filters.distance) {
      if (filters.distance.address) {
        queryParams.append('address', filters.distance.address);
      }
      if (filters.distance.miles) {
        queryParams.append('miles', filters.distance.miles);
      }
    }
    if (filters.trails.length) {
      queryParams.append('trails', filters.trails.join(','));
    }
    if (filters.activities.length) {
      queryParams.append('activities', filters.activities.join(','));
    }
    if (filters.facilities.length) {
      queryParams.append('facilities', filters.facilities.join(','));
    }
    if (filters.features.length) {
      queryParams.append('features', filters.features.join(','));
    }
    if (filters.rating !== null) {
      queryParams.append('rating', filters.rating.toString());
    }
    if (filters.parkState.length) {
      queryParams.append('parkState', filters.parkState.join(','));
    }
    if (filters.region.length) {
      queryParams.append('region', filters.region.join(','));
    }
    if (filters.accessibility.length) {
      queryParams.append('accessibility', filters.accessibility.join(','));
    }
    if (filters.permits.length) {
      queryParams.append('permits', filters.permits.join(','));
    }
    if (filters.petPolicy) {
      queryParams.append('petPolicy', filters.petPolicy);
    }
    if (filters.dates) {
      if (filters.dates.start) {
        queryParams.append('startDate', filters.dates.start);
      }
      if (filters.dates.end) {
        queryParams.append('endDate', filters.dates.end);
      }
    }
    if (filters.weather) {
      queryParams.append('weather', filters.weather);
    }
    if (filters.parking) {
      queryParams.append('parking', filters.parking);
    }
    if (filters.cost) {
      queryParams.append('cost', filters.cost);
    }

    navigate(`/search/results?${queryParams.toString()}`);
  };

  return (
    <div className="find-a-park">
      Find a Park
      <SearchButton onClick={handleSearch} />
      <div className="filter-bar-container">
        <FilterBar
          onFiltersChange={handleFiltersChange}
          onFilterPopupClose={handleFilterPopupClose}
          initialFilters={filters}
        />
      </div>
    </div>
  );
};

export default FindAPark;
