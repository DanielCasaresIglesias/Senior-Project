import React, { useEffect } from 'react';
import '../../styles/search-page/mapContainer.css';
import L from 'leaflet';
import 'leaflet/dist/leaflet.css';

const MapContainer = () => {
  useEffect(() => {
    // Ensure the map initializes only once
    const map = L.map('map').setView([37.7749, -122.4194], 13); // San Francisco

    // Add a tile layer (OpenStreetMap)
    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
      attribution: '&copy; OpenStreetMap contributors'
    }).addTo(map);

    // Add a marker
    L.marker([37.7749, -122.4194]).addTo(map)
      .bindPopup("San Francisco, CA")
      .openPopup();

    return () => {
      map.remove(); // Cleanup on unmount
    };
  }, []); // Empty dependency array ensures it runs only once

  return (
    <div className="map-container">
      <div id="map"></div>
    </div>
  );
};

export default MapContainer;
