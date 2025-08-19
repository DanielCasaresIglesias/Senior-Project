// frontend/src/components/ResultsColumn.tsx
import React, { useMemo, useState } from 'react';
import ExpandableSearch from './ExpandableSearch';
import '../styles/resultsColumn.css';
import { type Park } from '../../../types/park';
import ParkResult from './ParkResult';
import SortDropdown, { type SortField, type SortDirection } from './SortDropdown';

type ResultsColumnProps = {
  results: Park[];
  onParkSelect: (park: Park) => void;
  minimized: boolean;
  // optional: include user's resolved coords when distance filter is active
  userLocation?: { lat: number; lon: number } | null;
};

const ResultsColumn: React.FC<ResultsColumnProps> = ({
  results,
  onParkSelect,
  minimized,
  userLocation = null,
}) => {
  // local sort state
  const [activeSort, setActiveSort] = useState<{ field: SortField | null; dir: SortDirection | null }>({
    field: null,
    dir: null,
  });

  // maintain the sorted list; default is original order
  const [sortedResults, setSortedResults] = useState<Park[]>(results);

  // if results prop changes (new search), reset sortedResults to match incoming results
  React.useEffect(() => {
    setSortedResults(results);
    setActiveSort({ field: null, dir: null });
  }, [results]);

  const handleApplySort = (field: SortField, dir: SortDirection | null, sorted: Park[]) => {
    setActiveSort({ field, dir });
    setSortedResults(sorted);
  };

  return (
    <div className={`results-column ${minimized ? 'minimized' : ''}`}>
      <div className="results-header">
        <div className="left-controls">
          <SortDropdown
            results={results}
            userLocation={userLocation}
            active={activeSort}
            onApplySort={handleApplySort}
          />
          <button className="view-button">View</button>
        </div>
        <ExpandableSearch />
      </div>

      <div className="results-list">
        {sortedResults.map((park) => (
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
