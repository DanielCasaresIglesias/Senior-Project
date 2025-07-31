type DateRange = { start: string; end: string };
type DistanceRange = { address: string; miles: string };


export interface Filters {
  distance: DistanceRange | null;
  trails: string[];
  camps: string[];
  activities: string[];
  facilities: string[];
  features: string[];
  rating: number | null;
  parkState: string[];
  region: string[];
  accessibility: string[];
  permits?: {
    drone?: string | null;
    fishing?: string | null;
    hunting?: string | null;
    backcountry?: string | null;
  };
  petPolicy: string | null;
  dates: DateRange | null;
  weather: string | null;
  parking: string | null;
  cost: string | null;
}