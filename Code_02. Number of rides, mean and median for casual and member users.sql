-- Member vs casual user: ride frequency, mean and median ride time
SELECT member_casual,
	   COUNT(*) AS num_of_rides,
       AVG(EXTRACT(EPOCH FROM ride_duration))/60 AS avg_ride_time_min,
       percentile_disc(0.5) WITHIN GROUP (ORDER BY ride_duration) AS median_ride_time
FROM baywheels_tripdata_2022
GROUP BY member_casual;       