
INSERT INTO parks (
  park_id,
  park_name,
  park_address,
  park_state,
  park_region,
  park_level,
  park_type,
  park_description,
  park_phone_number,
  park_size,
  park_min_elevation,
  park_max_elevation,
  park_latitude,
  park_longitude,
  park_location,
  park_time_zone,
  park_entry_fee,
  park_parking_fee,
  park_average_rating,
  park_number_of_reviews,
  park_drone_permit,
  park_fishing_permit,
  park_hunting_permit,
  park_pet_policy,
  park_backcountry_permit,
  park_other_fee,
  park_photo_link,
  park_agency
) VALUES (
  1,
  'Alcatraz Island',
  'Alcatraz Island, San Francisco Bay, CA 94133',
  'California',
  'San Francisco Bay Area',
  'Federal',
  'Affiliated Area',
  'Alcatraz Island is a historic site located in the San Francisco Bay, best known for its infamous federal penitentiary that operated from 1934 to 1963. Managed as part of the Golden Gate National Recreation Area, this Affiliated Area of the National Park Service also includes the remnants of a military fortification and the oldest operating lighthouse on the West Coast. Alcatraz has a layered history—once home to Civil War-era military prisoners, it later became a symbol of Native American resistance during the 1969-1971 occupation by activists calling for Indigenous rights.
Today, visitors can explore the island''s preserved prison buildings, historic gardens, and stunning bay views while learning about its multifaceted past through exhibits and ranger-led tours. Alcatraz is accessible only by ferry, and it remains one of the most popular cultural and historical attractions in the United States.',
  '415-561-4900',
  22,
  0,
  82,
  -122.4229542,
  37.82697625,
  ST_SetSRID(
    ST_MakePoint(37.82697625, -122.4229542),
    4326
  )::geography,
  NULL,
  0,
  0,
  0,
  0,
  'Not Allowed',
  'Not Allowed',
  'Not Allowed',
  'Service Animals Only',
  'Not Allowed',
  47.95,
  'https://res.cloudinary.com/def88aad2/image/upload/v1749436430/alcatraz-island-national-affiliated-area_w7mief.jpg',
  'National Parks Agency'
);
INSERT INTO park_activities (park_id, activity_id)
     SELECT 1, activity_id FROM activities
     WHERE activity_name = 'Guided Tours'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 1, facility_id FROM facilities
     WHERE facility_name = 'Restrooms'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 1, facility_id FROM facilities
     WHERE facility_name = 'Potable Water'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 1, facility_id FROM facilities
     WHERE facility_name = 'Visitor Center'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 1, facility_id FROM facilities
     WHERE facility_name = 'Museum'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 1, facility_id FROM facilities
     WHERE facility_name = 'Gift Shop'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 1, facility_id FROM facilities
     WHERE facility_name = 'Picnic Area'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 1, facility_id FROM facilities
     WHERE facility_name = 'Event Space'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 1, facility_id FROM facilities
     WHERE facility_name = 'Educational Facility'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 1, feature_id FROM features
     WHERE feature_name = 'Island'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 1, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 1, accessibility_id FROM accessibility
     WHERE accessibility_name = 'ASL Audio Guide'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 1, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Interpretation Services'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 1, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Touch Models'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 1, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Audio Described Brochures'
     ON CONFLICT DO NOTHING;


INSERT INTO parks (
  park_id,
  park_name,
  park_address,
  park_state,
  park_region,
  park_level,
  park_type,
  park_description,
  park_phone_number,
  park_size,
  park_min_elevation,
  park_max_elevation,
  park_latitude,
  park_longitude,
  park_location,
  park_time_zone,
  park_entry_fee,
  park_parking_fee,
  park_average_rating,
  park_number_of_reviews,
  park_drone_permit,
  park_fishing_permit,
  park_hunting_permit,
  park_pet_policy,
  park_backcountry_permit,
  park_other_fee,
  park_photo_link,
  park_agency
) VALUES (
  2,
  'Cabrillo',
  'Cabrillo National Monument, 1800 Cabrillo Memorial Drive, San Diego, CA 92106',
  'California',
  'San Diego County',
  'Federal',
  'Monument',
  'Cabrillo National Monument, located at the southern tip of the Point Loma Peninsula in San Diego, California, commemorates the landing of Juan Rodríguez Cabrillo in 1542 — the first European expedition to set foot on what is now the West Coast of the United States. This National Monument honors Cabrillo’s historic journey and the cultural exchanges it initiated.
In addition to its historical significance, the site offers breathtaking panoramic views of San Diego Bay, the Pacific Ocean, and the city skyline. Visitors can explore the Old Point Loma Lighthouse, tide pools rich with marine life, coastal sage scrub habitats, and seasonal whale watching. The park also features military history exhibits, including coastal defense batteries from World War II.
With its blend of cultural history, natural beauty, and marine biodiversity, Cabrillo National Monument is a unique educational and recreational destination within the National Park Service.',
  '619-523-4285',
  144,
  0,
  422,
  -117.241576269881,
  32.6722143821441,
  ST_SetSRID(
    ST_MakePoint(32.6722143821441, -117.241576269881),
    4326
  )::geography,
  NULL,
  0,
  20,
  0,
  0,
  'Not Allowed',
  'Not Allowed',
  'Not Allowed',
  'Service Animals Only',
  'Not Allowed',
  0,
  'https://res.cloudinary.com/def88aad2/image/upload/v1749436430/alcatraz-island-national-affiliated-area_w7mief.jpg',
  'National Parks Agency'
);
INSERT INTO park_activities (park_id, activity_id)
     SELECT 2, activity_id FROM activities
     WHERE activity_name = 'Guided Tours'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 2, activity_id FROM activities
     WHERE activity_name = 'Birdwatching'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 2, activity_id FROM activities
     WHERE activity_name = 'Whale Watching'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 2, activity_id FROM activities
     WHERE activity_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 2, facility_id FROM facilities
     WHERE facility_name = 'Restrooms'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 2, facility_id FROM facilities
     WHERE facility_name = 'Potable Water'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 2, facility_id FROM facilities
     WHERE facility_name = 'Visitor Center'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 2, facility_id FROM facilities
     WHERE facility_name = 'Museum'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 2, facility_id FROM facilities
     WHERE facility_name = 'Gift Shop'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 2, facility_id FROM facilities
     WHERE facility_name = 'Picnic Area'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 2, facility_id FROM facilities
     WHERE facility_name = 'Event Space'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 2, facility_id FROM facilities
     WHERE facility_name = 'Wi-Fi Access Point'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 2, facility_id FROM facilities
     WHERE facility_name = 'Bike Rack'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 2, feature_id FROM features
     WHERE feature_name = 'Tidepool'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 2, feature_id FROM features
     WHERE feature_name = 'Cultural/Historical Site'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 2, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Interpretation Services'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 2, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Open-Captioned Videos'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 2, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Assistive Listening Devices'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 2, accessibility_id FROM accessibility
     WHERE accessibility_name = 'One-Way Portable Microphones'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 2, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Soundscapes'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 2, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 2, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Braille'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 2, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Audio-Described Films'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 2, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Audio Wayside Signs'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 2, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Tactile Models'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 2, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Audio & Large Print Exibits'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 2, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Audio/Visual Tours'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 2, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Hiking'
     ON CONFLICT DO NOTHING;


INSERT INTO parks (
  park_id,
  park_name,
  park_address,
  park_state,
  park_region,
  park_level,
  park_type,
  park_description,
  park_phone_number,
  park_size,
  park_min_elevation,
  park_max_elevation,
  park_latitude,
  park_longitude,
  park_location,
  park_time_zone,
  park_entry_fee,
  park_parking_fee,
  park_average_rating,
  park_number_of_reviews,
  park_drone_permit,
  park_fishing_permit,
  park_hunting_permit,
  park_pet_policy,
  park_backcountry_permit,
  park_other_fee,
  park_photo_link,
  park_agency
) VALUES (
  3,
  'Castle Mountains',
  'Castle Mountains National Monument, 2701 Barstow Road, Barstow, CA 92311',
  'California',
  'Desert',
  'Federal',
  'Monument',
  'Castle Mountains National Monument is a vast and rugged desert landscape nestled between the New York and Castle Mountains in California’s eastern Mojave Desert. Established in 2016, the monument preserves over 20,000 acres of scenic high desert terrain, rich in biodiversity, cultural history, and geologic features.
Once a region of mining and homesteading, the monument now serves as a vital wildlife corridor connecting Mojave National Preserve to other protected lands. Visitors will find panoramic views, towering rock formations, blooming wildflowers in spring, and thriving populations of bighorn sheep, desert tortoises, and golden eagles.
The area remains largely undeveloped, offering solitude and self-guided adventure for those prepared to hike, camp, or ride horseback across its open desert Grassland and volcanic hills. Castle Mountains is a place for reflection, wilderness exploration, and immersion in the natural rhythms of the Mojave.',
  '760-252-6100',
  20920,
  4000,
  5580,
  -115.126617066681,
  35.3019091418431,
  ST_SetSRID(
    ST_MakePoint(35.3019091418431, -115.126617066681),
    4326
  )::geography,
  NULL,
  0,
  0,
  0,
  0,
  'Not Allowed',
  'Not Allowed',
  'Not Allowed',
  'Service Animals Only',
  'No Permit Required',
  0,
  'https://res.cloudinary.com/def88aad2/image/upload/v1749436757/castle-mountains-national-monument_hg1clz.jpg',
  'National Parks Agency'
);
INSERT INTO park_activities (park_id, activity_id)
     SELECT 3, activity_id FROM activities
     WHERE activity_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 3, activity_id FROM activities
     WHERE activity_name = 'Backpacking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 3, activity_id FROM activities
     WHERE activity_name = 'Equestiran Riding'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 3, activity_id FROM activities
     WHERE activity_name = 'Birdwatching'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 3, feature_id FROM features
     WHERE feature_name = 'Grassland'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 3, feature_id FROM features
     WHERE feature_name = 'Rock Formation'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 3, feature_id FROM features
     WHERE feature_name = 'Wildflower Field'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 3, feature_id FROM features
     WHERE feature_name = 'Cultural/Historical Site'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 3, feature_id FROM features
     WHERE feature_name = 'Desert'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 3, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 3, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Horseback Riding'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 3, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Tent'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 3, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Backcountry'
     ON CONFLICT DO NOTHING;


INSERT INTO parks (
  park_id,
  park_name,
  park_address,
  park_state,
  park_region,
  park_level,
  park_type,
  park_description,
  park_phone_number,
  park_size,
  park_min_elevation,
  park_max_elevation,
  park_latitude,
  park_longitude,
  park_location,
  park_time_zone,
  park_entry_fee,
  park_parking_fee,
  park_average_rating,
  park_number_of_reviews,
  park_drone_permit,
  park_fishing_permit,
  park_hunting_permit,
  park_pet_policy,
  park_backcountry_permit,
  park_other_fee,
  park_photo_link,
  park_agency
) VALUES (
  4,
  'César E. Chávez',
  '29700 Woodford-Tehachapi Rd, Keene, CA 93531',
  'California',
  'Central Valley',
  'Federal',
  'Monument',
  'César E. Chávez National Monument, located in Keene, California, preserves the 116-acre La Paz ranch where César Chávez and the United Farm Workers led their campaign for farmworker rights from 1970 to 1993. Centered on Chávez’s restored office and library, the site features a visitor center with interpretive exhibits, a wheelchair-accessible Memorial Garden honoring Chávez and his wife Helen, and the Garden of the Southwest showcasing native plants from his Arizona childhood. Visitors can wander the cultural landscape of the old quarry buildings and meeting areas where UFW staff planned strikes and negotiated contracts, while learning about Chávez’s philosophy of nonviolent social change. Open year-round with no entrance fee, the monument offers educational programs, guided tours, and opportunities for reflection amid the Tehachapi Mountains’ serene, sun-baked hills. It stands as the first National Park Service unit dedicated to a contemporary Latino American and continues to inspire new generations committed to social justice.',
  '661-823-6134',
  116,
  2600,
  2600,
  -118.558632015135,
  35.2230997277212,
  ST_SetSRID(
    ST_MakePoint(35.2230997277212, -118.558632015135),
    4326
  )::geography,
  NULL,
  0,
  0,
  0,
  0,
  'Not Allowed',
  'Not Allowed',
  'Not Allowed',
  'Pets Allowed on Leash',
  'Not Allowed',
  0,
  'https://res.cloudinary.com/def88aad2/image/upload/v1749436830/cesar-e-chavez-national-monument_b9rcmv.jpg',
  'National Parks Agency'
);
INSERT INTO park_activities (park_id, activity_id)
     SELECT 4, activity_id FROM activities
     WHERE activity_name = 'Guided Tours'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 4, facility_id FROM facilities
     WHERE facility_name = 'Restrooms'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 4, facility_id FROM facilities
     WHERE facility_name = 'Potable Water'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 4, facility_id FROM facilities
     WHERE facility_name = 'Visitor Center'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 4, facility_id FROM facilities
     WHERE facility_name = 'Museum'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 4, facility_id FROM facilities
     WHERE facility_name = 'Gift Shop'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 4, facility_id FROM facilities
     WHERE facility_name = 'Picnic Area'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 4, facility_id FROM facilities
     WHERE facility_name = 'Parking Lot'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 4, feature_id FROM features
     WHERE feature_name = 'Cultural/Historical Site'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 4, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 4, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Open-Captioned Videos'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 4, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Audio Described Brochures'
     ON CONFLICT DO NOTHING;


