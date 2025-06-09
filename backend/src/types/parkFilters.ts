// backend/src/types/parkFilters.ts

/**
 * Shared type for filter parameters in parksService and parksRoutes
 */
export interface ParksFilterParams {
  states: string[];
  regions: string[];
  trails: string[];
  activities: string[];
  facilities: string[];
  features: string[];
  ratingMin: number | null;

  entryFeeMin: number | null;
  entryFeeMax: number | null;

  parkingFeeMin: number | null;
  parkingFeeMax: number | null;

  accessibility: string[];
  permits: string[];

  distanceAddress: string | null;
  distanceMiles: number | null;

  // Cost Filters
  groupSize?: number | null;
  numCars?: number | null;
  numMotorcycles?: number | null;
  includeShuttle?: boolean;
}
