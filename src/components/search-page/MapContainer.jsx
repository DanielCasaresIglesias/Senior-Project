import React, { useEffect, useRef, forwardRef } from 'react';
import '../../styles/search-page/mapContainer.css';
import L from 'leaflet';
import 'leaflet/dist/leaflet.css';

const MapContainer = forwardRef((props, ref) => {
  const mapInstance = useRef(null);

  useEffect(() => {
    // Initialize the map only once
    mapInstance.current = L.map('map', {
      zoomControl: false
    }).setView([37.7749, -122.4194], 13); // San Francisco

    // Add a tile layer (OpenStreetMap)
    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
      attribution: '&copy; OpenStreetMap contributors'
    }).addTo(mapInstance.current);

    // Add a marker
    L.marker([37.7749, -122.4194]).addTo(mapInstance.current)
      .bindPopup("San Francisco, CA")
      .openPopup();

    L.control.zoom({
      position: 'topright'
    }).addTo(mapInstance.current);

    // Forward the map instance via ref
    if (ref) {
      if (typeof ref === 'function') {
        ref(mapInstance.current);
      } else {
        ref.current = mapInstance.current;
      }
    }

    return () => {
      mapInstance.current.remove();
    };
  }, [ref]);

  return (
    <div className="map-container">
      <div id="map"></div>
    </div>
  );
});

export default MapContainer;
