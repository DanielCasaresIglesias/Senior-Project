import React, { useState } from "react";
import "../styles/ParkDropdown.css";

const parks = [
  { name: "Yosemite National Park", coordinates: [37.8651, -119.5383] },
  { name: "Yellowstone National Park", coordinates: [44.4280, -110.5885] },
  { name: "Grand Canyon National Park", coordinates: [36.1069, -112.1129] },
  { name: "Zion National Park", coordinates: [37.2982, -113.0263] },
  { name: "Rocky Mountain National Park", coordinates: [40.3428, -105.6836] },
];

const ParkDropdown = ({ selectedPark, setSelectedPark }) => {
  const [searchTerm, setSearchTerm] = useState("");

  const filteredParks = parks.filter((park) =>
    park.name.toLowerCase().includes(searchTerm.toLowerCase())
  );

  return (
    <div className="park-dropdown">
      <label>Choose a Park</label>
      <input
        type="text"
        placeholder="Search parks..."
        value={searchTerm}
        onChange={(e) => setSearchTerm(e.target.value)}
      />
      <div className="dropdown-list">
        {filteredParks.map((park) => (
          <div
            key={park.name}
            className={`dropdown-item ${selectedPark.name === park.name ? "selected" : ""}`}
            onClick={() => setSelectedPark(park)}
          >
            {park.name}
          </div>
        ))}
      </div>
    </div>
  );
};

export default ParkDropdown;
