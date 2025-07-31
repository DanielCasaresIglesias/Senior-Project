// backend/src/types/parkFilters.ts

/**
 * Shared type for filter parameters in parksService and parksRoutes
 */
export interface ParksFilterParams {
  states: string[];
  regions: string[];
  trails: string[];
  camps: string[];
  activities: string[];
  facilities: string[];
  features: string[];
  ratingMin: number | null;

  entryFeeMin: number | null;
  entryFeeMax: number | null;

  parkingFeeMin: number | null;
  parkingFeeMax: number | null;

  accessibility: string[];
  permits?: {
    drone?: string | null;
    fishing?: string | null;
    hunting?: string | null;
    backcountry?: string | null;
  };

  distanceAddress: string | null;
  distanceMiles: number | null;

  // Cost Filters
  groupSize?: number | null;
  numCars?: number | null;
  numMotorcycles?: number | null;
  includeShuttle?: boolean;
}
