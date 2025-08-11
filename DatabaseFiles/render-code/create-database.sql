CREATE TABLE parks (
    park_id SERIAL PRIMARY KEY,
    park_name VARCHAR(255) NOT NULL,
    park_address VARCHAR(255),
    park_state VARCHAR(100),
    park_region VARCHAR(100),
    park_level VARCHAR(30),
    park_type VARCHAR(30),
    park_description TEXT,
    park_phone_number VARCHAR(30),
    park_size DECIMAL(10,2),
    park_min_elevation INT,
    park_max_elevation INT,
    park_latitude DECIMAL (9,6),
    park_longitude DECIMAL (9,6),
    park_location GEOGRAPHY(Point,4326),
    park_time_zone VARCHAR(50),
    park_entry_fee DECIMAL(16,13),
    park_parking_fee DECIMAL(16,13),
    park_average_rating DECIMAL(3,2) DEFAULT 0,
    park_number_of_reviews INT,
    park_drone_permit VARCHAR(30),
    park_fishing_permit VARCHAR(30),
    park_hunting_permit VARCHAR(30),
    park_pet_policy VARCHAR(30),
    park_backcountry_permit VARCHAR(30),
    park_other_fee DECIMAL(16,13),
    park_photo_link VARCHAR(150),
    park_agency VARCHAR(100),
    CONSTRAINT parks_park_average_rating_check CHECK (((park_average_rating >= (0)::numeric) AND (park_average_rating <= (5)::numeric))),
    CONSTRAINT parks_park_drone_permit_check CHECK (((park_drone_permit)::text = ANY ((ARRAY['Permit Required'::VARCHAR, 'Not Allowed'::VARCHAR, 'No Permit Required'::VARCHAR, 'Seasonal'::VARCHAR])::text[]))),
    CONSTRAINT parks_park_entry_fee_check CHECK ((park_entry_fee >= (0)::numeric)),
    CONSTRAINT parks_park_fishing_permit_check CHECK (((park_fishing_permit)::text = ANY ((ARRAY['Permit Required'::VARCHAR, 'Not Allowed'::VARCHAR, 'No Permit Required'::VARCHAR, 'Seasonal'::VARCHAR])::text[]))),
    CONSTRAINT parks_park_hunting_permit_check CHECK (((park_hunting_permit)::text = ANY ((ARRAY['Permit Required'::VARCHAR, 'Not Allowed'::VARCHAR, 'No Permit Required'::VARCHAR, 'Seasonal'::VARCHAR])::text[]))),
    CONSTRAINT parks_park_level_check CHECK (((park_level)::text = ANY ((ARRAY['Federal'::VARCHAR, 'State'::VARCHAR, 'Regional'::VARCHAR, 'County'::VARCHAR, 'City/Municipal'::VARCHAR, 'Tribal'::VARCHAR, 'Private with Public Access'::VARCHAR, 'Unknown/Other'::VARCHAR])::text[]))),
    CONSTRAINT parks_park_number_of_reviews_check CHECK ((park_number_of_reviews >= 0)),
    CONSTRAINT parks_park_parking_fee_check CHECK ((park_parking_fee >= (0)::numeric)),
    CONSTRAINT parks_park_size_check CHECK ((park_size >= (0)::numeric)),
    CONSTRAINT parks_park_type_check CHECK (((park_type)::text = ANY ((ARRAY['Park'::VARCHAR, 'Recreation Area'::VARCHAR, 'Forest'::VARCHAR, 'Wilderness Area'::VARCHAR, 'Seashore'::VARCHAR, 'Beach'::VARCHAR, 'Historic Trail'::VARCHAR, 'Monument'::VARCHAR, 'Historic Site'::VARCHAR, 'Preserve'::VARCHAR, 'Memorial'::VARCHAR, 'Other Park Designation'::VARCHAR, 'Grassland'::VARCHAR, 'Management Unit'::VARCHAR, 'Marine Sanctuary'::VARCHAR, 'Wildlife Refuge'::VARCHAR, 'Wildlife Management Area'::VARCHAR, 'Fish Hatchery'::VARCHAR, 'Affiliated Area'::VARCHAR, 'Historical Park'::VARCHAR])::text[])))
);

