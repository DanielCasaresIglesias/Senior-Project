import React from 'react';
import ChecklistFilter from './base-filters/ChecklistFilter';

type AccessibilityFilterProps = {
  onChange: (selected: string[]) => void;
  initialSelected: string[];
};

const AccessibilityFilter: React.FC<AccessibilityFilterProps> = ({
  onChange,
  initialSelected,
}) => {
  return (
    <ChecklistFilter
      label="Accessibility"
      iconSrc="images/filter-icons/base-icons/accessibility-icon.png"
      selectedIconSrc="images/filter-icons/selected-icons/accessibility-icon.png"
      iconAlt="Accessibility Icon"
      options={['Wheelchair', 'Visual', 'Hearing']}
      onChange={onChange}
      initialSelected={initialSelected}
    />
  );
};

export default AccessibilityFilter;
