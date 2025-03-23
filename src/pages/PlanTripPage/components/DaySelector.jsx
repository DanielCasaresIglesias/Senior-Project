import React from "react";
import "../styles/DaySelector.css";

const DaySelector = ({ days, selectedDay, setSelectedDay }) => {
  return (
    <div className="day-selector">
      {days.map((day, index) => (
        <button
          key={index}
          className={`day-button ${selectedDay === index ? "selected" : ""}`}
          onClick={() => setSelectedDay(index)}
        >
          {day}
        </button>
      ))}
    </div>
  );
};

export default DaySelector;