INSERT INTO parks (
  park_id,
  park_name,
  park_address,
  park_state,
  park_region,
  park_level,
  park_type,
  park_description,
  park_phone_number,
  park_size,
  park_min_elevation,
  park_max_elevation,
  park_latitude,
  park_longitude,
  park_location,
  park_time_zone,
  park_entry_fee,
  park_parking_fee,
  park_average_rating,
  park_number_of_reviews,
  park_drone_permit,
  park_fishing_permit,
  park_hunting_permit,
  park_pet_policy,
  park_backcountry_permit,
  park_other_fee,
  park_photo_link,
  park_agency
) VALUES (
  5,
  'Channel Islands',
  '1901 Spinnaker Drive, Ventura, CA 93001',
  'California',
  'Los Angeles County',
  'Federal',
  'Park',
  'Channel Islands National Park, off the coast of Southern California, protects five rugged islands—Anacapa, Santa Cruz, Santa Rosa, San Miguel, and Santa Barbara—along with their surrounding ocean waters. Accessible only by boat or small plane, the park offers visitors a chance to hike across windswept canyons and coastal bluffs, paddle through kelp forests rich with sea life, snorkel or dive among vibrant reefs, and camp under star-filled skies on primitive backcountry sites. Home to numerous endemic species—like the diminutive Island Fox—and critical seabird colonies, Channel Islands preserves both natural and cultural resources, from ancient Chumash village sites to historic ranch lands, providing an unparalleled wilderness experience just a short trip from the mainland.',
  '805 658-5730',
  249561,
  0,
  740,
  -119.751553851379,
  34.01426576779,
  ST_SetSRID(
    ST_MakePoint(34.01426576779, -119.751553851379),
    4326
  )::geography,
  NULL,
  0,
  0,
  0,
  0,
  'Not Allowed',
  'Permit Required',
  'Not Allowed',
  'Service Animals Only',
  'No Permit Required',
  70,
  'https://res.cloudinary.com/def88aad2/image/upload/v1749436882/channel-islands-national-park_ofrcbv.jpg',
  'National Parks Agency'
);
INSERT INTO park_activities (park_id, activity_id)
     SELECT 5, activity_id FROM activities
     WHERE activity_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 5, activity_id FROM activities
     WHERE activity_name = 'Backpacking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 5, activity_id FROM activities
     WHERE activity_name = 'Swimming'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 5, activity_id FROM activities
     WHERE activity_name = 'Scuba Diving/Snorkeling'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 5, activity_id FROM activities
     WHERE activity_name = 'Non-Motorized Boating'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 5, activity_id FROM activities
     WHERE activity_name = 'Motorized Boating'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 5, activity_id FROM activities
     WHERE activity_name = 'Fishing'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 5, activity_id FROM activities
     WHERE activity_name = 'Guided Tours'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 5, activity_id FROM activities
     WHERE activity_name = 'Birdwatching'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 5, activity_id FROM activities
     WHERE activity_name = 'Whale Watching'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 5, facility_id FROM facilities
     WHERE facility_name = 'Restrooms'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 5, facility_id FROM facilities
     WHERE facility_name = 'Potable Water'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 5, facility_id FROM facilities
     WHERE facility_name = 'Visitor Center'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 5, facility_id FROM facilities
     WHERE facility_name = 'Museum'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 5, facility_id FROM facilities
     WHERE facility_name = 'Gift Shop'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 5, facility_id FROM facilities
     WHERE facility_name = 'Picnic Area'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 5, facility_id FROM facilities
     WHERE facility_name = 'Educational Facility'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 5, facility_id FROM facilities
     WHERE facility_name = 'Fishing Pier'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 5, facility_id FROM facilities
     WHERE facility_name = 'Ranger Station'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 5, feature_id FROM features
     WHERE feature_name = 'Island'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 5, feature_id FROM features
     WHERE feature_name = 'Beach'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 5, feature_id FROM features
     WHERE feature_name = 'Canyon'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 5, feature_id FROM features
     WHERE feature_name = 'Sand Dune'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 5, feature_id FROM features
     WHERE feature_name = 'Rock Formation'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 5, feature_id FROM features
     WHERE feature_name = 'Cave'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 5, feature_id FROM features
     WHERE feature_name = 'Volcanic Feature'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 5, feature_id FROM features
     WHERE feature_name = 'Wildflower Field'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 5, feature_id FROM features
     WHERE feature_name = 'Tidepool'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 5, feature_id FROM features
     WHERE feature_name = 'Cultural/Historical Site'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 5, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Beach Wheelchairs'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 5, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Open-Captioned Videos'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 5, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Tactile Models'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 5, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Interpretation Services'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 5, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Braille'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 5, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Audio Described Brochures'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 5, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 5, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 5, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Tent'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 5, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Backcountry'
     ON CONFLICT DO NOTHING;


INSERT INTO parks (
  park_id,
  park_name,
  park_address,
  park_state,
  park_region,
  park_level,
  park_type,
  park_description,
  park_phone_number,
  park_size,
  park_min_elevation,
  park_max_elevation,
  park_latitude,
  park_longitude,
  park_location,
  park_time_zone,
  park_entry_fee,
  park_parking_fee,
  park_average_rating,
  park_number_of_reviews,
  park_drone_permit,
  park_fishing_permit,
  park_hunting_permit,
  park_pet_policy,
  park_backcountry_permit,
  park_other_fee,
  park_photo_link,
  park_agency
) VALUES (
  6,
  'Death Valley',
  'P.O. Box 579, Death Valley, CA 92328',
  'California',
  'Desert',
  'Federal',
  'Park',
  'Death Valley National Park spans over 3.4 million acres of the Mojave and Great Basin deserts, featuring the lowest, hottest, and driest landscapes in North America. Visitors traverse vast salt pans at Badwater Basin, climb Panamint Range peaks like Telescope Peak, explore colorful canyons such as Golden Canyon, and marvel at the Mesquite Flat Sand Dunes. The park preserves unique ecosystems—home to the Salt Creek and Saratoga Springs pupfish, desert bighorn sheep, and spectacular spring wildflower blooms—but also bears witness to human stories from Timbisha Shoshone traditions to 19th-century mining. With extremes of climate and topography, Death Valley offers unparalleled solitude, stargazing under some of the darkest skies in the National Park System, and a profound sense of place amid its stark beauty.',
  '760-786-3200',
  3422024,
  -282,
  11049,
  -117.0806485,
  36.5025682608106,
  ST_SetSRID(
    ST_MakePoint(36.5025682608106, -117.0806485),
    4326
  )::geography,
  NULL,
  15,
  30,
  0,
  0,
  'Not Allowed',
  'Not Allowed',
  'Not Allowed',
  'Pets Allowed (Limited)',
  'Permit Required',
  0,
  'https://res.cloudinary.com/def88aad2/image/upload/v1749437040/death-valley-national-park_ggchuw.jpg',
  'National Parks Agency'
);
INSERT INTO park_activities (park_id, activity_id)
     SELECT 6, activity_id FROM activities
     WHERE activity_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 6, activity_id FROM activities
     WHERE activity_name = 'Backpacking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 6, activity_id FROM activities
     WHERE activity_name = 'Mountain Biking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 6, activity_id FROM activities
     WHERE activity_name = 'Road Cycling'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 6, activity_id FROM activities
     WHERE activity_name = 'Guided Tours'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 6, activity_id FROM activities
     WHERE activity_name = 'Birdwatching'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 6, activity_id FROM activities
     WHERE activity_name = 'Sledding'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 6, activity_id FROM activities
     WHERE activity_name = 'Equestiran Riding'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 6, facility_id FROM facilities
     WHERE facility_name = 'Restrooms'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 6, facility_id FROM facilities
     WHERE facility_name = 'Potable Water'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 6, facility_id FROM facilities
     WHERE facility_name = 'Visitor Center'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 6, facility_id FROM facilities
     WHERE facility_name = 'RV Hook-up'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 6, facility_id FROM facilities
     WHERE facility_name = 'Gift Shop'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 6, facility_id FROM facilities
     WHERE facility_name = 'Picnic Area'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 6, facility_id FROM facilities
     WHERE facility_name = 'Parking Lot'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 6, facility_id FROM facilities
     WHERE facility_name = 'Gas Station'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 6, facility_id FROM facilities
     WHERE facility_name = 'Ranger Station'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 6, feature_id FROM features
     WHERE feature_name = 'Canyon'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 6, feature_id FROM features
     WHERE feature_name = 'Sand Dune'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 6, feature_id FROM features
     WHERE feature_name = 'Desert'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 6, feature_id FROM features
     WHERE feature_name = 'Rock Formation'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 6, feature_id FROM features
     WHERE feature_name = 'Cave'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 6, feature_id FROM features
     WHERE feature_name = 'Wildflower Field'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 6, feature_id FROM features
     WHERE feature_name = 'Cultural/Historical Site'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 6, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 6, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Open-Captioned Videos'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 6, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Interpretation Services'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 6, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Audio Described Brochures'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 6, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Tactile Models'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 6, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Audio/Visual Tours'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 6, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 6, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Horseback Riding'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 6, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Mountain Biking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 6, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 6, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Tent'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 6, camp_type_id FROM camp_types
     WHERE camp_type_name = 'RV'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 6, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Cabin'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 6, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Backcountry'
     ON CONFLICT DO NOTHING;


INSERT INTO parks (
  park_id,
  park_name,
  park_address,
  park_state,
  park_region,
  park_level,
  park_type,
  park_description,
  park_phone_number,
  park_size,
  park_min_elevation,
  park_max_elevation,
  park_latitude,
  park_longitude,
  park_location,
  park_time_zone,
  park_entry_fee,
  park_parking_fee,
  park_average_rating,
  park_number_of_reviews,
  park_drone_permit,
  park_fishing_permit,
  park_hunting_permit,
  park_pet_policy,
  park_backcountry_permit,
  park_other_fee,
  park_photo_link,
  park_agency
) VALUES (
  7,
  'Devils Postpile',
  'P.O. Box 3999 Mammoth Lakes, CA 93546',
  'California',
  'High Sierra',
  'Federal',
  'Monument',
  'Devils Postpile National Monument is a compact high-Sierra preserve centered on a rare hexagonal basalt column formation and the rushing San Joaquin River. Visitors arrive via a summer-only shuttle or a strenuous four-mile hike into Reds Meadow Valley, where eight miles of trails lead to the base and summit of the postpile, 101-foot Rainbow Falls, meadows rimmed by mixed-conifer forest, and gateway routes into the Ansel Adams and John Muir Wildernesses. The monument is unserviced—no campground or potable water—so travelers must be self-reliant, but they’re rewarded with ranger-led programs, verdant spring wildflower displays, backcountry skiing and snowshoeing in winter, and abundant wildlife viewing. With its blend of unique geology, glacially carved scenery, and quiet solitude, Devils Postpile offers a quintessential Sierra adventure just south of Mammoth Lakes.',
  '760-934-2289',
  798,
  7200,
  8200,
  -119.087707558552,
  37.6153636459095,
  ST_SetSRID(
    ST_MakePoint(37.6153636459095, -119.087707558552),
    4326
  )::geography,
  NULL,
  15,
  0,
  0,
  0,
  'Not Allowed',
  'No Permit Required',
  'Not Allowed',
  'Pets Allowed (Limited)',
  'Permit Required',
  15,
  'https://res.cloudinary.com/def88aad2/image/upload/v1749437100/devils-postpile-national-monument_b8sytt.jpg',
  'National Parks Agency'
);
INSERT INTO park_activities (park_id, activity_id)
     SELECT 7, activity_id FROM activities
     WHERE activity_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 7, activity_id FROM activities
     WHERE activity_name = 'Backpacking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 7, activity_id FROM activities
     WHERE activity_name = 'Mountain Biking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 7, activity_id FROM activities
     WHERE activity_name = 'Road Cycling'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 7, activity_id FROM activities
     WHERE activity_name = 'Equestiran Riding'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 7, activity_id FROM activities
     WHERE activity_name = 'Fishing'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 7, activity_id FROM activities
     WHERE activity_name = 'Guided Tours'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 7, activity_id FROM activities
     WHERE activity_name = 'Birdwatching'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 7, activity_id FROM activities
     WHERE activity_name = 'Sledding'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 7, activity_id FROM activities
     WHERE activity_name = 'Snow Sports'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 7, facility_id FROM facilities
     WHERE facility_name = 'Restrooms'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 7, facility_id FROM facilities
     WHERE facility_name = 'Potable Water'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 7, facility_id FROM facilities
     WHERE facility_name = 'Visitor Center'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 7, facility_id FROM facilities
     WHERE facility_name = 'Gift Shop'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 7, facility_id FROM facilities
     WHERE facility_name = 'Picnic Area'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 7, facility_id FROM facilities
     WHERE facility_name = 'Parking Lot'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 7, facility_id FROM facilities
     WHERE facility_name = 'Educational Facility'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 7, facility_id FROM facilities
     WHERE facility_name = 'Ranger Station'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 7, feature_id FROM features
     WHERE feature_name = 'Rock Formation'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 7, feature_id FROM features
     WHERE feature_name = 'Waterfall'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 7, feature_id FROM features
     WHERE feature_name = 'River'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 7, feature_id FROM features
     WHERE feature_name = 'Grassland'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 7, feature_id FROM features
     WHERE feature_name = 'Wildflower Field'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 7, feature_id FROM features
     WHERE feature_name = 'Cultural/Historical Site'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 7, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 7, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 7, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Horseback Riding'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 7, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Mountain Biking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 7, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 7, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Tent'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 7, camp_type_id FROM camp_types
     WHERE camp_type_name = 'RV'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 7, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Cabin'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 7, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Backcountry'
     ON CONFLICT DO NOTHING;


INSERT INTO parks (
  park_id,
  park_name,
  park_address,
  park_state,
  park_region,
  park_level,
  park_type,
  park_description,
  park_phone_number,
  park_size,
  park_min_elevation,
  park_max_elevation,
  park_latitude,
  park_longitude,
  park_location,
  park_time_zone,
  park_entry_fee,
  park_parking_fee,
  park_average_rating,
  park_number_of_reviews,
  park_drone_permit,
  park_fishing_permit,
  park_hunting_permit,
  park_pet_policy,
  park_backcountry_permit,
  park_other_fee,
  park_photo_link,
  park_agency
) VALUES (
  8,
  'Eugene O''Neill',
  '1000 Kuss Rd, Danville, CA 94526',
  'California',
  'San Francisco Bay Area',
  'Federal',
  'Historic Site',
  'Eugene O’Neill National Historic Site preserves Tao House—a 14-acre retreat in the hills of Danville where the Nobel Prize–winning playwright lived and wrote from 1937 to 1944. Accessible only by NPS shuttle, the site offers guided tours of O’Neill’s restored study, living quarters, and surrounding gardens, along with interpretive exhibits in the adjacent 19th-century barn. Visitors stroll winding pathways through historic orchards and memorial plantings, take in valley vistas from shaded picnic areas, and explore the cultural landscapes that inspired masterpieces like Long Day’s Journey Into Night. With no overnight facilities, the monument emphasizes self-guided reflection, ranger-led storytelling, and immersive encounters with America’s theatrical legacy.',
  '925-228-8860',
  158,
  700,
  700,
  -122.027137,
  37.82579296,
  ST_SetSRID(
    ST_MakePoint(37.82579296, -122.027137),
    4326
  )::geography,
  NULL,
  0,
  0,
  0,
  0,
  'Not Allowed',
  'No Permit Required',
  'Not Allowed',
  'Pets Allowed (Limited)',
  'Not Allowed',
  0,
  'https://res.cloudinary.com/def88aad2/image/upload/v1749437179/eugene-oneill-national-historic-site_nku59x.jpg',
  'National Parks Agency'
);
INSERT INTO park_activities (park_id, activity_id)
     SELECT 8, activity_id FROM activities
     WHERE activity_name = 'Guided Tours'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 8, activity_id FROM activities
     WHERE activity_name = 'Birdwatching'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 8, facility_id FROM facilities
     WHERE facility_name = 'Restrooms'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 8, facility_id FROM facilities
     WHERE facility_name = 'Potable Water'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 8, facility_id FROM facilities
     WHERE facility_name = 'Visitor Center'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 8, facility_id FROM facilities
     WHERE facility_name = 'Gift Shop'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 8, facility_id FROM facilities
     WHERE facility_name = 'Picnic Area'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 8, facility_id FROM facilities
     WHERE facility_name = 'Parking Lot'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 8, facility_id FROM facilities
     WHERE facility_name = 'Educational Facility'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 8, facility_id FROM facilities
     WHERE facility_name = 'Event Space'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 8, feature_id FROM features
     WHERE feature_name = 'Grassland'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 8, feature_id FROM features
     WHERE feature_name = 'Cultural/Historical Site'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 8, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 8, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Interpretation Services'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 8, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Audio & Large Print Exibits'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 8, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Braille'
     ON CONFLICT DO NOTHING;


