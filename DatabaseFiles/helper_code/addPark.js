// helper_code/addPark.js

require('dotenv').config();
const { Pool } = require('pg');
const parks = require('./parks.json');

const pool = new Pool({ connectionString: process.env.DATABASE_URL });

async function insertLinkTable(client, refTable, linkTable, nameCol, idCol, parkId, items) {
  if (!Array.isArray(items) || items.length === 0) return;

  for (const item of items) {
    const { rows } = await client.query(
      `SELECT ${idCol} FROM ${refTable} WHERE ${nameCol} = $1`,
      [item]
    );
    if (!rows.length) {
      console.warn(`Skipping unknown ${refTable} value: "${item}"`);
      continue;
    }
    const itemId = rows[0][idCol];
    await client.query(
      `INSERT INTO ${linkTable} (park_id, ${idCol})
       VALUES ($1, $2)
       ON CONFLICT DO NOTHING`,
      [parkId, itemId]
    );
  }
}

async function insertPark(park) {
  const client = await pool.connect();
  try {
    await client.query('BEGIN');

    // 1. Skip if already exists
    const { rows: existing } = await client.query(
      'SELECT park_id FROM parks WHERE park_name = $1',
      [park.park_name]
    );
    if (existing.length) {
      console.log(`Park "${park.park_name}" already exists (ID: ${existing[0].park_id}).`);
      await client.query('ROLLBACK');
      return;
    }

    // 2. Insert into parks
    const result = await client.query(
      `INSERT INTO parks (
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
         $1, $2, $3, $4, $5,
         $6, $7, $8, $9, $10,
         $11, $12, $13,
         ST_SetSRID(
           ST_MakePoint($13::double precision, $12::double precision),
           4326
         )::geography,
         $14, $15, $16, $17,
         $18, $19, $20, $21, $22,
         $23, $24, $25, $26
       )
       RETURNING park_id`,
      [
        park.park_name,               // $1
        park.park_address,            // $2
        park.park_state,              // $3
        park.park_region,             // $4
        park.park_level,              // $5
        park.park_type,               // $6
        park.park_description,        // $7
        park.phone_number,            // $8
        park.park_size,               // $9
        park.park_min_elevation,      // $10
        park.park_max_elevation,      // $11
        park.park_latitude,           // $12
        park.park_longitude,          // $13
        park.park_time_zone,          // $14
        park.park_entry_fees || 0,    // $15
        park.park_parking_fees || 0,  // $16
        park.park_average_rating,     // $17
        park.park_number_of_reviews,  // $18
        park.park_drone_permits,      // $19
        park.park_fishing_permits,    // $20
        park.park_hunting_permits,    // $21
        park.park_pet_policy,         // $22
        park.park_backcountry_permits,// $23
        parseFloat(park.park_other_fees) || 0, // $24
        park.park_photo_url,          // $25
        park.park_agency              // $26
      ]
    );

    const newParkId = result.rows[0].park_id;

    // 3. Insert related many-to-many links
    await insertLinkTable(client, 'activities', 'park_activities', 'activity_name', 'activity_id', newParkId, park.park_activities);
    await insertLinkTable(client, 'facilities', 'park_facilities', 'facility_name', 'facility_id', newParkId, park.park_facilities);
    await insertLinkTable(client, 'features', 'park_features', 'feature_name', 'feature_id', newParkId, park.park_features);
    await insertLinkTable(client, 'accessibility', 'park_accessibility', 'accessibility_name', 'accessibility_id', newParkId, park.park_accessibility);
    await insertLinkTable(client, 'trail_types', 'park_trail_types', 'trail_type_name', 'trail_type_id', newParkId, park.park_trails);
    await insertLinkTable(client, 'camp_types', 'park_camp_types', 'camp_type_name', 'camp_type_id', newParkId, park.park_campsites);

    await client.query('COMMIT');
    console.log(`Inserted park "${park.park_name}" (ID: ${newParkId}).`);
  } catch (err) {
    await client.query('ROLLBACK');
    console.error(`Error on "${park.park_name}":`, err.message);
  } finally {
    client.release();
  }
}

(async function loadParks() {
  for (const park of parks) {
    await insertPark(park);
  }
  await pool.end();
})();