CREATE TABLE park_open_dates (
  park_open_dates_id SERIAL PRIMARY KEY,
  park_id INT REFERENCES parks(park_id) ON DELETE CASCADE,
  open_date DATE NOT NULL,
  UNIQUE (park_id, open_date)
);

CREATE TABLE park_weather (
  park_weather_id SERIAL PRIMARY KEY,
  park_id INT REFERENCES parks(park_id) ON DELETE CASCADE,
  weather_date DATE NOT NULL,
  weather_condition VARCHAR(30) CHECK (weather_condition IN ('Sunny', 'Rain', 'Snow', 'Storm', 'Cloudy', 'Fog', 'Windy', 'Other')),
  UNIQUE (park_id, weather_date)
);

CREATE TABLE park_fire_risk (
  park_fire_risk_id SERIAL PRIMARY KEY,
  park_id INT REFERENCES parks(park_id) ON DELETE CASCADE,
  fire_risk_date DATE NOT NULL,
  fire_risk_level VARCHAR(30) CHECK (fire_risk_level IN ('Low', 'Moderate', 'High', 'Extreme')),
  UNIQUE (park_id, fire_risk_date)
);

CREATE TABLE trail_types (
  trail_type_id SERIAL PRIMARY KEY,
  trail_type_name VARCHAR(255)
);

CREATE TABLE park_trail_types (
  park_trail_type_id SERIAL PRIMARY KEY,
  park_id INT REFERENCES parks(park_id) ON DELETE CASCADE,
  trail_type_id INT REFERENCES trail_types(trail_type_id) ON DELETE CASCADE,
  UNIQUE (park_id, trail_type_id)
);

INSERT INTO trail_types (trail_type_name)
VALUES
  ('Hiking'),
  ('Mountain Biking'),
  ('Horseback Riding'),
  ('Wheelchair Accessible');

CREATE TABLE camp_types (
  camp_type_id SERIAL PRIMARY KEY,
  camp_type_name VARCHAR(255)
);

CREATE TABLE park_camp_types (
  park_camp_type_id SERIAL PRIMARY KEY,
  park_id INT REFERENCES parks(park_id) ON DELETE CASCADE,
  camp_type_id INT REFERENCES camp_types(camp_type_id) ON DELETE CASCADE,
  UNIQUE (park_id, camp_type_id)
);

INSERT INTO camp_types (camp_type_name)
VALUES
  ('Tent'),
  ('Backcountry'),
  ('RV'),
  ('Cabin');

CREATE TABLE accessibility (
  accessibility_id SERIAL PRIMARY KEY,
  accessibility_name VARCHAR(255)
);

CREATE TABLE park_accessibility (
  park_accessibility_id SERIAL PRIMARY KEY,
  park_id INT REFERENCES parks(park_id) ON DELETE CASCADE,
  accessibility_id INT REFERENCES accessibility(accessibility_id) ON DELETE CASCADE,
  UNIQUE (park_id, accessibility_id)
);

INSERT INTO accessibility (accessibility_name) VALUES
  ('Wheelchair Accessible'),
  ('ASL Audio Guide'),
  ('Interpretation Services'),
  ('Touch Models'),
  ('Audio Described Brochures'),
  ('Open-Captioned Videos'),
  ('Assistive Listening Devices'),
  ('One-Way Portable Microphones'),
  ('Soundscapes'),
  ('Braille'),
  ('Audio-Described Films'),
  ('Audio Wayside Signs'),
  ('Tactile Models'),
  ('Audio & Large Print Exibits'),
  ('Audio/Visual Tours'),
  ('Beach Wheelchairs');

CREATE TABLE activities (
  activity_id SERIAL PRIMARY KEY,
  activity_name VARCHAR(255)
);

CREATE TABLE park_activities (
  park_activity_id SERIAL PRIMARY KEY,
  park_id INT REFERENCES parks(park_id) ON DELETE CASCADE,
  activity_id INT REFERENCES activities(activity_id) ON DELETE CASCADE,
  UNIQUE (park_id, activity_id)
);

