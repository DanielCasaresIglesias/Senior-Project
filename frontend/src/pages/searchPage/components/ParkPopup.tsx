// ParkPopup.tsx
import React, { useState, useEffect } from 'react';
import ReviewForm from '../../../components/ReviewForm';
import type { Park } from '../../../types/park';
import '../styles/parkPopup.css';

// A fixed list of all possible trail types and camp types
const ALL_TRAIL_TYPES = [
  'Hiking',
  'Horseback Riding',
  'Wheelchair Accessible',
  'Mountain Biking',
];

const ALL_CAMP_TYPES = ['Tent', 'Backcountry', 'RV', 'Cabin'];

// Helper: from "Horseback Riding" → "horseback-riding"
function slugify(name: string) {
  return name
    .toLowerCase()
    .replace(/\s+/g, '-')
    .replace(/[^\w-]/g, '');
}


const levelMap: Record<Park['park_level'], string> = {
  Federal: 'National',
  State: 'State',
  Regional: 'Regional',
  County: 'County',
  'City/Municipal': 'City',
  Tribal: 'Tribal',
  'Private with Public Access': 'Private',
  'Uknown/Other': 'Other',
};

type ParkPopupProps = {
  park: Park;
  onClose: () => void;
};

const ParkPopup: React.FC<ParkPopupProps> = ({ park, onClose }) => {
  const [activeTab, setActiveTab] = useState<'Overview' | 'Reviews' | 'More Info'>('Overview');
  const [showReviewPopup, setShowReviewPopup] = useState(false);

  const handleLeaveReview = () => {
    setShowReviewPopup(true);
  };

  const handleCloseReviewPopup = () => {
    setShowReviewPopup(false);
  };

  const activities = park.activities ?? [];
  const facilities = park.facilities ?? [];
  const features  = park.features  ?? [];
  const accessibility  = park.accessibility  ?? [];

  // Log arrays for debugging
  useEffect(() => {
    console.log('Activities:', activities);
    console.log('Facilities:', facilities);
    console.log('Features:', features);
    console.log('Accessibility:', accessibility);
  }, [activities, facilities, features, accessibility]);

  return (
    <div className="park-popup">
      <div className="popup-header">
        <img src={park.park_photo_link} alt={park.park_name} className="popup-image" />
        <button className="popup-close" onClick={onClose}>X</button>
      </div>
      <div className="popup-park-info">
        <div className="result-content">
          <div className="top-row">
            <h2 className="park-name">{park.park_name}</h2>
            <div className="result-rating">
              {Array.from({length:5},(_,i)=>(
                <span key={i} className="star">
                  {i < park.park_average_rating ? '★':'☆'}
                </span>
              ))}
            </div>
          </div>
          <div className="review-count">({park.park_number_of_reviews} reviews)</div>
          <div className="bottom-row">
            <p className="park-type">
              {levelMap[park.park_level] || park.park_level} {park.park_type}
            </p>
            <p className="park-state">{park.park_state}</p>
            <p className="park-region">{park.park_region}</p>
          </div>
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
              <p className="description-text">{park.park_description}</p>
            </div>
            <div className="overview-buttons">
              <button className="trip-button">Plan a Trip</button>
              <button className="review-button" onClick={handleLeaveReview}>
                Leave a Review
              </button>
            </div>
            <div className="trails-section">
              <h3 className="section-title">Trails</h3>
              <div className="trail-icons">
                {ALL_TRAIL_TYPES.map(type => {
                  const slug = slugify(type);
                  const isActive = (park.trail_types || []).includes(type);
                  const src = `/images/park-info-icons/${isActive ? 'active' : 'inactive'}/${slug}.png`;
                  console.log(`Trail type: ${type}, Active: ${isActive}, Src: ${src}`);
                  return (
                    <div
                      key={type}
                      className={`trail-icon ${isActive ? 'active' : ''}`}
                      title={type}
                    >
                      <img src={src} alt={`${type} icon`} />
                    </div>
                  );
                })}
              </div>
            </div>
            <div className="camps-section">
              <h3 className="section-title">Campsites</h3>
              <div className="camp-icons">
                {ALL_CAMP_TYPES.map(type => {
                  const slug = slugify(type);
                  const isActive = (park.camp_types || []).includes(type);
                  const src = `/images/park-info-icons/${isActive ? 'active' : 'inactive'}/${slug}.png`;
                  return (
                    <div
                      key={type}
                      className={`camp-icon ${isActive ? 'active' : ''}`}
                      title={type}
                    >
                      <img src={src} alt={`${type} icon`} />
                    </div>
                  );
                })}
              </div>
            </div>

            {/* Activities / Facilities / Features */}
            <Section title="Activities" items={activities} />
            <Section title="Facilities" items={facilities} />
            <Section title="Features" items={features} />
            <Section title="Accessibility" items={accessibility} />
          </div>
        )}
        {activeTab === 'Reviews' && (
          <div className="reviews-section">
            <div className="reviews-bar-graph">
              <p>Bar graph goes here</p>
            </div>
            <div className="average-review">
              <div className="average-score">{park.park_average_rating?.toFixed(1) || '0.0'}</div>
              <div className="review-stars">
                {Array.from({ length: 5 }, (_, index) => (
                  <span key={index} className="star">
                    {index < Math.round(park.park_average_rating || 0) ? '★' : '☆'}
                  </span>
                ))}
              </div>
              <div className="review-total">{park.park_number_of_reviews} reviews</div>
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


// Helper sub-component for lists:
const Section: React.FC<{ title: string; items: string[] }> = ({
  title,
  items,
}) => (
  <div className={`${title.toLowerCase()}-section`}>
    <h3 className="section-title">{title}</h3>
    <div className="scrollable-list">
      {items.length > 0 ? (
        items.map((x) => (
          <div key={x} className={`${title.toLowerCase()}-item`}>
            {x}
          </div>
        ))
      ) : (
        <div className="no-items">None listed</div>
      )}
    </div>
  </div>
);