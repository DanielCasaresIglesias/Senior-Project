import React from 'react';
import RadioButtonFilter from './base-filters/RadioButtonFilter';

const PetPolicyFilter = ({ onChange }) => {
  return (
    <RadioButtonFilter
      label="Pet Policy"
      iconSrc="images/filter-icons/pet-policy-icon.png"
      iconAlt="Pet Policy Icon"
      options={['Very Permissive', 'Somewhat Permissive', 'Not Permissive']}
      onChange={onChange}
    />
  );
};

export default PetPolicyFilter;
