SELECT
  p.park_id,
  p.park_name,
  STRING_AGG(DISTINCT tt.trail_type_name, ', ') AS trail_types,
  STRING_AGG(DISTINCT ct.camp_type_name, ', ') AS camp_types,
  STRING_AGG(DISTINCT a.activity_name, ', ') AS activities,
  STRING_AGG(DISTINCT ac.accessibility_name, ', ') AS accessibility,
  STRING_AGG(DISTINCT f.facility_name, ', ') AS facilities,
  STRING_AGG(DISTINCT fe.feature_name, ', ') AS features
FROM parks p
LEFT JOIN park_trail_types ptt ON p.park_id = ptt.park_id
LEFT JOIN trail_types tt ON ptt.trail_type_id = tt.trail_type_id
LEFT JOIN park_camp_types pct ON p.park_id = pct.park_id
LEFT JOIN camp_types ct ON pct.camp_type_id = ct.camp_type_id
LEFT JOIN park_activities pa ON p.park_id = pa.park_id
LEFT JOIN activities a ON pa.activity_id = a.activity_id
LEFT JOIN park_accessibility pac ON p.park_id = pac.park_id
LEFT JOIN accessibility ac ON pac.accessibility_id = ac.accessibility_id
LEFT JOIN park_facilities pf ON p.park_id = pf.park_id
LEFT JOIN facilities f ON pf.facility_id = f.facility_id
LEFT JOIN park_features pfe ON p.park_id = pfe.park_id
LEFT JOIN features fe ON pfe.feature_id = fe.feature_id
GROUP BY p.park_id, p.park_name
ORDER BY p.park_name;
