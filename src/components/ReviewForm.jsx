import React, { useState } from "react";
import ReactDOM from "react-dom";
import "./styles/reviewForm.css";

const ReviewForm = ({ park, activities, onClose }) => {
  // Star rating state (minimum rating is 1)
  const [rating, setRating] = useState(1);
  // Date states
  const [startDate, setStartDate] = useState("");
  const [endDate, setEndDate] = useState("");
  // Activities search state
  const [searchTerm, setSearchTerm] = useState("");
  // Form data for review and activities
  const [formData, setFormData] = useState({
    activities: [],
    review: ""
  });

  // Handle toggling checkboxes for activities
  const handleCheckboxChange = (option) => {
    setFormData((prev) => {
      const isSelected = prev.activities.includes(option);
      return {
        ...prev,
        activities: isSelected
          ? prev.activities.filter((a) => a !== option)
          : [...prev.activities, option]
      };
    });
  };

  // Handle text input changes (review)
  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData((prev) => ({ ...prev, [name]: value }));
  };

  // Handle star rating click
  const handleStarClick = (star) => {
    setRating(star);
  };

  const today = new Date().toISOString().split("T")[0];

  const handleDateChange = (e) => {
    const { name, value } = e.target;
    if (name === "startDate") {
      setStartDate(value);
      if (endDate && endDate < value) setEndDate("");
    } else if (name === "endDate") {
      setEndDate(value);
    }
  };

  const filteredOptions = activities.filter((option) =>
    option.toLowerCase().includes(searchTerm.toLowerCase())
  );

  // Render the modal via a portal
  return ReactDOM.createPortal(
    <div className="new-review-background">
      <div className="new-review-content">
        {/* HEADER */}
        <div className="header">
          <div className="header-left">
            <div className="title">{park.name}</div>
            <div className="more-info">{park.type}, {park.state}</div>
          </div>
          <div className="header-right">
            <div className="star-rating">
              {[1, 2, 3, 4, 5].map((star) => (
                <button
                  key={star}
                  className={`star ${star <= rating ? "yellow" : "gray"}`}
                  onClick={() => handleStarClick(star)}
                >
                  ★
                </button>
              ))}
            </div>
            <div className="dates">
              <label>Start Date:
                <input type="date" name="startDate" value={startDate} onChange={handleDateChange} max={today} required />
              </label>
              <label>End Date:
                <input type="date" name="endDate" value={endDate} onChange={handleDateChange} max={today} required />
              </label>
            </div>
          </div>
        </div>

        {/* CONTENT (TWO COLUMNS) */}
        <div className="content">
          {/* LEFT COLUMN - ACTIVITIES */}
          <div className="activities-column">
            <div className="activities-title">Activities</div>
            <div className="activities-search">
              <input
                type="text"
                placeholder="Search activities"
                value={searchTerm}
                onChange={(e) => setSearchTerm(e.target.value)}
              />
            </div>
            <div className="activities-list">
              {filteredOptions.length > 0 ? (
                filteredOptions.map((option) => (
                  <label key={option} className="option">
                    <input
                      type="checkbox"
                      checked={formData.activities.includes(option)}
                      onChange={() => handleCheckboxChange(option)}
                    />
                    {option}
                  </label>
                ))
              ) : (
                <p className="no-results">No results found</p>
              )}
            </div>
          </div>

          {/* RIGHT COLUMN - REVIEW */}
          <div className="review-column">
            <div className="review-title">Review</div>
            <textarea
              name="review"
              placeholder="Share details about your experience here..."
              value={formData.review}
              onChange={handleChange}
              className="input-field"
            />
          </div>
        </div>

        {/* BUTTONS */}
        <div className="action-buttons">
          <button className="cancel-button" onClick={onClose}>Cancel</button>
          <button className="post-button" onClick={onClose}>Post Review</button>
        </div>
      </div>
    </div>,
    document.getElementById("modal-root")
  );
};

export default ReviewForm;