INSERT INTO parks (
  park_id,
  park_name,
  park_address,
  park_state,
  park_region,
  park_level,
  park_type,
  park_description,
  park_phone_number,
  park_size,
  park_min_elevation,
  park_max_elevation,
  park_latitude,
  park_longitude,
  park_location,
  park_time_zone,
  park_entry_fee,
  park_parking_fee,
  park_average_rating,
  park_number_of_reviews,
  park_drone_permit,
  park_fishing_permit,
  park_hunting_permit,
  park_pet_policy,
  park_backcountry_permit,
  park_other_fee,
  park_photo_link,
  park_agency
) VALUES (
  9,
  'Fort Point',
  '201 Marine Dr, San Francisco, CA 94129',
  'California',
  'San Francisco Bay Area',
  'Federal',
  'Historic Site',
  'Fort Point National Historic Site stands sentinel beneath the south end of the Golden Gate Bridge, preserving a rare Third-System masonry fortress built between 1853 and 1861. Visitors explore vaulted casemates, gun platforms, and ramparts via self-guided walks or daily ranger-led history talks and candlelight tours, and children can earn badges through the Junior Ranger program. The site is fully ADA-accessible in key areas—including the parade ground, museum exhibits, and shuttle drop-off—and offers vault toilets, a small bookstore, and street-side parking (no potable water or camping). From its brick ramparts you’ll enjoy unobstructed views of the bridge and San Francisco Bay, and along the shoreline, coastal seabirds find roosts amid the rocky promontory. With no overnight facilities, Fort Point is a quintessential day-use destination that combines American coastal defense history, urban wilderness habitat, and spectacular engineering vistas.',
  '415-561-4959',
  29,
  0,
  90,
  -122.477087196439,
  37.8105944550699,
  ST_SetSRID(
    ST_MakePoint(37.8105944550699, -122.477087196439),
    4326
  )::geography,
  NULL,
  0,
  0,
  0,
  0,
  'Not Allowed',
  'No Permit Required',
  'Not Allowed',
  'Service Animals Only',
  'Not Allowed',
  0,
  'https://res.cloudinary.com/def88aad2/image/upload/v1749437229/fort-point-national-historic-site_g2fj9j.jpg',
  'National Parks Agency'
);
INSERT INTO park_activities (park_id, activity_id)
     SELECT 9, activity_id FROM activities
     WHERE activity_name = 'Guided Tours'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 9, activity_id FROM activities
     WHERE activity_name = 'Fishing'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 9, facility_id FROM facilities
     WHERE facility_name = 'Restrooms'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 9, facility_id FROM facilities
     WHERE facility_name = 'Museum'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 9, facility_id FROM facilities
     WHERE facility_name = 'Gift Shop'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 9, facility_id FROM facilities
     WHERE facility_name = 'Parking Lot'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 9, facility_id FROM facilities
     WHERE facility_name = 'Bike Rack'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 9, feature_id FROM features
     WHERE feature_name = 'Cultural/Historical Site'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 9, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 9, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Audio Described Brochures'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 9, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Assistive Listening Devices'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 9, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Open-Captioned Videos'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 9, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Tactile Models'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 9, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Braille'
     ON CONFLICT DO NOTHING;


INSERT INTO parks (
  park_id,
  park_name,
  park_address,
  park_state,
  park_region,
  park_level,
  park_type,
  park_description,
  park_phone_number,
  park_size,
  park_min_elevation,
  park_max_elevation,
  park_latitude,
  park_longitude,
  park_location,
  park_time_zone,
  park_entry_fee,
  park_parking_fee,
  park_average_rating,
  park_number_of_reviews,
  park_drone_permit,
  park_fishing_permit,
  park_hunting_permit,
  park_pet_policy,
  park_backcountry_permit,
  park_other_fee,
  park_photo_link,
  park_agency
) VALUES (
  10,
  'Golden Gate',
  'Golden Gate Bridge Plaza, San Francisco, CA 94129',
  'California',
  'San Francisco Bay Area',
  'Federal',
  'Recreation Area',
  'Golden Gate NRA encompasses 82,116 acres and 59 miles of shoreline across diverse ecosystems—from redwood groves in Marin to headlands, beaches, historic military sites, and marine waters. With extensive trails, four Marin campgrounds, visitor centers, and rich wildlife habitats, GGNRA offers a unique combination of urban access and natural immersion. Activities span hiking, biking, horseback riding, camping, boating, fishing, and birdwatching, all supported by interpretive programs and cultural landmarks like Alcatraz and Fort Funston. Its scope as one of the world’s largest urban parks is matched by its biodiversity, conservation significance, and historical depth.',
  '415-561-4700',
  82116,
  0,
  2300,
  -122.529451622578,
  37.8457420705213,
  ST_SetSRID(
    ST_MakePoint(37.8457420705213, -122.529451622578),
    4326
  )::geography,
  NULL,
  0,
  0,
  0,
  0,
  'Not Allowed',
  'No Permit Required',
  'Not Allowed',
  'Pets Allowed',
  'Not Allowed',
  0,
  'https://res.cloudinary.com/def88aad2/image/upload/v1749437288/golden-gate-national-recreation-area_wlhdb1.jpg',
  'National Parks Agency'
);
INSERT INTO park_activities (park_id, activity_id)
     SELECT 10, activity_id FROM activities
     WHERE activity_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 10, activity_id FROM activities
     WHERE activity_name = 'Backpacking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 10, activity_id FROM activities
     WHERE activity_name = 'Mountain Biking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 10, activity_id FROM activities
     WHERE activity_name = 'Road Cycling'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 10, activity_id FROM activities
     WHERE activity_name = 'Equestiran Riding'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 10, activity_id FROM activities
     WHERE activity_name = 'Swimming'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 10, activity_id FROM activities
     WHERE activity_name = 'Non-Motorized Boating'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 10, activity_id FROM activities
     WHERE activity_name = 'Motorized Boating'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 10, activity_id FROM activities
     WHERE activity_name = 'Birdwatching'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 10, activity_id FROM activities
     WHERE activity_name = 'Guided Tours'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 10, activity_id FROM activities
     WHERE activity_name = 'Fishing'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 10, facility_id FROM facilities
     WHERE facility_name = 'Restrooms'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 10, facility_id FROM facilities
     WHERE facility_name = 'Showers'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 10, facility_id FROM facilities
     WHERE facility_name = 'Potable Water'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 10, facility_id FROM facilities
     WHERE facility_name = 'Visitor Center'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 10, facility_id FROM facilities
     WHERE facility_name = 'Museum'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 10, facility_id FROM facilities
     WHERE facility_name = 'Gift Shop'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 10, facility_id FROM facilities
     WHERE facility_name = 'Parking Lot'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 10, facility_id FROM facilities
     WHERE facility_name = 'Bike Rack'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 10, facility_id FROM facilities
     WHERE facility_name = 'RV Hook-up'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 10, facility_id FROM facilities
     WHERE facility_name = 'Picnic Area'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 10, facility_id FROM facilities
     WHERE facility_name = 'Boat Launch/Dock'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 10, facility_id FROM facilities
     WHERE facility_name = 'Fishing Pier'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 10, facility_id FROM facilities
     WHERE facility_name = 'Event Space'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 10, facility_id FROM facilities
     WHERE facility_name = 'Wi-Fi Access Point'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 10, facility_id FROM facilities
     WHERE facility_name = 'Educational Facility'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 10, facility_id FROM facilities
     WHERE facility_name = 'Ranger Station'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 10, feature_id FROM features
     WHERE feature_name = 'Old-Growth Forest'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 10, feature_id FROM features
     WHERE feature_name = 'Canyon'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 10, feature_id FROM features
     WHERE feature_name = 'River'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 10, feature_id FROM features
     WHERE feature_name = 'Beach'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 10, feature_id FROM features
     WHERE feature_name = 'Sand Dune'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 10, feature_id FROM features
     WHERE feature_name = 'Wetland/Marsh'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 10, feature_id FROM features
     WHERE feature_name = 'Grassland'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 10, feature_id FROM features
     WHERE feature_name = 'Wildflower Field'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 10, feature_id FROM features
     WHERE feature_name = 'Cultural/Historical Site'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 10, feature_id FROM features
     WHERE feature_name = 'Island'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 10, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 10, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Beach Wheelchairs'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 10, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Audio Described Brochures'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 10, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Assistive Listening Devices'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 10, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Open-Captioned Videos'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 10, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Audio & Large Print Exibits'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 10, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Tactile Models'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 10, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Braille'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 10, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 10, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Horseback Riding'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 10, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Mountain Biking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 10, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 10, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Tent'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 10, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Backcountry'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 10, camp_type_id FROM camp_types
     WHERE camp_type_name = 'RV'
     ON CONFLICT DO NOTHING;


INSERT INTO parks (
  park_id,
  park_name,
  park_address,
  park_state,
  park_region,
  park_level,
  park_type,
  park_description,
  park_phone_number,
  park_size,
  park_min_elevation,
  park_max_elevation,
  park_latitude,
  park_longitude,
  park_location,
  park_time_zone,
  park_entry_fee,
  park_parking_fee,
  park_average_rating,
  park_number_of_reviews,
  park_drone_permit,
  park_fishing_permit,
  park_hunting_permit,
  park_pet_policy,
  park_backcountry_permit,
  park_other_fee,
  park_photo_link,
  park_agency
) VALUES (
  11,
  'John Muir',
  '4202 Alhambra Ave, Martinez, CA 94553',
  'California',
  'San Francisco Bay Area',
  'Federal',
  'Historic Site',
  'John Muir National Historic Site preserves John Muir’s 1882 Italianate Victorian home, the adjoining 1849 Martinez Adobe, family orchards, and the 325-acre Mount Wanda oak woodland where he walked with his daughters. Located in Martinez, California, this site honors the life and legacy of America’s foremost conservationist, where he lived from 1890 until his death in 1914. Visitors can tour the house—including Muir’s “scribble den,” where he composed influential essays and books—using park film, guided tours, or self‑guided materials. The site includes interpretive trails through orchards, picnic areas, and a nature trail on Mount Wanda featuring vibrant wildflowers and birdlife. A shuttle provides seasonal access to the family gravesite. With no camping or overnight facilities, the park offers an immersive, educational experience in both cultural heritage and natural landscape—emphasizing reflection on environmental stewardship and Muir’s enduring impact.',
  '925-228-8860',
  345,
  200,
  200,
  -122.131018193869,
  37.9919765445787,
  ST_SetSRID(
    ST_MakePoint(37.9919765445787, -122.131018193869),
    4326
  )::geography,
  NULL,
  0,
  0,
  0,
  0,
  'Not Allowed',
  'Not Allowed',
  'Not Allowed',
  'Pets Allowed on Leash',
  'Not Allowed',
  0,
  'https://res.cloudinary.com/def88aad2/image/upload/v1749437353/john-muir-national-historic-site_vqlafz.jpg',
  'National Parks Agency'
);
INSERT INTO park_activities (park_id, activity_id)
     SELECT 11, activity_id FROM activities
     WHERE activity_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 11, activity_id FROM activities
     WHERE activity_name = 'Mountain Biking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 11, activity_id FROM activities
     WHERE activity_name = 'Equestiran Riding'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 11, activity_id FROM activities
     WHERE activity_name = 'Guided Tours'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 11, activity_id FROM activities
     WHERE activity_name = 'Birdwatching'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 11, facility_id FROM facilities
     WHERE facility_name = 'Restrooms'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 11, facility_id FROM facilities
     WHERE facility_name = 'Visitor Center'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 11, facility_id FROM facilities
     WHERE facility_name = 'Museum'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 11, facility_id FROM facilities
     WHERE facility_name = 'Gift Shop'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 11, facility_id FROM facilities
     WHERE facility_name = 'Picnic Area'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 11, facility_id FROM facilities
     WHERE facility_name = 'Parking Lot'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 11, facility_id FROM facilities
     WHERE facility_name = 'Educational Facility'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 11, facility_id FROM facilities
     WHERE facility_name = 'Bike Rack'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 11, feature_id FROM features
     WHERE feature_name = 'Grassland'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 11, feature_id FROM features
     WHERE feature_name = 'Wildflower Field'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 11, feature_id FROM features
     WHERE feature_name = 'Cultural/Historical Site'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 11, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 11, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Audio Described Brochures'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 11, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Interpretation Services'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 11, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Assistive Listening Devices'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 11, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Open-Captioned Videos'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 11, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Audio Described Brochures'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 11, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Tactile Models'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 11, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Braille'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 11, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 11, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Horseback Riding'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 11, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Mountain Biking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 11, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;


INSERT INTO parks (
  park_id,
  park_name,
  park_address,
  park_state,
  park_region,
  park_level,
  park_type,
  park_description,
  park_phone_number,
  park_size,
  park_min_elevation,
  park_max_elevation,
  park_latitude,
  park_longitude,
  park_location,
  park_time_zone,
  park_entry_fee,
  park_parking_fee,
  park_average_rating,
  park_number_of_reviews,
  park_drone_permit,
  park_fishing_permit,
  park_hunting_permit,
  park_pet_policy,
  park_backcountry_permit,
  park_other_fee,
  park_photo_link,
  park_agency
) VALUES (
  12,
  'Joshua Tree',
  '74485 National Park Drive Twentynine Palms, CA 02277-3597',
  'California',
  'Desert',
  'Federal',
  'Park',
  'Joshua Tree National Park, established as a national monument in 1936 and redesignated a national park in 1994, protects nearly 800,000 acres where the higher-elevation Mojave Desert meets the lower Colorado Desert in southeastern California. Renowned for its twisted Joshua trees (Yucca brevifolia), the park’s landscape ranges from rugged granite monoliths and vast boulder fields—popular with rock climbers—to colorful desert washes and expansive valleys carpeted with spring wildflowers. Visitors can hike more than 190 miles of trails, camp under internationally recognized dark skies at nine developed campgrounds, and explore cultural sites once occupied by Cahuilla and Serrano peoples. Wildlife includes bighorn sheep, coyotes, desert tortoises, and an array of reptiles and birds. With minimal services in its backcountry and a focus on self-sufficiency, Joshua Tree offers solitude, iconic scenery, and a profound sense of desert wilderness just a short drive from the Palm Springs and Coachella Valley communities.',
  '760-367-5500',
  795156,
  536,
  5814,
  -115.8992872,
  33.861579891953,
  ST_SetSRID(
    ST_MakePoint(33.861579891953, -115.8992872),
    4326
  )::geography,
  NULL,
  15,
  30,
  0,
  0,
  'Not Allowed',
  'Not Allowed',
  'Not Allowed',
  'Pets Allowed on Leash',
  'Permit Required',
  0,
  'https://res.cloudinary.com/def88aad2/image/upload/v1749437393/joshua-tree-national-park_spime8.jpg',
  'National Parks Agency'
);
INSERT INTO park_activities (park_id, activity_id)
     SELECT 12, activity_id FROM activities
     WHERE activity_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 12, activity_id FROM activities
     WHERE activity_name = 'Backpacking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 12, activity_id FROM activities
     WHERE activity_name = 'Road Cycling'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 12, activity_id FROM activities
     WHERE activity_name = 'Equestiran Riding'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 12, activity_id FROM activities
     WHERE activity_name = 'Guided Tours'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 12, activity_id FROM activities
     WHERE activity_name = 'Rock Climbing'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 12, activity_id FROM activities
     WHERE activity_name = 'Sledding'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 12, facility_id FROM facilities
     WHERE facility_name = 'Restrooms'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 12, facility_id FROM facilities
     WHERE facility_name = 'Visitor Center'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 12, facility_id FROM facilities
     WHERE facility_name = 'Museum'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 12, facility_id FROM facilities
     WHERE facility_name = 'Gift Shop'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 12, facility_id FROM facilities
     WHERE facility_name = 'Picnic Area'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 12, facility_id FROM facilities
     WHERE facility_name = 'Parking Lot'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 12, facility_id FROM facilities
     WHERE facility_name = 'Bike Rack'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 12, facility_id FROM facilities
     WHERE facility_name = 'Ranger Station'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 12, feature_id FROM features
     WHERE feature_name = 'Desert'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 12, feature_id FROM features
     WHERE feature_name = 'Rock Formation'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 12, feature_id FROM features
     WHERE feature_name = 'Volcanic Feature'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 12, feature_id FROM features
     WHERE feature_name = 'Cultural/Historical Site'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 12, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 12, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Audio Described Brochures'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 12, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Interpretation Services'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 12, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Assistive Listening Devices'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 12, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Open-Captioned Videos'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 12, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Audio Described Brochures'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 12, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Tactile Models'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 12, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Braille'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 12, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 12, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Horseback Riding'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 12, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 12, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Tent'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 12, camp_type_id FROM camp_types
     WHERE camp_type_name = 'RV'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 12, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Backcountry'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 12, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Cabin'
     ON CONFLICT DO NOTHING;


