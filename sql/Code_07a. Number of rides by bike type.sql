-- Number of rides grouped by bike type for member and casual users
SELECT rideable_type AS bike_type,
	   member_casual AS user_type,
       COUNT(*) AS num_of_rides
FROM baywheels_tripdata_2022
GROUP BY rideable_type, member_casual
ORDER BY rideable_type, member_casual;