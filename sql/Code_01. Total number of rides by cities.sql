-- Total number of rides by cities
SELECT CASE WHEN (start_lat BETWEEN 37.70 AND 37.81) AND (start_lng BETWEEN -122.52 AND -122.35) THEN 'San Francisco'
			WHEN (start_lat BETWEEN 37.12 AND 37.47) AND (start_lng BETWEEN -122.05 AND -121.58) THEN 'San Jose'
            ELSE 'East Bay' END AS city,
	   COUNT(*) AS total_rides
FROM baywheels_tripdata_2022
GROUP BY city;