INSERT INTO parks (
  park_id,
  park_name,
  park_address,
  park_state,
  park_region,
  park_level,
  park_type,
  park_description,
  park_phone_number,
  park_size,
  park_min_elevation,
  park_max_elevation,
  park_latitude,
  park_longitude,
  park_location,
  park_time_zone,
  park_entry_fee,
  park_parking_fee,
  park_average_rating,
  park_number_of_reviews,
  park_drone_permit,
  park_fishing_permit,
  park_hunting_permit,
  park_pet_policy,
  park_backcountry_permit,
  park_other_fee,
  park_photo_link,
  park_agency
) VALUES (
  13,
  'Lassen Volcanic',
  'PO Box 100 Mineral, CA 96063',
  'California',
  'Shasta Cascade',
  'Federal',
  'Park',
  'Lassen Volcanic National Park protects one of the most diverse volcanic landscapes on Earth, spanning high alpine forests, shimmering lakes, verdant meadows, and hydrothermal areas where steam vents, boiling springs, mud pots, and fumaroles sculpt the ground. Dominated by Mount Lassen—the largest plug dome volcano in the world—and graced by nearby peaks like Brokeoff Mountain and Cinder Cone, the park offers over 150 miles of trails that lead to crater rims, panoramic overlooks, and the surreal “Devastated Area” carved by the 1915 eruption. Visitors can paddle Manzanita Lake beneath a perfect volcanic reflection, soak in the historic Drakesbad Guest Ranch hot springs, or snowshoe across silent winter snowscapes. With four developed campgrounds, ranger-led volcano talks, and a year-round visitor center at Kohm Yah-mah-nee, Lassen combines raw geothermal energy, rich wildlife habitats, and cultural history to deliver a uniquely dynamic wilderness experience.',
  '530-595-4480',
  106452,
  5650,
  10457,
  -121.423988068271,
  40.4889300475985,
  ST_SetSRID(
    ST_MakePoint(40.4889300475985, -121.423988068271),
    4326
  )::geography,
  NULL,
  15,
  30,
  0,
  0,
  'Not Allowed',
  'No Permit Required',
  'Not Allowed',
  'Pets Allowed (Limited)',
  'Permit Required',
  0,
  'https://res.cloudinary.com/def88aad2/image/upload/v1749437447/lassen-volcanic-national-park_jgoygk.jpg',
  'National Parks Agency'
);
INSERT INTO park_activities (park_id, activity_id)
     SELECT 13, activity_id FROM activities
     WHERE activity_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 13, activity_id FROM activities
     WHERE activity_name = 'Backpacking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 13, activity_id FROM activities
     WHERE activity_name = 'Mountain Biking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 13, activity_id FROM activities
     WHERE activity_name = 'Road Cycling'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 13, activity_id FROM activities
     WHERE activity_name = 'Equestiran Riding'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 13, activity_id FROM activities
     WHERE activity_name = 'Birdwatching'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 13, activity_id FROM activities
     WHERE activity_name = 'Guided Tours'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 13, activity_id FROM activities
     WHERE activity_name = 'Rock Climbing'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 13, activity_id FROM activities
     WHERE activity_name = 'Sledding'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 13, activity_id FROM activities
     WHERE activity_name = 'Swimming'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 13, activity_id FROM activities
     WHERE activity_name = 'Non-Motorized Boating'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 13, activity_id FROM activities
     WHERE activity_name = 'Fishing'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 13, activity_id FROM activities
     WHERE activity_name = 'Snow Sports'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 13, activity_id FROM activities
     WHERE activity_name = 'Geocaching'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 13, facility_id FROM facilities
     WHERE facility_name = 'Restrooms'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 13, facility_id FROM facilities
     WHERE facility_name = 'Showers'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 13, facility_id FROM facilities
     WHERE facility_name = 'Potable Water'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 13, facility_id FROM facilities
     WHERE facility_name = 'Visitor Center'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 13, facility_id FROM facilities
     WHERE facility_name = 'Museum'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 13, facility_id FROM facilities
     WHERE facility_name = 'Gift Shop'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 13, facility_id FROM facilities
     WHERE facility_name = 'RV Hook-up'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 13, facility_id FROM facilities
     WHERE facility_name = 'Boat Launch/Dock'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 13, facility_id FROM facilities
     WHERE facility_name = 'Event Space'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 13, facility_id FROM facilities
     WHERE facility_name = 'Educational Facility'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 13, facility_id FROM facilities
     WHERE facility_name = 'Picnic Area'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 13, facility_id FROM facilities
     WHERE facility_name = 'Parking Lot'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 13, facility_id FROM facilities
     WHERE facility_name = 'Bike Rack'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 13, facility_id FROM facilities
     WHERE facility_name = 'Ranger Station'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 13, feature_id FROM features
     WHERE feature_name = 'Lake/Reservoir'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 13, feature_id FROM features
     WHERE feature_name = 'River'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 13, feature_id FROM features
     WHERE feature_name = 'Grassland'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 13, feature_id FROM features
     WHERE feature_name = 'Waterfall'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 13, feature_id FROM features
     WHERE feature_name = 'Hot Spring'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 13, feature_id FROM features
     WHERE feature_name = 'Volcanic Feature'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 13, feature_id FROM features
     WHERE feature_name = 'Wildflower Field'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 13, feature_id FROM features
     WHERE feature_name = 'Cultural/Historical Site'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 13, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 13, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Tactile Models'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 13, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Audio Described Brochures'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 13, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Open-Captioned Videos'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 13, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Interpretation Services'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 13, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 13, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Horseback Riding'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 13, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Mountain Biking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 13, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 13, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Tent'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 13, camp_type_id FROM camp_types
     WHERE camp_type_name = 'RV'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 13, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Backcountry'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 13, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Cabin'
     ON CONFLICT DO NOTHING;


INSERT INTO parks (
  park_id,
  park_name,
  park_address,
  park_state,
  park_region,
  park_level,
  park_type,
  park_description,
  park_phone_number,
  park_size,
  park_min_elevation,
  park_max_elevation,
  park_latitude,
  park_longitude,
  park_location,
  park_time_zone,
  park_entry_fee,
  park_parking_fee,
  park_average_rating,
  park_number_of_reviews,
  park_drone_permit,
  park_fishing_permit,
  park_hunting_permit,
  park_pet_policy,
  park_backcountry_permit,
  park_other_fee,
  park_photo_link,
  park_agency
) VALUES (
  14,
  'Lava Beds',
  '1 Indian Well, Tulelake, CA 96134',
  'California',
  'Shasta Cascade',
  'Federal',
  'Monument',
  'Lava Beds National Monument, established in 1925 on the northeastern flank of Medicine Lake Volcano, preserves North America’s densest concentration of lava-tube caves and a stark high-desert landscape steeped in Modoc War history. Visitors begin at the accessible Visitor Center—home to touch exhibits, a bookstore, and park films—then explore over a dozen marked surface trails that circle collapsed tube trenches, spatter cones, and the Petroglyph Point pictograph panels. The Indian Well Campground offers basic tent and RV sites just a half-mile from the cave loop. Adventurers can join ranger-led tours into illuminated caves like Mushpot, self-guide across rugged lava flows, backcountry camp under the stars, or birdwatch desert scrub habitats. With no cabins or showers, no fishing or hunting, and a strict drone ban, Lava Beds delivers an immersive, self-sufficient experience in volcanic geology, Native American heritage, and subterranean wonder.',
  '530-667-8113',
  46692,
  4000,
  5570,
  -121.506715248723,
  41.7716837182988,
  ST_SetSRID(
    ST_MakePoint(41.7716837182988, -121.506715248723),
    4326
  )::geography,
  NULL,
  15,
  25,
  0,
  0,
  'Not Allowed',
  'Not Allowed',
  'Not Allowed',
  'Pets Allowed (Limited)',
  'No Permit Required',
  0,
  'https://res.cloudinary.com/def88aad2/image/upload/v1749437497/lava-beds-national-monument_nftnob.jpg',
  'National Parks Agency'
);
INSERT INTO park_activities (park_id, activity_id)
     SELECT 14, activity_id FROM activities
     WHERE activity_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 14, activity_id FROM activities
     WHERE activity_name = 'Backpacking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 14, activity_id FROM activities
     WHERE activity_name = 'Road Cycling'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 14, activity_id FROM activities
     WHERE activity_name = 'Equestiran Riding'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 14, activity_id FROM activities
     WHERE activity_name = 'Guided Tours'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 14, activity_id FROM activities
     WHERE activity_name = 'Birdwatching'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 14, facility_id FROM facilities
     WHERE facility_name = 'Restrooms'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 14, facility_id FROM facilities
     WHERE facility_name = 'Potable Water'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 14, facility_id FROM facilities
     WHERE facility_name = 'Visitor Center'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 14, facility_id FROM facilities
     WHERE facility_name = 'Museum'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 14, facility_id FROM facilities
     WHERE facility_name = 'Gift Shop'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 14, facility_id FROM facilities
     WHERE facility_name = 'RV Hook-up'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 14, facility_id FROM facilities
     WHERE facility_name = 'Event Space'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 14, facility_id FROM facilities
     WHERE facility_name = 'Picnic Area'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 14, facility_id FROM facilities
     WHERE facility_name = 'Parking Lot'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 14, facility_id FROM facilities
     WHERE facility_name = 'Bike Rack'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 14, facility_id FROM facilities
     WHERE facility_name = 'Ranger Station'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 14, facility_id FROM facilities
     WHERE facility_name = 'Wi-Fi Access Point'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 14, feature_id FROM features
     WHERE feature_name = 'Desert'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 14, feature_id FROM features
     WHERE feature_name = 'Rock Formation'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 14, feature_id FROM features
     WHERE feature_name = 'Volcanic Feature'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 14, feature_id FROM features
     WHERE feature_name = 'Cave'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 14, feature_id FROM features
     WHERE feature_name = 'Cultural/Historical Site'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 14, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 14, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Tactile Models'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 14, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Open-Captioned Videos'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 14, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 14, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Horseback Riding'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 14, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Mountain Biking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 14, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 14, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Tent'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 14, camp_type_id FROM camp_types
     WHERE camp_type_name = 'RV'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 14, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Backcountry'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 14, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Cabin'
     ON CONFLICT DO NOTHING;


INSERT INTO parks (
  park_id,
  park_name,
  park_address,
  park_state,
  park_region,
  park_level,
  park_type,
  park_description,
  park_phone_number,
  park_size,
  park_min_elevation,
  park_max_elevation,
  park_latitude,
  park_longitude,
  park_location,
  park_time_zone,
  park_entry_fee,
  park_parking_fee,
  park_average_rating,
  park_number_of_reviews,
  park_drone_permit,
  park_fishing_permit,
  park_hunting_permit,
  park_pet_policy,
  park_backcountry_permit,
  park_other_fee,
  park_photo_link,
  park_agency
) VALUES (
  15,
  'Manzanar',
  'Manzanar Reward Rd, California',
  'California',
  'High Sierra',
  'Federal',
  'Historic Site',
  'Manzanar National Historic Site, located in California’s Owens Valley between the Sierra Nevada and the Inyo Mountains, preserves one of ten sites where Japanese Americans were unjustly incarcerated during World War II. Today, visitors can walk through reconstructed barracks and mess halls in Block 14, view interpretive exhibits at the award-winning Visitor Center, and follow the 3.2-mile driving tour past original and reconstructed camp features, including the poignant white obelisk at the cemetery. With no camping or recreational facilities, Manzanar instead offers a space for reflection, education, and remembrance—honoring the resilience of over 10,000 Japanese Americans who endured imprisonment in this remote, wind-swept desert landscape.',
  '760-878-2194',
  814,
  1200,
  1200,
  -118.154513553792,
  36.7247819823962,
  ST_SetSRID(
    ST_MakePoint(36.7247819823962, -118.154513553792),
    4326
  )::geography,
  NULL,
  0,
  0,
  0,
  0,
  'Not Allowed',
  'Not Allowed',
  'Not Allowed',
  'Pets Allowed on Leash',
  'Not Allowed',
  0,
  'https://res.cloudinary.com/def88aad2/image/upload/v1749437541/manzanar-national-historic-site_pwngdf.jpg',
  'National Parks Agency'
);
INSERT INTO park_activities (park_id, activity_id)
     SELECT 15, activity_id FROM activities
     WHERE activity_name = 'Guided Tours'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 15, facility_id FROM facilities
     WHERE facility_name = 'Restrooms'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 15, facility_id FROM facilities
     WHERE facility_name = 'Potable Water'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 15, facility_id FROM facilities
     WHERE facility_name = 'Visitor Center'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 15, facility_id FROM facilities
     WHERE facility_name = 'Museum'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 15, facility_id FROM facilities
     WHERE facility_name = 'Gift Shop'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 15, facility_id FROM facilities
     WHERE facility_name = 'Picnic Area'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 15, facility_id FROM facilities
     WHERE facility_name = 'Parking Lot'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 15, facility_id FROM facilities
     WHERE facility_name = 'Educational Facility'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 15, feature_id FROM features
     WHERE feature_name = 'Desert'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 15, feature_id FROM features
     WHERE feature_name = 'Wildflower Field'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 15, feature_id FROM features
     WHERE feature_name = 'Grassland'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 15, feature_id FROM features
     WHERE feature_name = 'Cultural/Historical Site'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 15, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 15, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Tactile Models'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 15, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Open-Captioned Videos'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 15, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Audio Described Brochures'
     ON CONFLICT DO NOTHING;


INSERT INTO parks (
  park_id,
  park_name,
  park_address,
  park_state,
  park_region,
  park_level,
  park_type,
  park_description,
  park_phone_number,
  park_size,
  park_min_elevation,
  park_max_elevation,
  park_latitude,
  park_longitude,
  park_location,
  park_time_zone,
  park_entry_fee,
  park_parking_fee,
  park_average_rating,
  park_number_of_reviews,
  park_drone_permit,
  park_fishing_permit,
  park_hunting_permit,
  park_pet_policy,
  park_backcountry_permit,
  park_other_fee,
  park_photo_link,
  park_agency
) VALUES (
  16,
  'Mojave',
  '90942 Kelso Cima Rd, Essex, CA 92332',
  'California',
  'Desert',
  'Federal',
  'Preserve',
  'Mojave National Preserve sprawls across 1.6 million acres of California desert between Los Angeles and Las Vegas, encompassing a dramatic range of ecosystems—from sweeping sand dunes and Joshua tree forests to rugged mountain canyons and dormant volcanic fields. At its heart is the historic Kelso Depot, a restored 1920s train station turned visitor center that introduces travelers to the area’s geology, wildlife, and human history. Visitors can hike the lava tube trail, climb the shifting Kelso Dunes, or camp beneath dark skies at Mid Hills or Hole-in-the-Wall. With opportunities for backcountry exploration, hunting, and wildlife watching, the preserve offers an untamed and less-crowded desert experience where solitude, silence, and stark beauty define the landscape.',
  '760-252-6100',
  1542776,
  880,
  2417,
  -115.52036960145,
  35.1233487158356,
  ST_SetSRID(
    ST_MakePoint(35.1233487158356, -115.52036960145),
    4326
  )::geography,
  NULL,
  0,
  0,
  0,
  0,
  'Not Allowed',
  'Not Allowed',
  'Not Allowed',
  'Pets Allowed on Leash',
  'No Permit Required',
  0,
  'https://res.cloudinary.com/def88aad2/image/upload/v1749437581/mojave-national-preserve_qewkdk.jpg',
  'National Parks Agency'
);
INSERT INTO park_activities (park_id, activity_id)
     SELECT 16, activity_id FROM activities
     WHERE activity_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 16, activity_id FROM activities
     WHERE activity_name = 'Backpacking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 16, activity_id FROM activities
     WHERE activity_name = 'Mountain Biking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 16, activity_id FROM activities
     WHERE activity_name = 'Road Cycling'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 16, activity_id FROM activities
     WHERE activity_name = 'Equestiran Riding'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 16, activity_id FROM activities
     WHERE activity_name = 'Sledding'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 16, activity_id FROM activities
     WHERE activity_name = 'Birdwatching'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 16, activity_id FROM activities
     WHERE activity_name = 'Rock Climbing'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 16, activity_id FROM activities
     WHERE activity_name = 'Geocaching'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 16, facility_id FROM facilities
     WHERE facility_name = 'Restrooms'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 16, facility_id FROM facilities
     WHERE facility_name = 'Potable Water'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 16, facility_id FROM facilities
     WHERE facility_name = 'Visitor Center'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 16, facility_id FROM facilities
     WHERE facility_name = 'Gift Shop'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 16, facility_id FROM facilities
     WHERE facility_name = 'Picnic Area'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 16, facility_id FROM facilities
     WHERE facility_name = 'Parking Lot'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 16, facility_id FROM facilities
     WHERE facility_name = 'Educational Facility'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 16, facility_id FROM facilities
     WHERE facility_name = 'Ranger Station'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 16, facility_id FROM facilities
     WHERE facility_name = 'Museum'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 16, facility_id FROM facilities
     WHERE facility_name = 'Wi-Fi Access Point'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 16, feature_id FROM features
     WHERE feature_name = 'Desert'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 16, feature_id FROM features
     WHERE feature_name = 'Wildflower Field'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 16, feature_id FROM features
     WHERE feature_name = 'Sand Dune'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 16, feature_id FROM features
     WHERE feature_name = 'Canyon'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 16, feature_id FROM features
     WHERE feature_name = 'Grassland'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 16, feature_id FROM features
     WHERE feature_name = 'Rock Formation'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 16, feature_id FROM features
     WHERE feature_name = 'Volcanic Feature'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 16, feature_id FROM features
     WHERE feature_name = 'Cultural/Historical Site'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 16, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 16, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Assistive Listening Devices'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 16, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Open-Captioned Videos'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 16, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Audio Described Brochures'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 16, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Braille'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 16, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 16, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Mountain Biking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 16, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Horseback Riding'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 16, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Tent'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 16, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Backcountry'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 16, camp_type_id FROM camp_types
     WHERE camp_type_name = 'RV'
     ON CONFLICT DO NOTHING;


