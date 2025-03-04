import React from 'react';
import '../../styles/search-page/resultsColumn.css';

const ResultsColumn = ({ results, onParkSelect, onMinimize, minimized }) => {
  return (
    <div className={`results-column ${minimized ? 'minimized' : ''}`}>
      <div className="results-header">
        <button className="sort-button">Sort</button>
        <button className="view-button">View</button>
        <button className="minimize-button" onClick={onMinimize}>←</button>
      </div>
      <div className="results-list">
        {results.map((park) => (
          <div className="park-result" key={park.id} onClick={() => onParkSelect(park)}>
            <div className="result-image">
              <img src={park.image} alt={park.name} />
            </div>
            <div className="result-info">
              <h2 className="park-name">{park.name}</h2>
              <p className="park-type">{park.type}</p>
              <p className="park-location">{park.state} / {park.region}</p>
            </div>
            <div className="result-rating">
              {Array.from({ length: 5 }, (_, index) => (
                <span key={index} className="star">
                  {index < park.rating ? '★' : '☆'}
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
