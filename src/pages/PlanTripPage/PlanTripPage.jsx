import React, { useState, useEffect, useRef } from "react";
import ParkDropdown from "./components/ParkDropdown";
import DateSelector from "./components/DateSelector";
import DaySelector from "./components/DaySelector";
import DayCalendar from "./components/DayCalendar";
import MapContainer from "../../components/search-page/MapContainer";
import "./styles/PlanTripPage.css";

const DEFAULT_PARK = {
  name: "Yosemite National Park",
  coordinates: [37.8651, -119.5383], // Default to Yosemite
};

const PlanTrip = ({ initialPark }) => {
  const [selectedPark, setSelectedPark] = useState(initialPark || DEFAULT_PARK);
  const [startDate, setStartDate] = useState(new Date().toISOString().split("T")[0]);
  const [endDate, setEndDate] = useState(new Date(Date.now() + 86400000).toISOString().split("T")[0]); // Tomorrow
  const [days, setDays] = useState(["Day 1"]);
  const [selectedDay, setSelectedDay] = useState(0);
  const mapRef = useRef(null); // Ref for the map

  useEffect(() => {
    if (startDate && endDate) {
      const start = new Date(startDate);
      const end = new Date(endDate);
      const dayCount = Math.max(1, (end - start) / (1000 * 60 * 60 * 24) + 1);
      setDays(Array.from({ length: dayCount }, (_, i) => `Day ${i + 1}`));
      setSelectedDay(0);
    }
  }, [startDate, endDate]);

  useEffect(() => {
    if (mapRef.current) {
      mapRef.current.setView(selectedPark.coordinates, 8);
      // mapRef.current.invalidateSize();
    }
  }, [selectedPark]);

  return (
    <div className="plan-trip-container">
      <div className="left-panel">
        <div className="header-row">
          <h2>Trip Planner</h2>
          <button className="save-button">Save</button>
        </div>

        <ParkDropdown selectedPark={selectedPark} setSelectedPark={setSelectedPark} />
        <DateSelector startDate={startDate} setStartDate={setStartDate} endDate={endDate} setEndDate={setEndDate} />
        <DaySelector days={days} selectedDay={selectedDay} setSelectedDay={setSelectedDay} />
        <DayCalendar selectedDay={selectedDay} />
      </div>

      <div className="right-panel">
        {/* <MapContainer ref={mapRef} /> */}
      </div>
    </div>
  );
};

export default PlanTrip;