INSERT INTO parks (
  park_id,
  park_name,
  park_address,
  park_state,
  park_region,
  park_level,
  park_type,
  park_description,
  park_phone_number,
  park_size,
  park_min_elevation,
  park_max_elevation,
  park_latitude,
  park_longitude,
  park_location,
  park_time_zone,
  park_entry_fee,
  park_parking_fee,
  park_average_rating,
  park_number_of_reviews,
  park_drone_permit,
  park_fishing_permit,
  park_hunting_permit,
  park_pet_policy,
  park_backcountry_permit,
  park_other_fee,
  park_photo_link,
  park_agency
) VALUES (
  17,
  'Muir Woods',
  'Muir Woods National Monument 1 Muir Woods Rd Mill Valley, CA 94941',
  'California',
  'San Francisco Bay Area',
  'Federal',
  'Monument',
  'Muir Woods National Monument, located just north of San Francisco in Marin County, protects a rare stand of old-growth coastal redwoods—some reaching heights over 250 feet. Visitors walk along peaceful boardwalks and soft forest trails that follow Redwood Creek through a fog-shrouded canyon. The monument''s accessible main trail allows everyone to experience the serenity of these ancient giants, while more adventurous hikers can climb into surrounding hills connecting to Mount Tamalpais State Park. Though no camping or biking is allowed, Muir Woods offers ranger programs, wildlife viewing, and a deep sense of reverence in a cathedral of trees. With limited parking and a required reservation system, the monument encourages low-impact visits to preserve its quiet, timeless forest.',
  '760-252-6100',
  554,
  130,
  1250,
  -122.580987771426,
  37.8964394868758,
  ST_SetSRID(
    ST_MakePoint(37.8964394868758, -122.580987771426),
    4326
  )::geography,
  NULL,
  15,
  0,
  0,
  0,
  'Not Allowed',
  'Not Allowed',
  'Not Allowed',
  'Service Animals Only',
  'Not Allowed',
  0,
  'https://res.cloudinary.com/def88aad2/image/upload/v1749437693/muir-woods-national-monument_q9pmxm.jpg',
  'National Parks Agency'
);
INSERT INTO park_activities (park_id, activity_id)
     SELECT 17, activity_id FROM activities
     WHERE activity_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 17, activity_id FROM activities
     WHERE activity_name = 'Guided Tours'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 17, activity_id FROM activities
     WHERE activity_name = 'Birdwatching'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 17, facility_id FROM facilities
     WHERE facility_name = 'Restrooms'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 17, facility_id FROM facilities
     WHERE facility_name = 'Potable Water'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 17, facility_id FROM facilities
     WHERE facility_name = 'Visitor Center'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 17, facility_id FROM facilities
     WHERE facility_name = 'Museum'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 17, facility_id FROM facilities
     WHERE facility_name = 'Gift Shop'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 17, facility_id FROM facilities
     WHERE facility_name = 'Parking Lot'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 17, facility_id FROM facilities
     WHERE facility_name = 'Event Space'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 17, facility_id FROM facilities
     WHERE facility_name = 'Bike Rack'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 17, facility_id FROM facilities
     WHERE facility_name = 'Bike Repair Station'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 17, facility_id FROM facilities
     WHERE facility_name = 'EV Charging Station'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 17, feature_id FROM features
     WHERE feature_name = 'Old-Growth Forest'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 17, feature_id FROM features
     WHERE feature_name = 'Canyon'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 17, feature_id FROM features
     WHERE feature_name = 'Cultural/Historical Site'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 17, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Assistive Listening Devices'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 17, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Interpretation Services'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 17, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 17, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Braille'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 17, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Audio & Large Print Exibits'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 17, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Audio Described Brochures'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 17, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Audio Wayside Signs'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 17, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Tactile Models'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 17, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 17, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 17, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Tent'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 17, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Backcountry'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 17, camp_type_id FROM camp_types
     WHERE camp_type_name = 'RV'
     ON CONFLICT DO NOTHING;


INSERT INTO parks (
  park_id,
  park_name,
  park_address,
  park_state,
  park_region,
  park_level,
  park_type,
  park_description,
  park_phone_number,
  park_size,
  park_min_elevation,
  park_max_elevation,
  park_latitude,
  park_longitude,
  park_location,
  park_time_zone,
  park_entry_fee,
  park_parking_fee,
  park_average_rating,
  park_number_of_reviews,
  park_drone_permit,
  park_fishing_permit,
  park_hunting_permit,
  park_pet_policy,
  park_backcountry_permit,
  park_other_fee,
  park_photo_link,
  park_agency
) VALUES (
  18,
  'Pinnacles',
  '500 East Entrance Road, Paicines, CA 95043',
  'California',
  'Central Coast',
  'Federal',
  'Park',
  'Pinnacles National Park, located in central California, is a rugged landscape of jagged volcanic spires, massive rock walls, and shadowy talus caves. Born of ancient lava flows and tectonic movement, the park is a haven for hikers, climbers, and wildlife enthusiasts. Visitors can explore the dramatic High Peaks, squeeze through Bear Gulch and Balconies caves (seasonally open), or watch for soaring California condors overhead. While the park has two entrances—east and west—there is no road connecting them. Camping is available only on the east side, with RV and tent sites nestled in oak woodlands. From sunrise hikes to starlit skies, Pinnacles offers a dramatic, untamed corner of California wilderness.',
  '831-389-4486',
  26606,
  900,
  3300,
  -121.18228325188,
  36.4859715603074,
  ST_SetSRID(
    ST_MakePoint(36.4859715603074, -121.18228325188),
    4326
  )::geography,
  NULL,
  15,
  30,
  0,
  0,
  'Not Allowed',
  'Not Allowed',
  'Not Allowed',
  'Pets Allowed (Limited)',
  'Not Allowed',
  0,
  'https://res.cloudinary.com/def88aad2/image/upload/v1749437730/pinnacles-national-park_b8z17u.jpg',
  'National Parks Agency'
);
INSERT INTO park_activities (park_id, activity_id)
     SELECT 18, activity_id FROM activities
     WHERE activity_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 18, activity_id FROM activities
     WHERE activity_name = 'Backpacking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 18, activity_id FROM activities
     WHERE activity_name = 'Rock Climbing'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 18, activity_id FROM activities
     WHERE activity_name = 'Geocaching'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 18, activity_id FROM activities
     WHERE activity_name = 'Birdwatching'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 18, activity_id FROM activities
     WHERE activity_name = 'Guided Tours'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 18, activity_id FROM activities
     WHERE activity_name = 'Equestiran Riding'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 18, facility_id FROM facilities
     WHERE facility_name = 'Restrooms'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 18, facility_id FROM facilities
     WHERE facility_name = 'Potable Water'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 18, facility_id FROM facilities
     WHERE facility_name = 'Showers'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 18, facility_id FROM facilities
     WHERE facility_name = 'Visitor Center'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 18, facility_id FROM facilities
     WHERE facility_name = 'Museum'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 18, facility_id FROM facilities
     WHERE facility_name = 'Gift Shop'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 18, facility_id FROM facilities
     WHERE facility_name = 'Parking Lot'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 18, facility_id FROM facilities
     WHERE facility_name = 'Event Space'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 18, facility_id FROM facilities
     WHERE facility_name = 'Bike Rack'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 18, facility_id FROM facilities
     WHERE facility_name = 'RV Hook-up'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 18, facility_id FROM facilities
     WHERE facility_name = 'Picnic Area'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 18, facility_id FROM facilities
     WHERE facility_name = 'Ranger Station'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 18, feature_id FROM features
     WHERE feature_name = 'Canyon'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 18, feature_id FROM features
     WHERE feature_name = 'Rock Formation'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 18, feature_id FROM features
     WHERE feature_name = 'Cave'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 18, feature_id FROM features
     WHERE feature_name = 'Wildflower Field'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 18, feature_id FROM features
     WHERE feature_name = 'Volcanic Feature'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 18, feature_id FROM features
     WHERE feature_name = 'Cultural/Historical Site'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 18, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 18, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Audio Described Brochures'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 18, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 18, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Horseback Riding'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 18, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 18, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Tent'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 18, camp_type_id FROM camp_types
     WHERE camp_type_name = 'RV'
     ON CONFLICT DO NOTHING;


INSERT INTO parks (
  park_id,
  park_name,
  park_address,
  park_state,
  park_region,
  park_level,
  park_type,
  park_description,
  park_phone_number,
  park_size,
  park_min_elevation,
  park_max_elevation,
  park_latitude,
  park_longitude,
  park_location,
  park_time_zone,
  park_entry_fee,
  park_parking_fee,
  park_average_rating,
  park_number_of_reviews,
  park_drone_permit,
  park_fishing_permit,
  park_hunting_permit,
  park_pet_policy,
  park_backcountry_permit,
  park_other_fee,
  park_photo_link,
  park_agency
) VALUES (
  19,
  'Point Reyes',
  '1 Bear Valley Road Point Reyes Station, CA 94956',
  'California',
  'San Francisco Bay Area',
  'Federal',
  'Seashore',
  'Point Reyes National Seashore is a dramatic coastal landscape on the California coast just north of San Francisco. The park features sweeping ocean views, wind-swept headlands, and rolling pastures rich in wildlife and history. Visitors can hike to Alamere Falls, explore the rugged coastline, spot gray whales offshore, or watch tule elk grazing in the Grassland. The park protects sensitive habitats like estuaries, tidepools, and coastal prairies, and it’s renowned as one of the best birdwatching locations in the U.S. With historic structures like the Point Reyes Lighthouse and opportunities for kayaking, tidepooling, and backcountry camping, the seashore offers a diverse and immersive experience of Northern California’s wild coast.',
  '415-464-5100',
  71028,
  0,
  2500,
  -122.88766850828,
  38.0538510125172,
  ST_SetSRID(
    ST_MakePoint(38.0538510125172, -122.88766850828),
    4326
  )::geography,
  NULL,
  0,
  0,
  0,
  0,
  'Not Allowed',
  'No Permit Required',
  'Not Allowed',
  'Pets Allowed (Limited)',
  'Permit Required',
  0,
  'https://res.cloudinary.com/def88aad2/image/upload/v1749437769/point-reyes-national-seashore_g41ldx.jpg',
  'National Parks Agency'
);
INSERT INTO park_activities (park_id, activity_id)
     SELECT 19, activity_id FROM activities
     WHERE activity_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 19, activity_id FROM activities
     WHERE activity_name = 'Backpacking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 19, activity_id FROM activities
     WHERE activity_name = 'Mountain Biking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 19, activity_id FROM activities
     WHERE activity_name = 'Fishing'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 19, activity_id FROM activities
     WHERE activity_name = 'Equestiran Riding'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 19, activity_id FROM activities
     WHERE activity_name = 'Swimming'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 19, activity_id FROM activities
     WHERE activity_name = 'Scuba Diving/Snorkeling'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 19, activity_id FROM activities
     WHERE activity_name = 'Non-Motorized Boating'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 19, activity_id FROM activities
     WHERE activity_name = 'Whale Watching'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 19, activity_id FROM activities
     WHERE activity_name = 'Birdwatching'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 19, activity_id FROM activities
     WHERE activity_name = 'Guided Tours'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 19, activity_id FROM activities
     WHERE activity_name = 'Geocaching'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 19, facility_id FROM facilities
     WHERE facility_name = 'Restrooms'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 19, facility_id FROM facilities
     WHERE facility_name = 'Potable Water'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 19, facility_id FROM facilities
     WHERE facility_name = 'Visitor Center'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 19, facility_id FROM facilities
     WHERE facility_name = 'Museum'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 19, facility_id FROM facilities
     WHERE facility_name = 'Gift Shop'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 19, facility_id FROM facilities
     WHERE facility_name = 'Picnic Area'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 19, facility_id FROM facilities
     WHERE facility_name = 'Parking Lot'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 19, facility_id FROM facilities
     WHERE facility_name = 'Bike Rack'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 19, facility_id FROM facilities
     WHERE facility_name = 'Educational Facility'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 19, facility_id FROM facilities
     WHERE facility_name = 'EV Charging Station'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 19, feature_id FROM features
     WHERE feature_name = 'Lake/Reservoir'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 19, feature_id FROM features
     WHERE feature_name = 'Beach'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 19, feature_id FROM features
     WHERE feature_name = 'Sand Dune'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 19, feature_id FROM features
     WHERE feature_name = 'Grassland'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 19, feature_id FROM features
     WHERE feature_name = 'Waterfall'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 19, feature_id FROM features
     WHERE feature_name = 'Rock Formation'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 19, feature_id FROM features
     WHERE feature_name = 'Wildflower Field'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 19, feature_id FROM features
     WHERE feature_name = 'Tidepool'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 19, feature_id FROM features
     WHERE feature_name = 'Cultural/Historical Site'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 19, feature_id FROM features
     WHERE feature_name = 'River'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 19, feature_id FROM features
     WHERE feature_name = 'Wetland/Marsh'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 19, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 19, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Beach Wheelchairs'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 19, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 19, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Mountain Biking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 19, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Horseback Riding'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 19, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 19, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Tent'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 19, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Backcountry'
     ON CONFLICT DO NOTHING;


