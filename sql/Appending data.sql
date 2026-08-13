-- Create a table to store the appended data
DROP TABLE IF EXISTS baywheels_appended_tripdata_2022;

CREATE TABLE baywheels_appended_tripdata_2022 (
	ride_id varchar,
	rideable_type varchar,
	started_at text,
	ended_at text,
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

-- Insert data from each CSV file into the table
COPY baywheels_appended_tripdata_2022 FROM '202201-baywheels-tripdata.csv' DELIMITER ',' CSV HEADER;
COPY baywheels_appended_tripdata_2022 FROM '202202-baywheels-tripdata.csv' DELIMITER ',' CSV HEADER;
COPY baywheels_appended_tripdata_2022 FROM '202203-baywheels-tripdata.csv' DELIMITER ',' CSV HEADER;
COPY baywheels_appended_tripdata_2022 FROM '202204-baywheels-tripdata.csv' DELIMITER ',' CSV HEADER;
COPY baywheels_appended_tripdata_2022 FROM '202205-baywheels-tripdata.csv' DELIMITER ',' CSV HEADER;
COPY baywheels_appended_tripdata_2022 FROM '202206-baywheels-tripdata.csv' DELIMITER ',' CSV HEADER;
COPY baywheels_appended_tripdata_2022 FROM '202207-baywheels-tripdata.csv' DELIMITER ',' CSV HEADER;
COPY baywheels_appended_tripdata_2022 FROM '202208-baywheels-tripdata.csv' DELIMITER ',' CSV HEADER;
COPY baywheels_appended_tripdata_2022 FROM '202209-baywheels-tripdata.csv' DELIMITER ',' CSV HEADER;
COPY baywheels_appended_tripdata_2022 FROM '202210-baywheels-tripdata.csv' DELIMITER ',' CSV HEADER;
COPY baywheels_appended_tripdata_2022 FROM '202211-baywheeels-tripdata.csv' DELIMITER ',' CSV HEADER;
COPY baywheels_appended_tripdata_2022 FROM '202212-baywheels-tripdata.csv' DELIMITER ',' CSV HEADER;
-- Repeat the above line for all 12 files

-- Export the data to a new CSV file
COPY baywheels_appended_tripdata_2022 TO 'baywheels_tripdata_2022.csv' DELIMITER ',' CSV HEADER;