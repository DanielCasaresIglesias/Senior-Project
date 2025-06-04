type DateRange = { start: string; end: string };
type DistanceRange = { address: string; miles: string };


export interface Filters {
  distance: DistanceRange | null;
  trails: string[];
  activities: string[];
  facilities: string[];
  features: string[];
  rating: number | null;
  parkState: string[];
  region: string[];
  accessibility: string[];
  permits: string[];
  petPolicy: string | null;
  dates: DateRange | null;
  weather: string | null;
  parking: string | null;
  cost: string | null;
}