INSERT INTO parks (
  park_id,
  park_name,
  park_address,
  park_state,
  park_region,
  park_level,
  park_type,
  park_description,
  park_phone_number,
  park_size,
  park_min_elevation,
  park_max_elevation,
  park_latitude,
  park_longitude,
  park_location,
  park_time_zone,
  park_entry_fee,
  park_parking_fee,
  park_average_rating,
  park_number_of_reviews,
  park_drone_permit,
  park_fishing_permit,
  park_hunting_permit,
  park_pet_policy,
  park_backcountry_permit,
  park_other_fee,
  park_photo_link,
  park_agency
) VALUES (
  20,
  'Port Chicago Naval Magazine',
  '4202 Alhambra Ave, Martinez, CA 94553',
  'California',
  'San Francisco Bay Area',
  'Federal',
  'Memorial',
  'Port Chicago Naval Magazine National Memorial, located on the Suisun Bay shoreline in Concord (within a still-active military terminal), commemorates the tragic July 17, 1944 explosion that killed 320 sailors and civilians—primarily African-American stevedores. The site marks a pivotal moment in military history, from segregation to the Port Chicago Mutiny and subsequent Navy desegregation. Access is strictly via advance-reserved NPS shuttle from John Muir NHS on select days (Thu–Sat). The visit includes ranger-led interpretation through a reflective plaza overlooking the remnants of pilings and a piece of the ship, plus memorial stones listing the names of the deceased. With no overnight facilities, parking, or camping on-site, the memorial is a focused, educational, and somber day-use destination that honors lives lost and the broader struggle for racial equity in America’s armed forces.',
  '925-228-8860 x6520',
  5,
  0,
  5,
  -122.029999632547,
  38.0558161705085,
  ST_SetSRID(
    ST_MakePoint(38.0558161705085, -122.029999632547),
    4326
  )::geography,
  NULL,
  0,
  0,
  0,
  0,
  'Not Allowed',
  'Not Allowed',
  'Not Allowed',
  'Service Animals Only',
  'Not Allowed',
  0,
  'https://res.cloudinary.com/def88aad2/image/upload/v1749437769/point-reyes-national-seashore_g41ldx.jpg',
  'National Parks Agency'
);
INSERT INTO park_activities (park_id, activity_id)
     SELECT 20, activity_id FROM activities
     WHERE activity_name = 'Guided Tours'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 20, facility_id FROM facilities
     WHERE facility_name = 'Parking Lot'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 20, facility_id FROM facilities
     WHERE facility_name = 'Restrooms'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 20, feature_id FROM features
     WHERE feature_name = 'Cultural/Historical Site'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 20, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 20, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Interpretation Services'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 20, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Audio & Large Print Exibits'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 20, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Braille'
     ON CONFLICT DO NOTHING;


INSERT INTO parks (
  park_id,
  park_name,
  park_address,
  park_state,
  park_region,
  park_level,
  park_type,
  park_description,
  park_phone_number,
  park_size,
  park_min_elevation,
  park_max_elevation,
  park_latitude,
  park_longitude,
  park_location,
  park_time_zone,
  park_entry_fee,
  park_parking_fee,
  park_average_rating,
  park_number_of_reviews,
  park_drone_permit,
  park_fishing_permit,
  park_hunting_permit,
  park_pet_policy,
  park_backcountry_permit,
  park_other_fee,
  park_photo_link,
  park_agency
) VALUES (
  21,
  'Presidio of San Francisco',
  '201 Fort Mason, San Francisco, CA 94123',
  'California',
  'San Francisco Bay Area',
  'Federal',
  'Other Park Designation',
  'The Presidio of San Francisco, a 1,491-acre historic district within the Golden Gate National Recreation Area, blends military heritage, spectacular landscapes, and urban recreation. Once a Spanish, Mexican, and U.S. Army post, it now features restored officer quarters, trails winding through forests and coastal bluffs, and iconic overlooks of the Golden Gate Bridge. Visitors can tent camp at Rob Hill, bike its roads, paddle at Crissy Field, or stroll among art installations at Tunnel Tops. The Presidio Trust, funded through leasing former military buildings and hospitality ventures, maintains this vibrant urban park with visitor centers, picnic sites, playgrounds, a golf course, and cultural programs—all free to enter. Amidst towering eucalyptus and cypress trees, the Presidio offers military-era architecture, rich biodiversity, and family-friendly adventures just minutes from downtown San Francisco.',
  '415-561-4323',
  1480,
  0,
  400,
  -122.466656547043,
  37.7971419150633,
  ST_SetSRID(
    ST_MakePoint(37.7971419150633, -122.466656547043),
    4326
  )::geography,
  NULL,
  0,
  0,
  0,
  0,
  'Not Allowed',
  'Not Allowed',
  'Not Allowed',
  'Pets Allowed on Leash',
  'Not Allowed',
  0,
  'https://res.cloudinary.com/def88aad2/image/upload/v1749437994/presidio-of-san-francisco-national-other-park-designation_vysgbc.jpg',
  'National Parks Agency'
);
INSERT INTO park_activities (park_id, activity_id)
     SELECT 21, activity_id FROM activities
     WHERE activity_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 21, activity_id FROM activities
     WHERE activity_name = 'Mountain Biking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 21, activity_id FROM activities
     WHERE activity_name = 'Guided Tours'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 21, activity_id FROM activities
     WHERE activity_name = 'Birdwatching'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 21, facility_id FROM facilities
     WHERE facility_name = 'Restrooms'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 21, facility_id FROM facilities
     WHERE facility_name = 'Potable Water'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 21, facility_id FROM facilities
     WHERE facility_name = 'Visitor Center'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 21, facility_id FROM facilities
     WHERE facility_name = 'Gift Shop'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 21, facility_id FROM facilities
     WHERE facility_name = 'Picnic Area'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 21, facility_id FROM facilities
     WHERE facility_name = 'Parking Lot'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 21, facility_id FROM facilities
     WHERE facility_name = 'Ranger Station'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 21, facility_id FROM facilities
     WHERE facility_name = 'Bike Rack'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 21, facility_id FROM facilities
     WHERE facility_name = 'EV Charging Station'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 21, facility_id FROM facilities
     WHERE facility_name = 'Educational Facility'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 21, feature_id FROM features
     WHERE feature_name = 'Old-Growth Forest'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 21, feature_id FROM features
     WHERE feature_name = 'Beach'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 21, feature_id FROM features
     WHERE feature_name = 'Sand Dune'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 21, feature_id FROM features
     WHERE feature_name = 'Wetland/Marsh'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 21, feature_id FROM features
     WHERE feature_name = 'Cultural/Historical Site'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 21, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 21, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 21, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Mountain Biking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 21, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 21, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Tent'
     ON CONFLICT DO NOTHING;


INSERT INTO parks (
  park_id,
  park_name,
  park_address,
  park_state,
  park_region,
  park_level,
  park_type,
  park_description,
  park_phone_number,
  park_size,
  park_min_elevation,
  park_max_elevation,
  park_latitude,
  park_longitude,
  park_location,
  park_time_zone,
  park_entry_fee,
  park_parking_fee,
  park_average_rating,
  park_number_of_reviews,
  park_drone_permit,
  park_fishing_permit,
  park_hunting_permit,
  park_pet_policy,
  park_backcountry_permit,
  park_other_fee,
  park_photo_link,
  park_agency
) VALUES (
  22,
  'Redwood',
  '1111 Second Street, Crescent City, CA 95531',
  'California',
  'North Coast',
  'Federal',
  'Park',
  'Redwood National and State Parks encompass over 133,000 acres of some of the world’s tallest coastal redwoods, ancient river canyons, fern-draped cliffs, and rugged Pacific beaches along California’s north coast. Trail lovers can stroll under cathedral-like trunks, wander through Fern Canyon’s verdant walls, or explore tidepool-rich beaches. Campers have options ranging from developed campsites and ADA cabins to remote backcountry sites along rivers or shorelines. Wildlife thrives here—from Roosevelt elk and salmon to banana slugs and migrating whales offshore. With five visitor centers, accessible infrastructure (including beach wheelchairs), ranger-guided programs, and strict protections against drones and hunting, the parks offer both awe-inspiring adventure and quiet reflection in one of America’s most iconic forest ecosystems.',
  '707-464-6101',
  139091,
  0,
  1400,
  -124.039853032456,
  41.3892815419796,
  ST_SetSRID(
    ST_MakePoint(41.3892815419796, -124.039853032456),
    4326
  )::geography,
  NULL,
  0,
  0,
  0,
  0,
  'Not Allowed',
  'No Permit Required',
  'Not Allowed',
  'Pets Allowed (Limited)',
  'Permit Required',
  0,
  'https://res.cloudinary.com/def88aad2/image/upload/v1749438049/redwood-national-park_eryfsr.jpg',
  'National Parks Agency'
);
INSERT INTO park_activities (park_id, activity_id)
     SELECT 22, activity_id FROM activities
     WHERE activity_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 22, activity_id FROM activities
     WHERE activity_name = 'Mountain Biking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 22, activity_id FROM activities
     WHERE activity_name = 'Equestiran Riding'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 22, activity_id FROM activities
     WHERE activity_name = 'Guided Tours'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 22, activity_id FROM activities
     WHERE activity_name = 'Birdwatching'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 22, activity_id FROM activities
     WHERE activity_name = 'Non-Motorized Boating'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 22, activity_id FROM activities
     WHERE activity_name = 'Geocaching'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 22, activity_id FROM activities
     WHERE activity_name = 'Fishing'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 22, activity_id FROM activities
     WHERE activity_name = 'Road Cycling'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 22, facility_id FROM facilities
     WHERE facility_name = 'Restrooms'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 22, facility_id FROM facilities
     WHERE facility_name = 'Potable Water'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 22, facility_id FROM facilities
     WHERE facility_name = 'Visitor Center'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 22, facility_id FROM facilities
     WHERE facility_name = 'Gift Shop'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 22, facility_id FROM facilities
     WHERE facility_name = 'Picnic Area'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 22, facility_id FROM facilities
     WHERE facility_name = 'Parking Lot'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 22, facility_id FROM facilities
     WHERE facility_name = 'Ranger Station'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 22, facility_id FROM facilities
     WHERE facility_name = 'Bike Rack'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 22, feature_id FROM features
     WHERE feature_name = 'Old-Growth Forest'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 22, feature_id FROM features
     WHERE feature_name = 'Canyon'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 22, feature_id FROM features
     WHERE feature_name = 'River'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 22, feature_id FROM features
     WHERE feature_name = 'Beach'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 22, feature_id FROM features
     WHERE feature_name = 'Sand Dune'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 22, feature_id FROM features
     WHERE feature_name = 'Wetland/Marsh'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 22, feature_id FROM features
     WHERE feature_name = 'Grassland'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 22, feature_id FROM features
     WHERE feature_name = 'Wildflower Field'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 22, feature_id FROM features
     WHERE feature_name = 'Cultural/Historical Site'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 22, feature_id FROM features
     WHERE feature_name = 'Tidepool'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 22, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 22, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Tactile Models'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 22, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Open-Captioned Videos'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 22, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Audio Described Brochures'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 22, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Braille'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 22, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 22, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Mountain Biking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 22, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Horseback Riding'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 22, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 22, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Tent'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 22, camp_type_id FROM camp_types
     WHERE camp_type_name = 'RV'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 22, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Backcountry'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 22, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Cabin'
     ON CONFLICT DO NOTHING;


INSERT INTO parks (
  park_id,
  park_name,
  park_address,
  park_state,
  park_region,
  park_level,
  park_type,
  park_description,
  park_phone_number,
  park_size,
  park_min_elevation,
  park_max_elevation,
  park_latitude,
  park_longitude,
  park_location,
  park_time_zone,
  park_entry_fee,
  park_parking_fee,
  park_average_rating,
  park_number_of_reviews,
  park_drone_permit,
  park_fishing_permit,
  park_hunting_permit,
  park_pet_policy,
  park_backcountry_permit,
  park_other_fee,
  park_photo_link,
  park_agency
) VALUES (
  23,
  'Rosie the Riveter WWII Home Front',
  '1414 Harbour Way S #3000, Richmond, CA 94804',
  'California',
  'San Francisco Bay Area',
  'Federal',
  'Historical Park',
  'Rosie the Riveter WWII Home Front National Historical Park in Richmond, California, preserves the rich legacy of America’s World War II home front. It interprets the monumental contributions of women and minorities in the shipyards and defense industries, highlighted through a restored Visitor Education Center housed in the historic Oil House, full of artifacts, films, and interactive displays. Nearby sites include the Rosie Memorial—a public art installation shaped like a Liberty ship’s keel—Richmond Shipyards 2 & 3, the SS Red Oak Victory museum ship, and the Ford Assembly Plant, where tanks and vehicles were built. Visitors can walk or bike along the interpretive San Francisco Bay Trail with historical markers, participate in ranger-led tours and Rosie Fridays events, and engage in educational programming such as Junior Ranger and school field trips. With free admission and accessible pathways, the park invites reflection on home front innovation, equity, and resilience in a site seamlessly woven into the urban fabric of Richmond’s waterfront.',
  '510-232-5050',
  145,
  0,
  20,
  -122.357165779493,
  37.9096518548542,
  ST_SetSRID(
    ST_MakePoint(37.9096518548542, -122.357165779493),
    4326
  )::geography,
  NULL,
  0,
  0,
  0,
  0,
  'Not Allowed',
  'Not Allowed',
  'Not Allowed',
  'Service Animals Only',
  'Not Allowed',
  0,
  'https://res.cloudinary.com/def88aad2/image/upload/v1749438101/rosie-the-riveter-wwii-homoe-front-national-historic-park_wvd7at.jpg',
  'National Parks Agency'
);
INSERT INTO park_activities (park_id, activity_id)
     SELECT 23, activity_id FROM activities
     WHERE activity_name = 'Guided Tours'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 23, facility_id FROM facilities
     WHERE facility_name = 'Restrooms'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 23, facility_id FROM facilities
     WHERE facility_name = 'Potable Water'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 23, facility_id FROM facilities
     WHERE facility_name = 'Visitor Center'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 23, facility_id FROM facilities
     WHERE facility_name = 'Museum'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 23, facility_id FROM facilities
     WHERE facility_name = 'Gift Shop'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 23, facility_id FROM facilities
     WHERE facility_name = 'Picnic Area'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 23, facility_id FROM facilities
     WHERE facility_name = 'Parking Lot'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 23, facility_id FROM facilities
     WHERE facility_name = 'Educational Facility'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 23, facility_id FROM facilities
     WHERE facility_name = 'Wi-Fi Access Point'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 23, facility_id FROM facilities
     WHERE facility_name = 'Bike Rack'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 23, facility_id FROM facilities
     WHERE facility_name = 'EV Charging Station'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 23, feature_id FROM features
     WHERE feature_name = 'Cultural/Historical Site'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 23, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 23, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Open-Captioned Videos'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 23, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Assistive Listening Devices'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 23, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Audio/Visual Tours'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 23, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Audio Described Brochures'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 23, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Interpretation Services'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 23, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Audio-Described Films'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 23, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Braille'
     ON CONFLICT DO NOTHING;


