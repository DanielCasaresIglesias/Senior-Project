import React from 'react';
import ChecklistFilter from './base-filters/ChecklistFilter';

type AccessibilityFilterProps = {
  onChange: (selected: string[]) => void;
};

const AccessibilityFilter: React.FC<AccessibilityFilterProps> = ({ onChange }) => {
  return (
    <ChecklistFilter
      label="Accessibility"
      iconSrc="images/filter-icons/base-icons/accessibility-icon.png"
      selectedIconSrc="images/filter-icons/selected-icons/accessibility-icon.png"
      iconAlt="Accessibility Icon"
      options={['Wheelchair', 'Visual', 'Hearing']}
      onChange={onChange}
    />
  );
};

export default AccessibilityFilter;
