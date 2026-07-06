CREATE CATALOG IF NOT EXISTS rccg_hopecentre_transporthub;
USE CATALOG rccg_hopecentre_transporthub;

CREATE SCHEMA IF NOT EXISTS core;
USE SCHEMA core;

CREATE TABLE IF NOT EXISTS bookings (
  booking_id STRING,
  consent BOOLEAN,
  location STRING,
  pickup_time STRING,
  phone STRING,
  comments STRING,
  driver STRING,
  checked_in BOOLEAN,
  created_at TIMESTAMP
);

CREATE TABLE IF NOT EXISTS driver_locations (
  driver_id STRING,
  latitude DOUBLE,
  longitude DOUBLE,
  updated_at TIMESTAMP
);

CREATE TABLE IF NOT EXISTS retention_log (
  run_time TIMESTAMP,
  deleted_rows BIGINT
);