INSERT INTO parks (
  park_id,
  park_name,
  park_address,
  park_state,
  park_region,
  park_level,
  park_type,
  park_description,
  park_phone_number,
  park_size,
  park_min_elevation,
  park_max_elevation,
  park_latitude,
  park_longitude,
  park_location,
  park_time_zone,
  park_entry_fee,
  park_parking_fee,
  park_average_rating,
  park_number_of_reviews,
  park_drone_permit,
  park_fishing_permit,
  park_hunting_permit,
  park_pet_policy,
  park_backcountry_permit,
  park_other_fee,
  park_photo_link,
  park_agency
) VALUES (
  24,
  'San Francisco Maritime',
  '2 Marina Boulevard, Building E, 2nd Floor, San Francisco, CA 94123',
  'California',
  'San Francisco Bay Area',
  'Federal',
  'Historical Park',
  'San Francisco Maritime National Historical Park preserves the city’s rich maritime legacy at Aquatic Park Cove and Hyde Street Pier. Established in 1988, the park features a collection of historic ships—including the Balclutha, C.A. Thayer, Eureka, and USS Pampanito—moored along a restored waterfront. Visitors can wander the decks of these vessels on docent-led or self-guided tours, explore the Maritime Museum in the WPA-era bathhouse with its vibrant murals, and learn through films and exhibits at the Visitor Center. The park offers walking tours, Junior Ranger programs, non-motorized boating, birdwatching, and educational outreach. With ADA access, service animals, and interpretive materials in audio and braille formats, the park is welcoming to diverse visitors. Free to enter, it also hosts special events and partnerships with the Maritime Park Association, making it an accessible urban maritime treasure that speaks to San Francisco’s seafaring past and living culture.',
  '415-447-5000',
  50,
  0,
  100,
  -122.423922560494,
  37.8064325844505,
  ST_SetSRID(
    ST_MakePoint(37.8064325844505, -122.423922560494),
    4326
  )::geography,
  NULL,
  0,
  0,
  0,
  0,
  'Not Allowed',
  'Not Allowed',
  'Not Allowed',
  'Pets Allowed on Leash',
  'Not Allowed',
  0,
  'https://res.cloudinary.com/def88aad2/image/upload/v1749438164/san-francisco-maritime-national-historical-park_z1xitv.jpg',
  'National Parks Agency'
);
INSERT INTO park_activities (park_id, activity_id)
     SELECT 24, activity_id FROM activities
     WHERE activity_name = 'Guided Tours'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 24, activity_id FROM activities
     WHERE activity_name = 'Swimming'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 24, activity_id FROM activities
     WHERE activity_name = 'Non-Motorized Boating'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 24, facility_id FROM facilities
     WHERE facility_name = 'Restrooms'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 24, facility_id FROM facilities
     WHERE facility_name = 'Potable Water'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 24, facility_id FROM facilities
     WHERE facility_name = 'Visitor Center'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 24, facility_id FROM facilities
     WHERE facility_name = 'Museum'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 24, facility_id FROM facilities
     WHERE facility_name = 'Gift Shop'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 24, facility_id FROM facilities
     WHERE facility_name = 'Picnic Area'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 24, facility_id FROM facilities
     WHERE facility_name = 'Parking Lot'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 24, facility_id FROM facilities
     WHERE facility_name = 'Educational Facility'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 24, feature_id FROM features
     WHERE feature_name = 'Cultural/Historical Site'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 24, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 24, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Audio Described Brochures'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 24, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Braille'
     ON CONFLICT DO NOTHING;


INSERT INTO parks (
  park_id,
  park_name,
  park_address,
  park_state,
  park_region,
  park_level,
  park_type,
  park_description,
  park_phone_number,
  park_size,
  park_min_elevation,
  park_max_elevation,
  park_latitude,
  park_longitude,
  park_location,
  park_time_zone,
  park_entry_fee,
  park_parking_fee,
  park_average_rating,
  park_number_of_reviews,
  park_drone_permit,
  park_fishing_permit,
  park_hunting_permit,
  park_pet_policy,
  park_backcountry_permit,
  park_other_fee,
  park_photo_link,
  park_agency
) VALUES (
  25,
  'Santa Monica Mountains',
  '26876 Mulholland Highway, Calabasas, CA 91302',
  'California',
  'Central Coast',
  'Federal',
  'Recreation Area',
  'Santa Monica Mountains National Recreation Area protects 157,700 acres of coastal mountain wilderness nestled between Los Angeles and Ventura counties. As the world''s largest urban National Park, it offers over 500 miles of trails that wind through chaparral ridges, oak woodlands, and riparian canyons, with access to dramatic Pacific coastline and unique geology at sites like Sandstone Peak and Echo Cliffs. Recreational opportunities include hiking, mountain biking, horseback riding, climbing, wildlife viewing, and seasonal whale and wildflower sightings. While camping is limited to group sites at Circle X Ranch and nearby state parks fill gaps, the area delivers transformative day-use experiences. Cultural highlights—like Chumash heritage at Satwiwa, Western film sets at Paramount Ranch, and historic ranches—layered with ranger programs and accessible visitor facilities, make the preserve a richly diverse wilderness destination just minutes from urban hubs.',
  '805-370-2301',
  147700,
  0,
  3000,
  -118.734588744915,
  34.09228056632,
  ST_SetSRID(
    ST_MakePoint(34.09228056632, -118.734588744915),
    4326
  )::geography,
  NULL,
  0,
  0,
  0,
  0,
  'Not Allowed',
  'No Permit Required',
  'Not Allowed',
  'Pets Allowed on Leash',
  'Not Allowed',
  0,
  'https://res.cloudinary.com/def88aad2/image/upload/v1749438218/santa-monica-mountains-national-recreation-area_dkwkzf.jpg',
  'National Parks Agency'
);
INSERT INTO park_activities (park_id, activity_id)
     SELECT 25, activity_id FROM activities
     WHERE activity_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 25, activity_id FROM activities
     WHERE activity_name = 'Mountain Biking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 25, activity_id FROM activities
     WHERE activity_name = 'Road Cycling'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 25, activity_id FROM activities
     WHERE activity_name = 'Equestiran Riding'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 25, activity_id FROM activities
     WHERE activity_name = 'Swimming'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 25, activity_id FROM activities
     WHERE activity_name = 'Scuba Diving/Snorkeling'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 25, activity_id FROM activities
     WHERE activity_name = 'Fishing'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 25, activity_id FROM activities
     WHERE activity_name = 'Guided Tours'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 25, activity_id FROM activities
     WHERE activity_name = 'Birdwatching'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 25, activity_id FROM activities
     WHERE activity_name = 'Whale Watching'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 25, activity_id FROM activities
     WHERE activity_name = 'Rock Climbing'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 25, activity_id FROM activities
     WHERE activity_name = 'Geocaching'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 25, activity_id FROM activities
     WHERE activity_name = 'Backpacking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 25, activity_id FROM activities
     WHERE activity_name = 'Non-Motorized Boating'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 25, facility_id FROM facilities
     WHERE facility_name = 'Restrooms'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 25, facility_id FROM facilities
     WHERE facility_name = 'Potable Water'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 25, facility_id FROM facilities
     WHERE facility_name = 'Visitor Center'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 25, facility_id FROM facilities
     WHERE facility_name = 'Museum'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 25, facility_id FROM facilities
     WHERE facility_name = 'Gift Shop'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 25, facility_id FROM facilities
     WHERE facility_name = 'Picnic Area'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 25, facility_id FROM facilities
     WHERE facility_name = 'Parking Lot'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 25, facility_id FROM facilities
     WHERE facility_name = 'Bike Rack'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 25, facility_id FROM facilities
     WHERE facility_name = 'RV Hook-up'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 25, facility_id FROM facilities
     WHERE facility_name = 'Event Space'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 25, facility_id FROM facilities
     WHERE facility_name = 'Educational Facility'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 25, facility_id FROM facilities
     WHERE facility_name = 'Boat Launch/Dock'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 25, facility_id FROM facilities
     WHERE facility_name = 'Fishing Pier'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 25, facility_id FROM facilities
     WHERE facility_name = 'Wi-Fi Access Point'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 25, facility_id FROM facilities
     WHERE facility_name = 'EV Charging Station'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 25, facility_id FROM facilities
     WHERE facility_name = 'Gas Station'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 25, feature_id FROM features
     WHERE feature_name = 'Canyon'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 25, feature_id FROM features
     WHERE feature_name = 'River'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 25, feature_id FROM features
     WHERE feature_name = 'Lake/Reservoir'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 25, feature_id FROM features
     WHERE feature_name = 'Beach'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 25, feature_id FROM features
     WHERE feature_name = 'Wetland/Marsh'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 25, feature_id FROM features
     WHERE feature_name = 'Grassland'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 25, feature_id FROM features
     WHERE feature_name = 'Waterfall'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 25, feature_id FROM features
     WHERE feature_name = 'Rock Formation'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 25, feature_id FROM features
     WHERE feature_name = 'Cave'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 25, feature_id FROM features
     WHERE feature_name = 'Wildflower Field'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 25, feature_id FROM features
     WHERE feature_name = 'Tidepool'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 25, feature_id FROM features
     WHERE feature_name = 'Cultural/Historical Site'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 25, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 25, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Audio Described Brochures'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 25, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 25, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Horseback Riding'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 25, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Mountain Biking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 25, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 25, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Tent'
     ON CONFLICT DO NOTHING;


INSERT INTO parks (
  park_id,
  park_name,
  park_address,
  park_state,
  park_region,
  park_level,
  park_type,
  park_description,
  park_phone_number,
  park_size,
  park_min_elevation,
  park_max_elevation,
  park_latitude,
  park_longitude,
  park_location,
  park_time_zone,
  park_entry_fee,
  park_parking_fee,
  park_average_rating,
  park_number_of_reviews,
  park_drone_permit,
  park_fishing_permit,
  park_hunting_permit,
  park_pet_policy,
  park_backcountry_permit,
  park_other_fee,
  park_photo_link,
  park_agency
) VALUES (
  26,
  'Sequoia',
  '47050 Generals Highway, Three Rivers, CA 93271',
  'California',
  'High Sierra',
  'Federal',
  'Park',
  'Sequoia National Park spans the western Sierra Nevada foothills to alpine elevations exceeding 14,000 ft, anchored by the world’s largest trees—the giant sequoias. Visitors traverse paved, wheelchair-accessible groves (General Sherman, Big Trees), scramble granite domes like Moro Rock, hike to Tokopah Falls, and embark on wilderness treks to Rae Lakes or Alta Meadow. Developed campgrounds and RV sites cluster near Giant Forest and Lodgepole, while backcountry permits unlock the high-country experience. Amenities include visitor centers, markets, shuttles, showers, and wheelchair rentals. Guided programs, fishing, horseback rides, and winter snowshoeing round out the year-round appeal. With breathtaking vistas, ancient trees, marble caverns like Crystal Cave, and cultural landmarks like Tunnel Log, the park delivers a full spectrum of Sierra adventure and accessibility.',
  '559-565-3341',
  404064,
  1700,
  14000,
  -118.566529356303,
  36.4829571065721,
  ST_SetSRID(
    ST_MakePoint(36.4829571065721, -118.566529356303),
    4326
  )::geography,
  NULL,
  20,
  35,
  0,
  0,
  'Not Allowed',
  'No Permit Required',
  'Not Allowed',
  'Pets Allowed (Limited)',
  'Permit Required',
  0,
  'https://res.cloudinary.com/def88aad2/image/upload/v1749438263/sequoia-national-park_u30yvd.jpg',
  'National Parks Agency'
);
INSERT INTO park_activities (park_id, activity_id)
     SELECT 26, activity_id FROM activities
     WHERE activity_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 26, activity_id FROM activities
     WHERE activity_name = 'Backpacking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 26, activity_id FROM activities
     WHERE activity_name = 'Mountain Biking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 26, activity_id FROM activities
     WHERE activity_name = 'Road Cycling'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 26, activity_id FROM activities
     WHERE activity_name = 'Guided Tours'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 26, activity_id FROM activities
     WHERE activity_name = 'Birdwatching'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 26, activity_id FROM activities
     WHERE activity_name = 'Swimming'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 26, activity_id FROM activities
     WHERE activity_name = 'Fishing'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 26, activity_id FROM activities
     WHERE activity_name = 'Rock Climbing'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 26, activity_id FROM activities
     WHERE activity_name = 'Snow Sports'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 26, activity_id FROM activities
     WHERE activity_name = 'Equestiran Riding'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 26, facility_id FROM facilities
     WHERE facility_name = 'Restrooms'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 26, facility_id FROM facilities
     WHERE facility_name = 'Showers'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 26, facility_id FROM facilities
     WHERE facility_name = 'Potable Water'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 26, facility_id FROM facilities
     WHERE facility_name = 'Visitor Center'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 26, facility_id FROM facilities
     WHERE facility_name = 'Gift Shop'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 26, facility_id FROM facilities
     WHERE facility_name = 'Picnic Area'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 26, facility_id FROM facilities
     WHERE facility_name = 'Parking Lot'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 26, facility_id FROM facilities
     WHERE facility_name = 'Ranger Station'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 26, feature_id FROM features
     WHERE feature_name = 'Old-Growth Forest'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 26, feature_id FROM features
     WHERE feature_name = 'Canyon'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 26, feature_id FROM features
     WHERE feature_name = 'River'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 26, feature_id FROM features
     WHERE feature_name = 'Lake/Reservoir'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 26, feature_id FROM features
     WHERE feature_name = 'Waterfall'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 26, feature_id FROM features
     WHERE feature_name = 'Rock Formation'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 26, feature_id FROM features
     WHERE feature_name = 'Volcanic Feature'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 26, feature_id FROM features
     WHERE feature_name = 'Wildflower Field'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 26, feature_id FROM features
     WHERE feature_name = 'Cultural/Historical Site'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 26, feature_id FROM features
     WHERE feature_name = 'Cave'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 26, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 26, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Interpretation Services'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 26, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Assistive Listening Devices'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 26, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Audio Described Brochures'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 26, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Braille'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 26, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Tactile Models'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 26, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 26, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Horseback Riding'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 26, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Mountain Biking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 26, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 26, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Tent'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 26, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Backcountry'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 26, camp_type_id FROM camp_types
     WHERE camp_type_name = 'RV'
     ON CONFLICT DO NOTHING;


INSERT INTO parks (
  park_id,
  park_name,
  park_address,
  park_state,
  park_region,
  park_level,
  park_type,
  park_description,
  park_phone_number,
  park_size,
  park_min_elevation,
  park_max_elevation,
  park_latitude,
  park_longitude,
  park_location,
  park_time_zone,
  park_entry_fee,
  park_parking_fee,
  park_average_rating,
  park_number_of_reviews,
  park_drone_permit,
  park_fishing_permit,
  park_hunting_permit,
  park_pet_policy,
  park_backcountry_permit,
  park_other_fee,
  park_photo_link,
  park_agency
) VALUES (
  27,
  'Kings Canyon',
  '47050 Generals Highway, Three Rivers, CA 93271',
  'California',
  'High Sierra',
  'Federal',
  'Park',
  'Kings Canyon National Park encompasses the dramatic depths of Kings Canyon—one of North America’s deepest river-carved gorges—alongside soaring granite cliffs, vast old-growth sequoia groves like the iconic General Grant Tree, and high-country meadows and lakes. Visitors can drive the 50-mile Kings Canyon Scenic Byway along Highway 180, stopping at accessible highlights like Roaring River Falls, Zumwalt Meadow boardwalk, and scenic viewpoints. Outdoor adventures span day hikes to Mist Falls, Big Baldy, and backpacking treks such as Rae Lakes; winter activities include cross-country skiing in Grant Grove. Campers enjoy developed tent and RV sites, while wilderness permits allow for backcountry solitude. Ranger-led programs, fishing, canoeing at Hume Lake, and guided horseback trips enrich the experience. Spectacular landscapes of sequoia giants, plunging canyons, falls, and alpine wilderness combine to make Kings Canyon a profound and accessible Sierra Nevada immersion.',
  '559-565-3341',
  461901,
  4000,
  13000,
  -118.553481194029,
  36.8851720648653,
  ST_SetSRID(
    ST_MakePoint(36.8851720648653, -118.553481194029),
    4326
  )::geography,
  NULL,
  20,
  35,
  0,
  0,
  'Not Allowed',
  'No Permit Required',
  'Not Allowed',
  'Pets Allowed (Limited)',
  'Permit Required',
  0,
  'https://res.cloudinary.com/def88aad2/image/upload/v1749438263/sequoia-national-park_u30yvd.jpg',
  'National Parks Agency'
);
INSERT INTO park_activities (park_id, activity_id)
     SELECT 27, activity_id FROM activities
     WHERE activity_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 27, activity_id FROM activities
     WHERE activity_name = 'Backpacking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 27, activity_id FROM activities
     WHERE activity_name = 'Mountain Biking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 27, activity_id FROM activities
     WHERE activity_name = 'Road Cycling'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 27, activity_id FROM activities
     WHERE activity_name = 'Guided Tours'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 27, activity_id FROM activities
     WHERE activity_name = 'Birdwatching'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 27, activity_id FROM activities
     WHERE activity_name = 'Swimming'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 27, activity_id FROM activities
     WHERE activity_name = 'Fishing'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 27, activity_id FROM activities
     WHERE activity_name = 'Rock Climbing'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 27, activity_id FROM activities
     WHERE activity_name = 'Snow Sports'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 27, activity_id FROM activities
     WHERE activity_name = 'Equestiran Riding'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 27, activity_id FROM activities
     WHERE activity_name = 'Non-Motorized Boating'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 27, facility_id FROM facilities
     WHERE facility_name = 'Restrooms'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 27, facility_id FROM facilities
     WHERE facility_name = 'Showers'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 27, facility_id FROM facilities
     WHERE facility_name = 'Potable Water'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 27, facility_id FROM facilities
     WHERE facility_name = 'Visitor Center'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 27, facility_id FROM facilities
     WHERE facility_name = 'Gift Shop'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 27, facility_id FROM facilities
     WHERE facility_name = 'Picnic Area'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 27, facility_id FROM facilities
     WHERE facility_name = 'Parking Lot'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 27, facility_id FROM facilities
     WHERE facility_name = 'Ranger Station'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 27, feature_id FROM features
     WHERE feature_name = 'Old-Growth Forest'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 27, feature_id FROM features
     WHERE feature_name = 'Canyon'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 27, feature_id FROM features
     WHERE feature_name = 'River'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 27, feature_id FROM features
     WHERE feature_name = 'Lake/Reservoir'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 27, feature_id FROM features
     WHERE feature_name = 'Waterfall'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 27, feature_id FROM features
     WHERE feature_name = 'Rock Formation'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 27, feature_id FROM features
     WHERE feature_name = 'Volcanic Feature'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 27, feature_id FROM features
     WHERE feature_name = 'Wildflower Field'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 27, feature_id FROM features
     WHERE feature_name = 'Cultural/Historical Site'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 27, feature_id FROM features
     WHERE feature_name = 'Cave'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 27, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 27, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Interpretation Services'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 27, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Assistive Listening Devices'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 27, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Audio Described Brochures'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 27, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Braille'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 27, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Tactile Models'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 27, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 27, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Horseback Riding'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 27, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Mountain Biking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 27, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 27, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Tent'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 27, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Backcountry'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 27, camp_type_id FROM camp_types
     WHERE camp_type_name = 'RV'
     ON CONFLICT DO NOTHING;


