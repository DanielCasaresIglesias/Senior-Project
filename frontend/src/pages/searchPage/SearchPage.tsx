// SearchPage.tsx
import React, { useState, useEffect, useRef } from 'react';
import { useNavigate, useLocation } from 'react-router-dom';
import FilterBar from '../../components/FilterBar';
import ResultsColumn from './components/ResultsColumn';
import ParkPopup from './components/ParkPopup';
import MapContainer from './components/MapContainer';
import './styles/searchPage.css';
import { type Park } from '../../types/park'
import { type Filters } from '../../types/filters';

const activities: string[] = [
  'Rock Climbing', 'Surfing', 'Kayaking', 'Hiking', 'Archery', 'Fishing',
  'Winter Sports', 'Guided Tours', 'Canoeing', 'Skiing', 'Snowboarding'
];

const mockParks: Park[] = [
  {
    id: 1,
    name: "Yosemite",
    image: "/images/park-example-photos/yosemite-example.png",
    type: "National Park",
    state: "CA",
    region: "High Sierra",
    rating: 4,
    reviews: 1245,
    description: "Yosemite is famed for its giant, ancient sequoia trees, and for Tunnel View, the iconic vista of towering Bridalveil Fall and the granite cliffs of El Capitan and Half Dome.",
    trails: ["Hiking", "Mountain Biking"],
    activities: ["Rock Climbing", "Hiking", "Photography"],
    facilities: ["Visitor Center", "Campground", "Picnic Area"],
    features: ["Waterfalls", "Granite Cliffs"],
    coordinates: [37.84829990889492, -119.89946781411888]
  },
  {
    id: 2,
    name: "Yellowstone",
    image: "/images/park-example-photos/yellowstone-example.jpg",
    type: "National Park",
    state: "WY",
    region: "Up. Geyser Basin",
    rating: 5,
    reviews: 876,
    description: "Yellowstone offers a wonderland of geysers, hot springs and a unique landscape shaped by volcanoes.",
    trails: ["Hiking"],
    activities: ["Wildlife Viewing", "Camping"],
    facilities: ["Visitor Center", "Restrooms"],
    features: ["Geysers", "Hot Springs"],
    coordinates: [44.599072069249665, -111.01394802525812]
  }
];

const SearchPage: React.FC = () => {
  const navigate = useNavigate();
  const location = useLocation();
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
  const [parks, setParks] = useState<Park[]>(mockParks);
  const [selectedPark, setSelectedPark] = useState<Park | null>(null);
  const [showPopup, setShowPopup] = useState(false);
  const [resultsMinimized, setResultsMinimized] = useState(false);
  const mapRef = useRef<L.Map | null>(null);

  useEffect(() => {
    const params = new URLSearchParams(location.search);
    // Handle filters from query (optional)
  }, [location.search]);

  const handleFiltersChange = (newFilters: Filters) => {
    setFilters(newFilters);
  };

  const handleFilterPopupClose = (updatedFilters: Filters) => {
    const params = new URLSearchParams();
    // Convert updatedFilters to params (example omitted)
    navigate(`/search/results?${params.toString()}`);
    window.location.reload();
  };

  const handleParkSelect = (park: Park) => {
    setSelectedPark(park);
    setShowPopup(true);
    if (mapRef.current?.setView) {
      mapRef.current.setView(park.coordinates, 10);
    }
  };

  const handleMinimizeResults = () => {
    const newMinimized = !resultsMinimized;
    setResultsMinimized(newMinimized);
    if (newMinimized && showPopup) {
      setShowPopup(false);
    }
  };

  return (
    <div className="search-page">
      <div className="filter-bar-container">
        <FilterBar
          onFiltersChange={handleFiltersChange}
          onFilterPopupClose={handleFilterPopupClose}
          initialFilters={filters}
        />
      </div>

      <div className="content">
        <div className={`search-results ${resultsMinimized ? 'minimized' : ''}`}>
          <div className="results-content">
            <ResultsColumn
              results={parks}
              onParkSelect={handleParkSelect}
              minimized={resultsMinimized}
            />
          </div>
          <div className="results-toggle" onClick={handleMinimizeResults}>
            {resultsMinimized ? ">" : "<"}
          </div>
        </div>

        {showPopup && selectedPark && (
          <ParkPopup
            park={selectedPark}
            activities={activities}
            onClose={() => setShowPopup(false)}
          />
        )}

        <MapContainer ref={mapRef}/>
      </div>
    </div>
  );
};

export default SearchPage;
