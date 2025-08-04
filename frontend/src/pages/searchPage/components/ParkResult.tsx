// frontend/src/components/ResultsColumn/ParkResult.tsx
import React, { useRef, useEffect, useState } from 'react';
import useFitText from '../../../hooks/useFitText';
import type { Park } from '../../../types/park';

type ParkResultProps = {
  park: Park;
  onSelect: (park: Park) => void;
};

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

const ParkResult: React.FC<ParkResultProps> = ({ park, onSelect }) => {
  // 1. Ref for measuring container width
  const topRowRef = useRef<HTMLDivElement>(null);
  const [maxWidthPx, setMaxWidthPx] = useState(0);

  // 2. Measure once (and on resize) how much width the title has
  useEffect(() => {
    const measure = () => {
      if (!topRowRef.current) return;
      const total = topRowRef.current.clientWidth;
      // subtract the star area width:
      const starArea = topRowRef.current.querySelector('.result-rating');
      const starW = starArea?.clientWidth ?? 0.2;
      setMaxWidthPx(total - starW - 0 /* gap */);
    };
    measure();
    window.addEventListener('resize', measure);
    return () => window.removeEventListener('resize', measure);
  }, []);

  // 3. Fit-text hook, now with a stable `maxWidthPx`
  const { ref: titleRef, fontSizeRem } = useFitText({
    maxFontSizeRem: 1.2,
    minFontSizeRem: 0.8,
    maxWidthPx,
  });

  // Combine level + type, e.g. "National Park" or "City Recreation Area"
  const levelLabel = levelMap[park.park_level] || park.park_level;
  const displayType = `${levelLabel} ${park.park_type}`;

  return (
    <div
      className="park-result"
      onClick={() => onSelect(park)}
    >
      <div className="result-image">
        <img src={park.park_photo_link} alt={park.park_name} />
      </div>
      <div className="result-content">
        <div className="top-row" ref={topRowRef}>
          <h2
            className="park-name"
            ref={titleRef}
            style={{
              fontSize: `${fontSizeRem}rem`,
              whiteSpace: 'nowrap',
              overflow: 'hidden',
              textOverflow: 'ellipsis',
              margin: 0,
            }}
            title={park.park_name}
          >
            {park.park_name}
          </h2>
          <div className="result-rating">
            {Array.from({ length: 5 }, (_, i) => (
              <span key={i} className="star">
                {i < park.park_average_rating ? '★' : '☆'}
              </span>
            ))}
          </div>
        </div>
        <div className="bottom-row">
          <p className="park-type">{displayType}</p>
          <p className="park-state">{park.park_state}</p>
          <p className="park-region">{park.park_region}</p>
        </div>
      </div>
    </div>
  );
};

export default ParkResult;
