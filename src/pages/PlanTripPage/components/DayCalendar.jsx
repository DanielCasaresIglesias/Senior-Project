import React, { useState } from "react";
import EventPopup from "./EventPopup";
import "../styles/DayCalendar.css";

const DayCalendar = ({ selectedDay }) => {
  const [events, setEvents] = useState([]);
  const [newEvent, setNewEvent] = useState(null);

  const handleAddEvent = (hour) => {
    setNewEvent({ startTime: hour, endTime: hour + 1, title: "", description: "" });
  };

  return (
    <div className="day-calendar">
      {Array.from({ length: 24 }, (_, i) => (
        <div key={i} className="hour-block" onClick={() => handleAddEvent(i)}>
          {i}:00
          <span className="add-event">+</span>
        </div>
      ))}
      {newEvent && <EventPopup event={newEvent} setEvents={setEvents} setNewEvent={setNewEvent} />}
    </div>
  );
};

export default DayCalendar;
