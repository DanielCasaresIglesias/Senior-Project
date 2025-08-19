// frontend/src/components/ViewDropdown.tsx
import React, { useEffect, useRef, useState } from 'react';

export type ViewMode = 'detailed' | 'minimal';

type Props = {
  active: ViewMode;
  onChange: (mode: ViewMode) => void;
};

const ViewDropdown: React.FC<Props> = ({ active, onChange }) => {
  const [open, setOpen] = useState(false);
  const ref = useRef<HTMLDivElement | null>(null);

  useEffect(() => {
    const onDocClick = (e: MouseEvent) => {
      if (ref.current && !ref.current.contains(e.target as Node)) {
        setOpen(false);
      }
    };
    document.addEventListener('click', onDocClick);
    return () => document.removeEventListener('click', onDocClick);
  }, []);

  const select = (mode: ViewMode) => {
    onChange(mode);
    setOpen(false);
  };

  return (
    <div className="view-dropdown" ref={ref}>
      <button
        className="view-toggle"
        onClick={() => setOpen((s) => !s)}
        aria-expanded={open}
        aria-haspopup="menu"
      >
        View: {active === 'detailed' ? 'Detailed' : 'Minimal'}
      </button>

      {open && (
        <ul className="view-options" role="menu">
          <li
            role="menuitem"
            className={`view-option ${active === 'detailed' ? 'active' : ''}`}
            onClick={() => select('detailed')}
          >
            Detailed {active === 'detailed' ? '✓' : ''}
          </li>
          <li
            role="menuitem"
            className={`view-option ${active === 'minimal' ? 'active' : ''}`}
            onClick={() => select('minimal')}
          >
            Minimal {active === 'minimal' ? '✓' : ''}
          </li>
        </ul>
      )}
    </div>
  );
};

export default ViewDropdown;
