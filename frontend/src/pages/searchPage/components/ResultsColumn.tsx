// frontend/src/components/ResultsColumn.tsx
import React from 'react';
import ExpandableSearch from './ExpandableSearch';
import '../styles/resultsColumn.css';
import { type Park } from '../../../types/park';
import ParkResult from './ParkResult';
type ResultsColumnProps = {
  results: Park[];
  onParkSelect: (park: Park) => void;
  minimized: boolean;
};

const ResultsColumn: React.FC<ResultsColumnProps> = ({
  results,
  onParkSelect,
  minimized,
}) => {
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
          <ParkResult
            key={park.park_id}
            park={park}
            onSelect={onParkSelect}
          />
        ))}
      </div>
    </div>
  );
};

export default ResultsColumn;
