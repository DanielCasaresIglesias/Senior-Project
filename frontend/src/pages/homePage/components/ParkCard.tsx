import React from "react";
import '../styles/parkCard.css';

type ParkCardProps = {
  imageSrc: string;
  parkName: string;
  parkType: string;
  rating: number;
};

const ParkCard: React.FC<ParkCardProps> = ({ imageSrc, parkName, parkType, rating }) => {
  return (
    <div className="park-card">
      <div className="image-container">
        <img src={imageSrc} alt={parkName} className="park-image" />
        <div className="overlay">
          <span className="park-name">{parkName}</span>
        </div>
        <div className="park-info">
          <span className="park-type">{parkType}</span>
          <span className="review">
            <span className="star">★</span> {rating.toFixed(1)}
          </span>
        </div>
      </div>
      
    </div>
  );
};

export default ParkCard;
