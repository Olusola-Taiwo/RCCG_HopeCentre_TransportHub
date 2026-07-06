USE CATALOG rccg_hopecentre_transporthub;
USE SCHEMA core;

INSERT INTO retention_log
SELECT current_timestamp() AS run_time,
       COUNT(*) AS deleted_rows
FROM bookings
WHERE created_at < current_timestamp() - INTERVAL 30 DAYS;

DELETE FROM bookings
WHERE created_at < current_timestamp() - INTERVAL 30 DAYS;
