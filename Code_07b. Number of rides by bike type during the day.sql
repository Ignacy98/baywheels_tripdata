-- Number of rides grouped by bike type during the day
SELECT EXTRACT(HOUR FROM started_at) AS hour,
	   rideable_type AS bike_type,
       COUNT(*) AS num_of_rides
FROM baywheels_tripdata_2022
GROUP BY hour, rideable_type
ORDER BY hour, rideable_type;