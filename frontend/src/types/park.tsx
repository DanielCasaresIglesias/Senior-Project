export type Park = {
    id: number;
    name: string;
    image: string;
    type: string;
    state: string;
    region: string;
    rating: number;
    reviews: number;
    description: string;
    trails: string[];
    activities: string[];
    facilities: string[];
    features: string[];
    coordinates: [number, number];
};
  