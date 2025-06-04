// ParkPopup.tsx
import React, { useState } from 'react';
import '../styles/parkPopup.css';
import ReviewForm from '../../../components/ReviewForm';

type Park = {
  name: string;
  image: string;
  type: string;
  state: string;
  region: string;
  rating: number;
  reviews: number;
  description: string;
  activities: string[];
  facilities: string[];
  features: string[];
  averageScore?: number;
};

type ParkPopupProps = {
  park: Park;
  activities: string[];
  onClose: () => void;
};

const ParkPopup: React.FC<ParkPopupProps> = ({ park, activities, onClose }) => {
  const [activeTab, setActiveTab] = useState<'Overview' | 'Reviews' | 'More Info'>('Overview');
  const [showReviewPopup, setShowReviewPopup] = useState(false);

  const handleLeaveReview = () => {
    setShowReviewPopup(true);
  };

  const handleCloseReviewPopup = () => {
    setShowReviewPopup(false);
  };

  return (
    <div className="park-popup">
      <div className="popup-header">
        <img src={park.image} alt={park.name} className="popup-image" />
        <button className="popup-close" onClick={onClose}>X</button>
      </div>
      <div className="popup-park-info">
        <div className="park-info-header">
          <div className="park-name">{park.name}</div>
          <div className="park-details">
            <div className="park-type">{park.type}</div>
            <div className="park-location">{park.state} / {park.region}</div>
          </div>
        </div>
        <div className="park-rating">
          <div className="stars">
            {Array.from({ length: 5 }, (_, index) => (
              <span key={index} className="star">
                {index < park.rating ? '★' : '☆'}
              </span>
            ))}
          </div>
          <div className="review-count">({park.reviews} reviews)</div>
        </div>
      </div>
      <div className="popup-tabs">
        {['Overview', 'Reviews', 'More Info'].map(tab => (
          <button
            key={tab}
            className={`tab-button ${activeTab === tab ? 'selected' : ''}`}
            onClick={() => setActiveTab(tab as 'Overview' | 'Reviews' | 'More Info')}
          >
            {tab}
          </button>
        ))}
      </div>
      <div className="popup-content">
        {activeTab === 'Overview' && (
          <div className="overview-section">
            <div className="description-box">
              <h3 className="section-title">Description</h3>
              <p className="description-text">{park.description}</p>
            </div>
            <div className="overview-buttons">
              <button className="trip-button">Plan a Trip</button>
              <button className="review-button" onClick={handleLeaveReview}>
                Leave a Review
              </button>
            </div>
            <div className="trails-section">
              <h3 className="section-title">Trails</h3>
              <div className="trails-icons">
                <div className="trail-icon">H</div>
                <div className="trail-icon">MB</div>
                <div className="trail-icon">HR</div>
                <div className="trail-icon">WA</div>
              </div>
            </div>
            <div className="activities-section">
              <h3 className="section-title">Activities</h3>
              <div className="scrollable-list">
                {park.activities.map((act, idx) => (
                  <div key={idx} className="activity-item">{act}</div>
                ))}
              </div>
            </div>
            <div className="facilities-section">
              <h3 className="section-title">Facilities</h3>
              <div className="scrollable-list">
                {park.facilities.map((fac, idx) => (
                  <div key={idx} className="facility-item">{fac}</div>
                ))}
              </div>
            </div>
            <div className="features-section">
              <h3 className="section-title">Features</h3>
              <div className="scrollable-list">
                {park.features.map((feat, idx) => (
                  <div key={idx} className="feature-item">{feat}</div>
                ))}
              </div>
            </div>
          </div>
        )}
        {activeTab === 'Reviews' && (
          <div className="reviews-section">
            <div className="reviews-bar-graph">
              <p>Bar graph goes here</p>
            </div>
            <div className="average-review">
              <div className="average-score">{park.averageScore?.toFixed(1) || '0.0'}</div>
              <div className="review-stars">
                {Array.from({ length: 5 }, (_, index) => (
                  <span key={index} className="star">
                    {index < Math.round(park.averageScore || 0) ? '★' : '☆'}
                  </span>
                ))}
              </div>
              <div className="review-total">{park.reviews} reviews</div>
            </div>
            <button className="leave-review-button" onClick={handleLeaveReview}>
              Leave a Review
            </button>
          </div>
        )}
        {activeTab === 'More Info' && (
          <div className="more-info-section">
            {/* Placeholder */}
          </div>
        )}
      </div>
      {showReviewPopup && (
        <ReviewForm
          park={park}
          activities={activities}
          onClose={handleCloseReviewPopup}
        />
      )}
    </div>
  );
};

export default ParkPopup;
