-- Number of rides and average ride time during the week for member and casual users
SELECT day_of_week,
	   member_casual,
       COUNT(*) AS num_of_rides,
       AVG(EXTRACT(EPOCH FROM ride_duration))/60 avg_ride_time_min
FROM baywheels_tripdata_2022
GROUP BY day_of_week, member_casual
ORDER BY day_of_week, member_casual;