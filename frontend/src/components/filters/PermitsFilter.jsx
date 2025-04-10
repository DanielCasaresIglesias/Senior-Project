import React from 'react';
import ChecklistFilter from './base-filters/ChecklistFilter';

const PermitsFilter = ({ onChange }) => {
  return (
    <ChecklistFilter
      label="Permits"
      iconSrc="images/filter-icons/base-icons/permit-icon.png"
      iconAlt="Permit Icon"
      options={['Hunting', 'Fishing', 'Fire', 'Backpacking']}
      onChange={onChange}
    />
  );
};

export default PermitsFilter;
