import React, { useState, useEffect } from 'react';
import { useNavigate, useLocation } from 'react-router-dom';
import FilterBar from '../components/FilterBar';
import ResultsColumn from '../components/search-page/ResultsColumn';
import ParkPopup from '../components/search-page/ParkPopup';
import MapContainer from '../components/search-page/MapContainer';
import '../styles/searchPage.css';

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
    features: ["Waterfalls", "Granite Cliffs"]
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
    features: ["Geysers", "Hot Springs"]
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

  // On page load, you can parse query parameters to pre-fill filters.
  useEffect(() => {
    const params = new URLSearchParams(location.search);
    // Parse parameters to update filters state (omitted for brevity)
    // For now, we'll assume filters come from the URL if needed.
  }, [location.search]);

  const handleFiltersChange = (newFilters) => {
    setFilters(newFilters);
  };

  // When a filter popup closes (with changes), update the URL and reload (or requery data)
  const handleFilterPopupClose = (updatedFilters) => {
    // Here, you would build the query string and update the URL.
    // For demo, we simply log and reload.
    const params = new URLSearchParams();
    // (Convert updatedFilters into query params)
    navigate(`/search/results?${params.toString()}`);
    window.location.reload(); // Or call your search function
  };

  const handleParkSelect = (park) => {
    setSelectedPark(park);
    setShowPopup(true);
  };

  const handleMinimizeResults = () => {
    setResultsMinimized(!resultsMinimized);
    if (resultsMinimized && showPopup) {
      // if results column is minimized while popup is open, close the popup
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

      {/* Main content area: results column, popup, and map */}
      <div className="content">
        {/* Left Results Column */}
        <ResultsColumn
          results={parks}
          onParkSelect={handleParkSelect}
          onMinimize={handleMinimizeResults}
          minimized={resultsMinimized}
        />

        {/* Park Details Popup (if a park is selected) */}
        {showPopup && selectedPark && (
          <ParkPopup park={selectedPark} onClose={() => setShowPopup(false)} />
        )}

        {/* Map Container */}
        <MapContainer />
      </div>
    </div>
  );
};

export default SearchPage;
