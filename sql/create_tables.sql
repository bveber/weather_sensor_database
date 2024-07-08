CREATE EXTENSION IF NOT EXISTS timescaledb;

CREATE TABLE sensor_data (
    time TIMESTAMPTZ NOT NULL,
    sensor_id TEXT NOT NULL,
    temperature DOUBLE PRECISION,
    humidity DOUBLE PRECISION,
    PRIMARY KEY (time, sensor_id)
);

SELECT create_hypertable('sensor_data', 'time');

CREATE TABLE sensor_metadata (
    sensor_id TEXT PRIMARY KEY,
    location TEXT
);

CREATE TABLE sensor_calibration (
    time TIMESTAMPTZ NOT NULL,
    sensor_id TEXT PRIMARY KEY,
    temperature_offset DOUBLE PRECISION,
    humidity_offset DOUBLE PRECISION,
    description TEXT
);