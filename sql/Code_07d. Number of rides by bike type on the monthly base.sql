-- Number of rides grouped by bike type on the monthly base
SELECT EXTRACT(MONTH FROM started_at) AS month,
	   rideable_type AS bike_type,
       COUNT(*) AS num_of_rides
FROM baywheels_tripdata_2022
GROUP BY month, bike_type
ORDER BY month, bike_type;