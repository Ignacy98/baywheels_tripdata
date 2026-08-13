-- Number of rides and average ride time for member and casual users on the monthly based
SELECT EXTRACT(MONTH FROM started_at) AS month,
	   member_casual,
       COUNT(*) AS num_of_rides,
       AVG(EXTRACT(EPOCH FROM ride_duration))/60 avg_ride_time_min
FROM baywheels_tripdata_2022
GROUP BY month, member_casual
ORDER BY month, member_casual;