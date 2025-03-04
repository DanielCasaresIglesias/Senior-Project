import React, { useState } from 'react';

const StarIcon = ({ label, filled, onClick }) => {
  const [hover, setHover] = useState(false);

  // Colors for different states:
  // Default: stroke light gray (#ccc), fill white, text black.
  // Hover (if not filled): stroke dark gray (#888).
  // Filled: stroke & fill dark gray (#444), text white.
  const strokeColor = filled ? '#444' : hover ? '#888' : '#ccc';
  const fillColor = filled ? '#444' : 'white';
  const textColor = filled ? 'white' : 'black';

  return (
    <svg
      onClick={onClick}
      onMouseEnter={() => setHover(true)}
      onMouseLeave={() => setHover(false)}
      width="40"
      height="40"
      viewBox="0 0 23.82 23.1"
      style={{ cursor: 'pointer' }}
    >
      <g>
        <path
          d="M8.45 7.27l2.93-6.8a.78.78 0 0 1 1.42 0l2.94 6.8a.52.52 0 0 0 .47.31H23a.78.78 0 0 1 .53 1.34l-5.34 5a.52.52 0 0 0-.15.49l1.67 7.74a.78.78 0 0 1-1.18.81l-6.2-4a.52.52 0 0 0-.56 0L5.62 23a.78.78 0 0 1-1.18-.82l1.68-7.72a.52.52 0 0 0-.16-.5l-5.69-5a.78.78 0 0 1 .51-1.38H8a.52.52 0 0 0 .45-.31z"
          fill={fillColor}
          stroke={strokeColor}
          strokeWidth="2"
        />
      </g>
      <text
        x="50%"
        y="60%"
        textAnchor="middle"
        style={{
          fill: textColor,
          fontSize: '12px',
          fontWeight: 'bold',
          pointerEvents: 'none'
        }}
      >
        {label}
      </text>
    </svg>
  );
};

export default StarIcon;
