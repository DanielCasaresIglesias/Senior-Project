import React from 'react';
import RadioButtonFilter from './base-filters/RadioButtonFilter';


type PetPolicyFilterProps = {
  onChange: (selected: string | null) => void;
  initialSelected: string | null;
};

const PetPolicyFilter: React.FC<PetPolicyFilterProps> = ({
  onChange,
  initialSelected
}) => {
  return (
    <RadioButtonFilter
      label="Pet Policy"
      iconSrc="images/filter-icons/base-icons/pet-policy-icon.png"
      selectedIconSrc="images/filter-icons/selected-icons/pet-policy-icon.png"
      iconAlt="Pet Policy Icon"
      options={['Very Permissive', 'Somewhat Permissive', 'Not Permissive']}
      onChange={onChange}
      initialSelected={initialSelected}
    />
  );
};

export default PetPolicyFilter;
