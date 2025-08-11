// helper_code/addParkToFile.js
const fs = require('fs');
const parks = require('./parks.json');

// Escape single quotes for SQL
function escapeString(str) {
  if (str === null || str === undefined) return 'NULL';
  if (typeof str === 'number') return str;
  return `'${String(str).replace(/'/g, "''")}'`;
}

// Helper to create many-to-many inserts
function linkTableSQL(refTable, linkTable, nameCol, idCol, parkId, items) {
  if (!Array.isArray(items) || items.length === 0) return '';

  return items.map(item =>
    `INSERT INTO ${linkTable} (park_id, ${idCol})
     SELECT ${parkId}, ${idCol} FROM ${refTable}
     WHERE ${nameCol} = ${escapeString(item)}
     ON CONFLICT DO NOTHING;`
  ).join('\n') + '\n';
}

// Build SQL for one park
function parkSQL(park, parkId) {
  const insertPark = `
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
  ${parkId},
  ${escapeString(park.park_name)},
  ${escapeString(park.park_address)},
  ${escapeString(park.park_state)},
  ${escapeString(park.park_region)},
  ${escapeString(park.park_level)},
  ${escapeString(park.park_type)},
  ${escapeString(park.park_description)},
  ${escapeString(park.phone_number)},
  ${escapeString(park.park_size)},
  ${escapeString(park.park_min_elevation)},
  ${escapeString(park.park_max_elevation)},
  ${escapeString(park.park_latitude)},
  ${escapeString(park.park_longitude)},
  ST_SetSRID(
    ST_MakePoint(${park.park_longitude}, ${park.park_latitude}),
    4326
  )::geography,
  ${escapeString(park.park_time_zone)},
  ${park.park_entry_fees || 0},
  ${park.park_parking_fees || 0},
  ${escapeString(park.park_average_rating)},
  ${escapeString(park.park_number_of_reviews)},
  ${escapeString(park.park_drone_permits)},
  ${escapeString(park.park_fishing_permits)},
  ${escapeString(park.park_hunting_permits)},
  ${escapeString(park.park_pet_policy)},
  ${escapeString(park.park_backcountry_permits)},
  ${parseFloat(park.park_other_fees) || 0},
  ${escapeString(park.park_photo_url)},
  ${escapeString(park.park_agency)}
);
`;

  // Link tables
  const links = [
    linkTableSQL('activities', 'park_activities', 'activity_name', 'activity_id', parkId, park.park_activities),
    linkTableSQL('facilities', 'park_facilities', 'facility_name', 'facility_id', parkId, park.park_facilities),
    linkTableSQL('features', 'park_features', 'feature_name', 'feature_id', parkId, park.park_features),
    linkTableSQL('accessibility', 'park_accessibility', 'accessibility_name', 'accessibility_id', parkId, park.park_accessibility),
    linkTableSQL('trail_types', 'park_trail_types', 'trail_type_name', 'trail_type_id', parkId, park.park_trails),
    linkTableSQL('camp_types', 'park_camp_types', 'camp_type_name', 'camp_type_id', parkId, park.park_campsites)
  ].join('');

  return insertPark + links + '\n';
}

// Main script
let sqlOutput = '';
let parkIdCounter = 1; // If your DB uses SERIAL, you can omit park_id and let DB assign

for (const park of parks) {
  sqlOutput += parkSQL(park, parkIdCounter++);
}

fs.writeFileSync('parks_inserts.sql', sqlOutput, 'utf8');
console.log('SQL file generated: parks_inserts.sql');
