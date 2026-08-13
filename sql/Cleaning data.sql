-- Create a table to hold the data
DROP TABLE IF EXISTS baywheels_tripdata_2022;

CREATE TABLE baywheels_tripdata_2022 (
    ride_id varchar,
    rideable_type varchar,
    started_at timestamp,
    ended_at timestamp,
    start_station_name varchar,
    start_station_id varchar,
    end_station_name varchar,
    end_station_id varchar,
    start_lat double precision,
    start_lng double precision,
    end_lat double precision,
    end_lng double precision,
    member_casual varchar
);

-- Import data from CSV into the table (replace 'your_file_path' with the actual path)
COPY baywheels_tripdata_2022 FROM './baywheels_tripdata_2022.csv' DELIMITER ',' CSV HEADER;

-- Replace docked_bike values with classic_bike
UPDATE baywheels_tripdata_2022
SET rideable_type = 'classic_bike'
WHERE rideable_type = 'docked_bike';

-- Add two new columns to our table
ALTER TABLE baywheels_tripdata_2022
ADD COLUMN ride_duration interval;
ALTER TABLE baywheels_tripdata_2022
ADD COLUMN day_of_week varchar;

-- Compute data about trip duration and day of the week
UPDATE baywheels_tripdata_2022
SET ride_duration = ended_at-started_at,
	day_of_week = DAYNAME(started_at)::varchar;
	
-- Remove outlying values based on trip duration
DELETE FROM baywheels_tripdata_2022
WHERE ride_duration < INTERVAL '1 minute'
	  OR ride_duration > INTERVAL '24 hours';

-- Remove null values in end_station_name for classic bike trips
DELETE FROM baywheels_tripdata_2022
WHERE end_station_name IS NULL
	  AND rideable_type = 'classic_bike';

-- Remove zero values of end coordinates
DELETE FROM baywheels_tripdata_2022
WHERE end_lat=0;

-- Query the modified data
SELECT COUNT(*)
FROM baywheels_tripdata_2022;