// frontend/src/components/filters/PetPolicyFilter.tsx
import React from 'react';
import RadioButtonFilter from './base-filters/RadioButtonFilter';

type PetPolicyFilterProps = {
  onChange: (selected: string | null) => void;
  initialSelected: string | null;
};

const PetPolicyFilter: React.FC<PetPolicyFilterProps> = ({
  onChange,
  initialSelected,
}) => {
  const options = [
    'No Pets Allowed',
    'Parking Lot Only',
    'Pets Allowed (Limited)',
    'Pets Allowed',
    'Pets Allowed on Leash',
    'Service Animals Only',
  ];

  return (
    <RadioButtonFilter
      label="Pet Policy"
      iconSrc="images/filter-icons/base-icons/pet-policy-icon.png"
      selectedIconSrc="images/filter-icons/selected-icons/pet-policy-icon.png"
      iconAlt="Pet Policy Icon"
      options={options}
      onChange={onChange}
      initialSelected={initialSelected}
    />
  );
};

export default PetPolicyFilter;
