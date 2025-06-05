CREATE TABLE parks (
  park_id SERIAL PRIMARY KEY,
  park_name VARCHAR(255) NOT NULL,
  park_photo_link VARCHAR (100),
  park_address VARCHAR (255),
  park_state VARCHAR(100),
  park_region VARCHAR(100),
  park_level VARCHAR(30) CHECK (park_level IN ('Federal', 'State', 'Regional', 'County', 'City/Municipal', 'Tribal', 'Private with Public Access', 'Uknown/Other')),
  park_type VARCHAR(30) CHECK (park_type IN ('Park', 'Recreation Area', 'Forest', 'Wilderness Area', 'Seashore', 'Beach', 'Historic Trail', 'Monument', 'Historic Site', 'Preserve', 'Memorial', 'Other Park Designation', 'Grassland', 'Management Unit', 'Marine Sanctuary', 'Wildlife Refuge', 'Wildlife Management Area', 'Fish Hatchery')),
  park_description TEXT,
  park_phone_number VARCHAR(15),
  park_size DECIMAL (10,2) CHECK (park_size >= 0),
  park_min_elevation INT,
  park_max_elevation INT,
  park_latitude DECIMAL (9,6),
  park_longitude DECIMAL (9,6),
  park_location GEOGRAPHY(Point, 4326),
  park_time_zone VARCHAR (50),
  park_entry_fee DECIMAL (6,2) CHECK (park_entry_fee >=0),
  park_parking_fee DECIMAL (6,2) CHECK (park_parking_fee >=0),
  park_average_rating DECIMAL (3,2) DEFAULT 0 CHECK (park_average_rating >= 0 AND park_average_rating <= 5),
  park_number_of_reviews INT CHECK (park_number_of_reviews >= 0),
  park_drone_permit VARCHAR(30) CHECK (park_drone_permit IN ('Permit Required', 'Not Allowed', 'No Permit Required', 'Seasonal')),
  park_fishing_permit VARCHAR(30) CHECK (park_fishing_permit IN ('Permit Required', 'Not Allowed', 'No Permit Required', 'Seasonal')),
  park_hunting_permit VARCHAR(30) CHECK (park_hunting_permit IN ('Permit Required', 'Not Allowed', 'No Permit Required', 'Seasonal'))
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

CREATE TABLE trails (
  trail_id SERIAL PRIMARY KEY,
  trail_name VARCHAR(255)
);

CREATE TABLE park_trails (
  park_trail_id SERIAL PRIMARY KEY,
  park_id INT REFERENCES parks(park_id) ON DELETE CASCADE,
  trail_id INT REFERENCES trails(trail_id) ON DELETE CASCADE,
  UNIQUE (park_id, trail_id)
);

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

CREATE EXTENSION IF NOT EXISTS postgis

INSERT INTO activities (activity_name) VALUES
  ('Hiking'), ('Backpacking'), ('Moutnain Biking'), ('Road Cycling'), ('Equestiran Riding'), ('Swimming'), ('Non-Motorized Boating'), ('Motorized Boating'), ('Surfing'), ('Scuba Diving/Snorkeling'), ('Fishing'), ('Tent Camping'), ('RV Camping'), ('Backcountry Camping'), ('Guided Tours'), ('Birdwatching'), ('Whale Watching'), ('Snow Sports'), ('Rock Climbing'), ('Geocaching'), ('Sledding/tobogganing'), ('Hunting');

INSERT INTO features (feature_name) VALUES
  ('Old-Growth Forests'), ('Canyons/Gorges'), ('Rivers'), ('Lakes/Reservoirs/Ponds'), ('Beaches'), ('Sand Dunes'), ('Wetlands/Marshes'), ('Meadows/Graslands'), ('Deserts'), ('Waterfalls'), ('Hot Springs'), ('Rock Formations'), ('Caves'), ('Volcanic Features'), ('Wildflower Fields'), ('Wildlife Habitats'), ('Tidepools'), ('Cultural/Historical Sites');

INSERT INTO facilities (facility_name) VALUES
  ('Restrooms'), ('Showers'), ('Potable Water'), ('Visitor Center'), ('Interpretive Exibits/Museum'), ('Gift Shop/Store'), ('Tent Campsites'), ('RV Hook-ups'), ('Group Campsites/Cabins'), ('Picnic Areas'), ('Playgrounds'), ('Boat Launches/Docks'), ('Fishing Piers'), ('Parking Lots'), ('Event Spaces'), ('Educational Facilities'), ('Community Gardens'), ('Wi-Fi Access Points'), ('Bike Racks'), ('Bike Repair Stations'), ('EV Charging Stations'), ('Gas Stations'), ('Ranger Stations'), ('First Aid Stations');