CREATE TABLE facilities (
  facility_id SERIAL PRIMARY KEY,
  facility_name VARCHAR(255)
);

CREATE TABLE park_facilities (
  park_facility_id SERIAL PRIMARY KEY,
  park_id INT REFERENCES parks(park_id) ON DELETE CASCADE,
  facility_id INT REFERENCES facilities(facility_id) ON DELETE CASCADE,
  UNIQUE (park_id, facility_id)
);

CREATE TABLE features (
  feature_id SERIAL PRIMARY KEY,
  feature_name VARCHAR(255)
);

CREATE TABLE park_features (
  park_feature_id SERIAL PRIMARY KEY,
  park_id INT REFERENCES parks(park_id) ON DELETE CASCADE,
  feature_id INT REFERENCES features(feature_id) ON DELETE CASCADE,
  UNIQUE (park_id, feature_id)
);

CREATE TABLE users (
  user_id SERIAL PRIMARY KEY,
  user_name VARCHAR(50) UNIQUE NOT NULL,
  user_email VARCHAR(100) UNIQUE NOT NULL,
  password_hash TEXT NOT NULL,
  user_created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE reviews (
  review_id SERIAL PRIMARY KEY,
  park_id INT REFERENCES parks(park_id) ON DELETE CASCADE,
  user_id INT REFERENCES users(user_id) ON DELETE CASCADE,
  review_rating DECIMAL (3,2) CHECK (review_rating >= 0 and review_rating <= 5),
  review_posting_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  review_contents TEXT
);

CREATE TABLE review_activities (
  review_activities_id SERIAL PRIMARY KEY,
  review_id INT REFERENCES reviews(review_id) ON DELETE CASCADE,
  activity_id INT REFERENCES activities(activity_id) ON DELETE CASCADE,
  UNIQUE (review_id, activity_id)
);

CREATE TABLE saved_searches (
  saved_search_id SERIAL PRIMARY KEY,
  saved_search_name VARCHAR(100) NOT NULL,
  user_id INT REFERENCES users(user_id) ON DELETE CASCADE,
  saved_search_config JSONB,
  saved_search_created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  UNIQUE (user_id, saved_search_name)
);


CREATE INDEX idx_parks_state ON parks (park_state);
CREATE INDEX idx_reviews_park_id ON reviews (park_id);
CREATE INDEX idx_location_gist ON parks USING GIST (park_location);

CREATE EXTENSION IF NOT EXISTS postgis;

INSERT INTO activities (activity_name) VALUES
  ('Hiking'), ('Backpacking'), ('Moutnain Biking'), ('Road Cycling'),
  ('Equestiran Riding'), ('Swimming'), ('Non-Motorized Boating'),
  ('Motorized Boating'), ('Surfing'), ('Scuba Diving'), ('Fishing'),
  ('Guided Tours'), ('Birdwatching'), ('Whale Watching'), ('Snow Sports'),
  ('Rock Climbing'), ('Geocaching'), ('Sledding'), ('Hunting');

INSERT INTO features (feature_name) VALUES
  ('Old-Growth Forest'), ('Canyon'), ('River'), ('Lake'), ('Beach'),
  ('Sand Dune'), ('Wetland/Marsh'), ('Grassland'), ('Desert'), ('Waterfall'),
  ('Hot Spring'), ('Rock Formation'), ('Cave'), ('Volcanic Feature'),
  ('Wildflower Field'), ('Tidepool'), ('Island'), ('Cultural/Historical Site');

INSERT INTO facilities (facility_name) VALUES
  ('Restrooms'), ('Showers'), ('Potable Water'), ('Visitor Center'), ('Museum'),
  ('Gift Shop'), ('RV Hook-up'), ('Picnic Area'), ('Boat Launch/Dock'),
  ('Fishing Pier'), ('Parking Lot'), ('Event Space'), ('Educational Facility'),
  ('Wi-Fi Access Point'), ('Bike Rack'), ('Bike Repair Station'),
  ('EV Charging Station'), ('Gas Station'), ('Ranger Station');