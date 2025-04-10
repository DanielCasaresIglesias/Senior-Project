import React from 'react';
import RadioButtonFilter from './base-filters/RadioButtonFilter';


type WeatherFilterProps = {
  onChange: (selected: string | null) => void;
  initialSelected: string | null;
};

const WeatherFilter: React.FC<WeatherFilterProps> = ({
  onChange,
  initialSelected
}) => {
  return (
    <RadioButtonFilter
      label="Weather"
      iconSrc="images/filter-icons/base-icons/weather-icon.png"
      selectedIconSrc="images/filter-icons/selected-icons/weather-icon.png"
      iconAlt="Weather Icon"
      options={['Sunny', 'Cloudy', 'Rain', 'Snow', 'Blizzard', 'Hail', 'Wind', 'fire', 'Tornado']}
      onChange={onChange}
      initialSelected={initialSelected}
    />
  );
};

export default WeatherFilter;
