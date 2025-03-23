import React, { useState } from "react";
import "../styles/DateSelector.css";

const DateSelector = ({ startDate, setStartDate, endDate, setEndDate }) => {
  const [error, setError] = useState("");

  const handleDateChange = (e) => {
    const { name, value } = e.target;

    if (name === "startDate") {
      setStartDate(value);
      if (new Date(value) > new Date(endDate)) {
        setError("End date must be after start date.");
        setEndDate("");
      } else {
        setError("");
      }
    } else if (name === "endDate") {
      if (new Date(value) < new Date(startDate)) {
        setError("End date must be after start date.");
      } else {
        setError("");
        setEndDate(value);
      }
    }
  };

  return (
    <div className="date-selector">
      <label>Start Date</label>
      <input type="date" name="startDate" value={startDate} onChange={handleDateChange} />

      <span className="date-separator">-</span>

      <label>End Date</label>
      <input type="date" name="endDate" value={endDate} onChange={handleDateChange} />

      {error && <p className="error-message">{error}</p>}
    </div>
  );
};

export default DateSelector;