INSERT INTO parks (
  park_id,
  park_name,
  park_address,
  park_state,
  park_region,
  park_level,
  park_type,
  park_description,
  park_phone_number,
  park_size,
  park_min_elevation,
  park_max_elevation,
  park_latitude,
  park_longitude,
  park_location,
  park_time_zone,
  park_entry_fee,
  park_parking_fee,
  park_average_rating,
  park_number_of_reviews,
  park_drone_permit,
  park_fishing_permit,
  park_hunting_permit,
  park_pet_policy,
  park_backcountry_permit,
  park_other_fee,
  park_photo_link,
  park_agency
) VALUES (
  28,
  'Tule Lake',
  '44340 CA-139, Tulelake, CA 96134',
  'California',
  'Shasta Cascade',
  'Federal',
  'Monument',
  'Tule Lake National Monument commemorates the site of one of the ten WWII Japanese American incarceration camps—Tule Lake Segregation Center—where up to 18,700 Japanese Americans were forcibly held from 1942 to 1946. Located near the California–Oregon border, the monument preserves a range of camp structures and landscapes: the Cellhouse where the dissenters were detained, Block 6/7 gardens where families tried to maintain normalcy, and the cemetery and memorial groves honoring those who died here. The Visitor Center, co-located in the former Fairgrounds, offers exhibits, artifacts, and ranger-led programs that delve into resistance, loyalty questions, and camp life. No camping or recreational amenities exist; the focus is exclusively on education, reflection, and remembrance. Visitors are invited to walk shallow trails past original foundations and interpretive signs, listen to survivor stories, and acknowledge one of the most challenging chapters in American civil liberties history.',
  '530-664 4015',
  1300,
  4000,
  5500,
  -121.376724925653,
  41.8865735676801,
  ST_SetSRID(
    ST_MakePoint(41.8865735676801, -121.376724925653),
    4326
  )::geography,
  NULL,
  0,
  0,
  0,
  0,
  'Not Allowed',
  'Not Allowed',
  'Not Allowed',
  'Pets Allowed on Leash',
  'Not Allowed',
  0,
  'https://res.cloudinary.com/def88aad2/image/upload/v1749438306/tule-lake-national-monument_r8fxy2.jpg',
  'National Parks Agency'
);
INSERT INTO park_activities (park_id, activity_id)
     SELECT 28, activity_id FROM activities
     WHERE activity_name = 'Guided Tours'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 28, facility_id FROM facilities
     WHERE facility_name = 'Restrooms'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 28, facility_id FROM facilities
     WHERE facility_name = 'Showers'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 28, facility_id FROM facilities
     WHERE facility_name = 'Potable Water'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 28, facility_id FROM facilities
     WHERE facility_name = 'Visitor Center'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 28, facility_id FROM facilities
     WHERE facility_name = 'Museum'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 28, facility_id FROM facilities
     WHERE facility_name = 'Gift Shop'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 28, facility_id FROM facilities
     WHERE facility_name = 'Picnic Area'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 28, facility_id FROM facilities
     WHERE facility_name = 'Parking Lot'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 28, facility_id FROM facilities
     WHERE facility_name = 'Ranger Station'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 28, feature_id FROM features
     WHERE feature_name = 'Cultural/Historical Site'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 28, feature_id FROM features
     WHERE feature_name = 'Grassland'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 28, feature_id FROM features
     WHERE feature_name = 'Lake/Reservoir'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 28, feature_id FROM features
     WHERE feature_name = 'Wildflower Field'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 28, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;


INSERT INTO parks (
  park_id,
  park_name,
  park_address,
  park_state,
  park_region,
  park_level,
  park_type,
  park_description,
  park_phone_number,
  park_size,
  park_min_elevation,
  park_max_elevation,
  park_latitude,
  park_longitude,
  park_location,
  park_time_zone,
  park_entry_fee,
  park_parking_fee,
  park_average_rating,
  park_number_of_reviews,
  park_drone_permit,
  park_fishing_permit,
  park_hunting_permit,
  park_pet_policy,
  park_backcountry_permit,
  park_other_fee,
  park_photo_link,
  park_agency
) VALUES (
  29,
  'Wiskeytown',
  'PO Box 188, Whiskeytown, CA 96095',
  'California',
  'Shasta Cascade',
  'Federal',
  'Recreation Area',
  'Whiskeytown National Recreation Area, part of the broader Whiskeytown–Shasta–Trinity NRA, centers on serene 3,458‑acre Whiskeytown Lake nestled in northern California’s foothills. Established in 1965, the park offers rugged canyon trails leading to dramatic Waterfall and panoramic overlooks, alongside lakeside amenities such as beaches, swimming spots, and a marina. Visitors enjoy miles of mixed-use hiking, biking, and Equestiran routes; developed and primitive campsites; group camping at Dry Creek; kayak and paddleboard tours; motorized boating; and year-round fishing. Rich forests and riparian corridors support diverse wildlife, including nesting bald eagles and black bears. With a fully accessible Visitor Center featuring native plant gardens and exhibits, plus bear-safe camping protocols, Whiskeytown blends river canyon adventure, water recreation, and historic charm in a surprisingly tranquil corner of Northern California.',
  '530-664 4015',
  203587,
  930,
  4250,
  -122.523750814672,
  40.6011889489399,
  ST_SetSRID(
    ST_MakePoint(40.6011889489399, -122.523750814672),
    4326
  )::geography,
  NULL,
  0,
  0,
  0,
  0,
  'Not Allowed',
  'Not Allowed',
  'Not Allowed',
  'Pets Allowed on Leash',
  'Not Allowed',
  0,
  'https://res.cloudinary.com/def88aad2/image/upload/v1749438394/whiskeytown-national-recreation-area_c9gemw.jpg',
  'National Parks Agency'
);
INSERT INTO park_activities (park_id, activity_id)
     SELECT 29, activity_id FROM activities
     WHERE activity_name = 'Guided Tours'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 29, facility_id FROM facilities
     WHERE facility_name = 'Restrooms'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 29, facility_id FROM facilities
     WHERE facility_name = 'Showers'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 29, facility_id FROM facilities
     WHERE facility_name = 'Potable Water'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 29, facility_id FROM facilities
     WHERE facility_name = 'Visitor Center'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 29, facility_id FROM facilities
     WHERE facility_name = 'Museum'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 29, facility_id FROM facilities
     WHERE facility_name = 'Gift Shop'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 29, facility_id FROM facilities
     WHERE facility_name = 'Picnic Area'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 29, facility_id FROM facilities
     WHERE facility_name = 'Parking Lot'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 29, facility_id FROM facilities
     WHERE facility_name = 'Ranger Station'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 29, feature_id FROM features
     WHERE feature_name = 'Cultural/Historical Site'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 29, feature_id FROM features
     WHERE feature_name = 'Grassland'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 29, feature_id FROM features
     WHERE feature_name = 'Lake/Reservoir'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 29, feature_id FROM features
     WHERE feature_name = 'Wildflower Field'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 29, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;


INSERT INTO parks (
  park_id,
  park_name,
  park_address,
  park_state,
  park_region,
  park_level,
  park_type,
  park_description,
  park_phone_number,
  park_size,
  park_min_elevation,
  park_max_elevation,
  park_latitude,
  park_longitude,
  park_location,
  park_time_zone,
  park_entry_fee,
  park_parking_fee,
  park_average_rating,
  park_number_of_reviews,
  park_drone_permit,
  park_fishing_permit,
  park_hunting_permit,
  park_pet_policy,
  park_backcountry_permit,
  park_other_fee,
  park_photo_link,
  park_agency
) VALUES (
  30,
  'Yosemite',
  '9007 Village Dr, YOSEMITE NATIONAL PARK, CA 95389',
  'California',
  'High Sierra',
  'Federal',
  'Park',
  'Yosemite National Park encompasses nearly 750,000 acres of the Sierra Nevada, from glacially carved granite valleys and towering Waterfall to majestic sequoia groves and high alpine wilderness. Home to iconic natural landmarks—El Capitan, Half Dome, Yosemite Falls, and Mariposa Grove—the park offers world-class rock climbing, scenic hikes ranging from valley walks to challenging high-country treks, and winter recreation centered on Badger Pass. Overnight stays span developed campgrounds, RV sites, historic lodging like The Ahwahnee, and wilderness backcountry with permits. Visitors during peak months must plan ahead with entrance and camping reservations. Supported by visitor centers, shuttle systems, accessibility amenities, and educational programs, Yosemite delivers a full spectrum of seasonal, multi-sport outdoor adventure amid one of the planet’s most storied landscapes.',
  '530-664 4015',
  759620,
  2127,
  13114,
  -119.537327291524,
  37.8631963342838,
  ST_SetSRID(
    ST_MakePoint(37.8631963342838, -119.537327291524),
    4326
  )::geography,
  NULL,
  0,
  0,
  0,
  0,
  'Not Allowed',
  'Permit Required',
  'Not Allowed',
  'Pets Allowed on Leash',
  'Permit Required',
  0,
  'https://res.cloudinary.com/def88aad2/image/upload/v1749438467/yosemite-national-park_e9tp21.jpg',
  'National Parks Agency'
);
INSERT INTO park_activities (park_id, activity_id)
     SELECT 30, activity_id FROM activities
     WHERE activity_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 30, activity_id FROM activities
     WHERE activity_name = 'Backpacking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 30, activity_id FROM activities
     WHERE activity_name = 'Mountain Biking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 30, activity_id FROM activities
     WHERE activity_name = 'Road Cycling'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 30, activity_id FROM activities
     WHERE activity_name = 'Equestiran Riding'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 30, activity_id FROM activities
     WHERE activity_name = 'Rock Climbing'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 30, activity_id FROM activities
     WHERE activity_name = 'Guided Tours'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 30, activity_id FROM activities
     WHERE activity_name = 'Birdwatching'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 30, activity_id FROM activities
     WHERE activity_name = 'Swimming'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 30, activity_id FROM activities
     WHERE activity_name = 'Non-Motorized Boating'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 30, activity_id FROM activities
     WHERE activity_name = 'Fishing'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 30, activity_id FROM activities
     WHERE activity_name = 'Snow Sports'
     ON CONFLICT DO NOTHING;
INSERT INTO park_activities (park_id, activity_id)
     SELECT 30, activity_id FROM activities
     WHERE activity_name = 'Geocaching'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 30, facility_id FROM facilities
     WHERE facility_name = 'Restrooms'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 30, facility_id FROM facilities
     WHERE facility_name = 'Showers'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 30, facility_id FROM facilities
     WHERE facility_name = 'Potable Water'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 30, facility_id FROM facilities
     WHERE facility_name = 'Visitor Center'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 30, facility_id FROM facilities
     WHERE facility_name = 'Museum'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 30, facility_id FROM facilities
     WHERE facility_name = 'Gift Shop'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 30, facility_id FROM facilities
     WHERE facility_name = 'Picnic Area'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 30, facility_id FROM facilities
     WHERE facility_name = 'Parking Lot'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 30, facility_id FROM facilities
     WHERE facility_name = 'Ranger Station'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 30, facility_id FROM facilities
     WHERE facility_name = 'Event Space'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 30, facility_id FROM facilities
     WHERE facility_name = 'Educational Facility'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 30, facility_id FROM facilities
     WHERE facility_name = 'Bike Rack'
     ON CONFLICT DO NOTHING;
INSERT INTO park_facilities (park_id, facility_id)
     SELECT 30, facility_id FROM facilities
     WHERE facility_name = 'EV Charging Station'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 30, feature_id FROM features
     WHERE feature_name = 'Waterfall'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 30, feature_id FROM features
     WHERE feature_name = 'Old-Growth Forest'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 30, feature_id FROM features
     WHERE feature_name = 'Grassland'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 30, feature_id FROM features
     WHERE feature_name = 'River'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 30, feature_id FROM features
     WHERE feature_name = 'Lake/Reservoir'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 30, feature_id FROM features
     WHERE feature_name = 'Rock Formation'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 30, feature_id FROM features
     WHERE feature_name = 'Wildflower Field'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 30, feature_id FROM features
     WHERE feature_name = 'Cultural/Historical Site'
     ON CONFLICT DO NOTHING;
INSERT INTO park_features (park_id, feature_id)
     SELECT 30, feature_id FROM features
     WHERE feature_name = 'Canyon'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 30, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 30, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Interpretation Services'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 30, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Assistive Listening Devices'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 30, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Open-Captioned Videos'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 30, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Braille'
     ON CONFLICT DO NOTHING;
INSERT INTO park_accessibility (park_id, accessibility_id)
     SELECT 30, accessibility_id FROM accessibility
     WHERE accessibility_name = 'Audio Described Brochures'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 30, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Hiking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 30, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Horseback Riding'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 30, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Mountain Biking'
     ON CONFLICT DO NOTHING;
INSERT INTO park_trail_types (park_id, trail_type_id)
     SELECT 30, trail_type_id FROM trail_types
     WHERE trail_type_name = 'Wheelchair Accessible'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 30, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Tent'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 30, camp_type_id FROM camp_types
     WHERE camp_type_name = 'RV'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 30, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Cabin'
     ON CONFLICT DO NOTHING;
INSERT INTO park_camp_types (park_id, camp_type_id)
     SELECT 30, camp_type_id FROM camp_types
     WHERE camp_type_name = 'Backcountry'
     ON CONFLICT DO NOTHING;

