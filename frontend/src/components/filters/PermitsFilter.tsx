import React from 'react';
import ChecklistFilter from './base-filters/ChecklistFilter';


type PermitsFilterProps = {
  onChange: (selected: string[]) => void;
  initialSelected: string[];
};

const PermitsFilter: React.FC<PermitsFilterProps> = ({
  onChange,
  initialSelected
}) => {
  return (
    <ChecklistFilter
      label="Permits"
      iconSrc="images/filter-icons/base-icons/permit-icon.png"
      selectedIconSrc="images/filter-icons/selected-icons/permit-icon.png"
      iconAlt="Permit Icon"
      options={['Hunting', 'Fishing', 'Fire', 'Backpacking']}
      onChange={onChange}
      initialSelected={initialSelected}
    />
  );
};

export default PermitsFilter;
