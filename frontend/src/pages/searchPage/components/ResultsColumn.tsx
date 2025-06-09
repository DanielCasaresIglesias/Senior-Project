// ResultsColumn.tsx
import React from 'react';
import ExpandableSearch from './ExpandableSearch';
import '../styles/resultsColumn.css';
import { type Park } from '../../../types/park';


type ResultsColumnProps = {
  results: Park[];
  onParkSelect: (park: Park) => void;
  minimized: boolean;
};

const ResultsColumn: React.FC<ResultsColumnProps> = ({ results, onParkSelect, minimized }) => {
  return (
    <div className={`results-column ${minimized ? 'minimized' : ''}`}>
      <div className="results-header">
        <div className="left-controls">
          <button className="sort-button">Sort</button>
          <button className="view-button">View</button>
        </div>
        <ExpandableSearch />
      </div>
      <div className="results-list">
        {results.map((park) => (
          <div
            className="park-result"
            key={park.park_id}
            onClick={() => onParkSelect(park)}
          >
            <div className="result-image">
              <img src={park.park_photo_link} alt={park.park_name} />
            </div>
            <div className="result-info">
              <h2 className="park-name">{park.park_name}</h2>
              <p className="park-type">{park.park_type}</p>
              <p className="park-location">
                {park.park_state} / {park.park_region}
              </p>
            </div>
            <div className="result-rating">
              {Array.from({ length: 5 }, (_, index) => (
                <span key={index} className="star">
                  {index < park.park_average_rating ? '★' : '☆'}
                </span>
              ))}
            </div>
          </div>
        ))}
      </div>
    </div>
  );
};

export default ResultsColumn;
