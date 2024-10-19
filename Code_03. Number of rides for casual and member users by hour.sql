-- Member vs casual user: ride frequency during the day
SELECT EXTRACT(HOUR FROM started_at) AS hour,
	   member_casual,
       COUNT(*) AS num_of_rides,
FROM baywheels_tripdata_2022
GROUP BY hour, member_casual
ORDER BY hour, member_casual;