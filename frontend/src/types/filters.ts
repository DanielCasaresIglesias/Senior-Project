// frontend/src/types/filters.ts

/**
 * Must match exactly the backend’s ParksFilterParams interface!
 */
export interface Filters {
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
  accessibility?: string[];   // ["Wheelchair","Hearing"]
  permits?: string[];         // ["drone","fishing","hunting"]

  distanceAddress?: string;
  distanceMiles?: number | null;

  openStartDate?: string;
  openEndDate?: string;

  weatherConditions?: string[];
}
