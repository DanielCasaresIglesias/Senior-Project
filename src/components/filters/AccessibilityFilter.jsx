import React from 'react';
import ChecklistFilter from './base-filters/ChecklistFilter';

const AccessibilityFilter = ({ onChange }) => {
  return (
    <ChecklistFilter
      label="Accessibility"
      iconSrc="images/filter-icons/base-icons/accessibility-icon.png"
      iconAlt="Accessibility Icon"
      options={['Wheelchair', 'Visual', 'Hearing']}
      onChange={onChange}
    />
  );
};

export default AccessibilityFilter;
