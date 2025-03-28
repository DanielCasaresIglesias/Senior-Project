import React from 'react';
import RadioButtonFilter from './base-filters/RadioButtonFilter';

const WeatherFilter = ({ onChange }) => {
  return (
    <RadioButtonFilter
      label="Weather"
      iconSrc="images/filter-icons/base-icons/weather-icon.png"
      iconAlt="Weather Icon"
      options={['Sunny', 'Cloudy', 'Rain', 'Snow', 'Blizzard', 'Hail', 'Wind', 'fire', 'Tornado']}
      onChange={onChange}
    />
  );
};

export default WeatherFilter;
