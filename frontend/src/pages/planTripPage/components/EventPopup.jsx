import React, { useState } from "react";
import "../styles/EventPopup.css";

const EventPopup = ({ event, setEvents, setNewEvent }) => {
  const [form, setForm] = useState(event);

  const handleSave = () => {
    if (!form.title || !form.startTime || !form.endTime) return;
    setEvents((prev) => [...prev, form]);
    setNewEvent(null);
  };

  return (
    <div className="event-popup">
      <h3>Add Event</h3>
      <input type="text" placeholder="Title" value={form.title} onChange={(e) => setForm({ ...form, title: e.target.value })} />
      <input type="time" value={form.startTime} onChange={(e) => setForm({ ...form, startTime: e.target.value })} />
      <input type="time" value={form.endTime} onChange={(e) => setForm({ ...form, endTime: e.target.value })} />
      <textarea placeholder="Description" value={form.description} onChange={(e) => setForm({ ...form, description: e.target.value })} />
      <button onClick={handleSave}>Save</button>
      <button onClick={() => setNewEvent(null)}>Cancel</button>
    </div>
  );
};

export default EventPopup;
