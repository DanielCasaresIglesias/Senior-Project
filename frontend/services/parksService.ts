// frontend/src/services/parksService.ts

import { API_URL } from './api';

export interface FiltersType {
  parkState?: string[];
  region?: string[];
  trails?: string[];
  activities?: string[];
  facilities?: string[];
  features?: string[];
  ratingMin?: number | null;

  entryFeeMin?: number | null;
  entryFeeMax?: number | null;

  parkingFeeMin?: number | null;
  parkingFeeMax?: number | null;

  petPolicy?: string | null;
  accessibility?: string[];   // e.g. ["Wheelchair","Visual"]
  permits?: string[];         // e.g. ["drone","fishing"]

  distanceAddress?: string;
  distanceMiles?: number | null;

  openStartDate?: string;  // "2025-07-01"
  openEndDate?: string;    // "2025-07-10"

  weatherConditions?: string[]; // e.g. ["Rain","Cloudy"]
}

/**
 * Build a ?-style query string from filters and fetch /api/parks
 */
export async function fetchParks(filters: FiltersType) {
  const qs = new URLSearchParams();

  if (filters.parkState && filters.parkState.length) {
    qs.append('parkState', filters.parkState.join(','));
  }
  if (filters.region && filters.region.length) {
    qs.append('region', filters.region.join(','));
  }
  if (filters.trails && filters.trails.length) {
    qs.append('trails', filters.trails.join(','));
  }
  if (filters.activities && filters.activities.length) {
    qs.append('activities', filters.activities.join(','));
  }
  if (filters.facilities && filters.facilities.length) {
    qs.append('facilities', filters.facilities.join(','));
  }
  if (filters.features && filters.features.length) {
    qs.append('features', filters.features.join(','));
  }

  if (filters.ratingMin !== undefined && filters.ratingMin !== null) {
    qs.append('ratingMin', filters.ratingMin.toString());
  }

  if (filters.entryFeeMin !== undefined && filters.entryFeeMin !== null) {
    qs.append('entryFeeMin', filters.entryFeeMin.toString());
  }
  if (filters.entryFeeMax !== undefined && filters.entryFeeMax !== null) {
    qs.append('entryFeeMax', filters.entryFeeMax.toString());
  }

  if (filters.parkingFeeMin !== undefined && filters.parkingFeeMin !== null) {
    qs.append('parkingFeeMin', filters.parkingFeeMin.toString());
  }
  if (filters.parkingFeeMax !== undefined && filters.parkingFeeMax !== null) {
    qs.append('parkingFeeMax', filters.parkingFeeMax.toString());
  }

  if (filters.petPolicy) {
    qs.append('petPolicy', filters.petPolicy);
  }

  if (filters.accessibility && filters.accessibility.length) {
    qs.append('accessibility', filters.accessibility.join(','));
  }

  if (filters.permits && filters.permits.length) {
    qs.append('permits', filters.permits.join(','));
  }

  if (filters.distanceAddress) {
    qs.append('distanceAddress', filters.distanceAddress);
  }
  if (filters.distanceMiles !== undefined && filters.distanceMiles !== null) {
    qs.append('distanceMiles', filters.distanceMiles.toString());
  }

  if (filters.openStartDate) {
    qs.append('openStartDate', filters.openStartDate);
  }
  if (filters.openEndDate) {
    qs.append('openEndDate', filters.openEndDate);
  }

  if (filters.weatherConditions && filters.weatherConditions.length) {
    qs.append('weatherConditions', filters.weatherConditions.join(','));
  }

  const response = await fetch(`${API_URL}/parks?${qs.toString()}`);
  if (!response.ok) {
    throw new Error(`Failed to fetch parks: ${response.status}`);
  }
  return response.json();
}
