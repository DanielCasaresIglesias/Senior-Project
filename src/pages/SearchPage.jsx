import React, { useState, useEffect, useRef } from 'react';
import { useNavigate, useLocation } from 'react-router-dom';
import FilterBar from '../components/FilterBar';
import ResultsColumn from '../components/search-page/ResultsColumn';
import ParkPopup from '../components/search-page/ParkPopup';
import MapContainer from '../components/search-page/MapContainer';
import '../styles/searchPage.css';
const activities = [
  'Rock Climbing', 'Surfing', 'Kayaking', 'Hiking', 'Archery', 'Fishing',
  'Winter Sports', 'Guided Tours', 'Canoeing', 'Skiing', 'Snowboarding'
];

// Mock park data
const mockParks = [
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
    coordinates: [37.92868935688991, -119.30087451080387]
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
    coordinates: [44.61474735500912, -110.43115829312174]
  }
  // ... add more mock parks as needed
];

const SearchPage = () => {
  const navigate = useNavigate();
  const location = useLocation();
  const [filters, setFilters] = useState({});
  const [parks, setParks] = useState(mockParks);
  const [selectedPark, setSelectedPark] = useState(null);
  const [showPopup, setShowPopup] = useState(false);
  const [resultsMinimized, setResultsMinimized] = useState(false);
  // Create a ref for the MapContainer
  const mapRef = useRef(null);

  // On page load, parse query parameters if needed
  useEffect(() => {
    const params = new URLSearchParams(location.search);
    // Parse parameters to update filters state (omitted for brevity)
  }, [location.search]);

  const handleFiltersChange = (newFilters) => {
    setFilters(newFilters);
  };

  const handleFilterPopupClose = (updatedFilters) => {
    const params = new URLSearchParams();
    // (Convert updatedFilters into query params)
    navigate(`/search/results?${params.toString()}`);
    window.location.reload();
  };

  const handleParkSelect = (park) => {
    setSelectedPark(park);
    setShowPopup(true);
    // Move map view focus to the park's coordinates.
    // Assumes mapRef.current is a Leaflet map instance.
    if (mapRef.current && mapRef.current.setView) {
      mapRef.current.setView(park.coordinates, 13); // Adjust zoom level as needed.
    }
  };

  // When toggling the results column, also close the popup immediately if we’re minimizing.
  const handleMinimizeResults = () => {
    const newMinimized = !resultsMinimized;
    setResultsMinimized(newMinimized);
    if (newMinimized && showPopup) {
      setShowPopup(false);
    }
  };

  return (
    <div className="search-page">
      {/* Filter Bar at the Top */}
      <div className="filter-bar-container">
        <FilterBar
          onFiltersChange={handleFiltersChange}
          onFilterPopupClose={handleFilterPopupClose}
          initialFilters={filters}
        />
      </div>

      {/* Main content area */}
      <div className="content">
        {/* Results Column Overlay */}
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
        
        {/* Park Details Popup Overlay */}
        {showPopup && selectedPark && (
          <ParkPopup
            className="park-popup"
            park={selectedPark}
            activities={activities}
            onClose={() => setShowPopup(false)}
          />
        )}

        {/* Map Container fills the background */}
        <MapContainer ref={mapRef} className="map-container" />
      </div>
    </div>
  );
};

export default SearchPage;
