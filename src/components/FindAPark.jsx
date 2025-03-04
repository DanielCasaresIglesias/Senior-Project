import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import FilterBar from './FilterBar';
import '../styles/findAPark.css';

const FindAPark = () => {
  const [filters, setFilters] = useState({});
  const navigate = useNavigate();

  const handleFiltersChange = (newFilters) => {
    setFilters(newFilters);
  };

  const handleSearch = () => {
    const queryParams = new URLSearchParams();

    if (filters.distance) {
      if (filters.distance.address) queryParams.append('address', filters.distance.address);
      if (filters.distance.miles) queryParams.append('miles', filters.distance.miles);
    }
    if (filters.trails && filters.trails.length)
      queryParams.append('trails', filters.trails.join(','));
    if (filters.activities && filters.activities.length)
      queryParams.append('activities', filters.activities.join(','));
    if (filters.facilities && filters.facilities.length)
      queryParams.append('facilities', filters.facilities.join(','));
    if (filters.features && filters.features.length)
      queryParams.append('features', filters.features.join(','));
    if (filters.rating) queryParams.append('rating', filters.rating);
    if (filters.parkState) queryParams.append('parkState', filters.parkState);
    if (filters.region) queryParams.append('region', filters.region);
    if (filters.accessibility && filters.accessibility.length)
      queryParams.append('accessibility', filters.accessibility.join(','));
    if (filters.permits && filters.permits.length)
      queryParams.append('permits', filters.permits.join(','));
    if (filters.petPolicy) queryParams.append('petPolicy', filters.petPolicy);
    if (filters.dates) {
      if (filters.dates.start) queryParams.append('startDate', filters.dates.start);
      if (filters.dates.end) queryParams.append('endDate', filters.dates.end);
    }
    if (filters.weather) queryParams.append('weather', filters.weather);
    if (filters.parking) queryParams.append('parking', filters.parking);
    if (filters.cost) queryParams.append('cost', filters.cost);

    navigate(`/search/results?${queryParams.toString()}`);
  };

  return (
    <div className="find-a-park">
      Find a Park
      <button onClick={handleSearch}>Search</button>
      <FilterBar onFiltersChange={handleFiltersChange} />
    </div>
  );
};

export default FindAPark;
