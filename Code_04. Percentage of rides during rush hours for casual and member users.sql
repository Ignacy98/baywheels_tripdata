-- Number of rides occured during rush hours vs non-rush hours for member and casual users
SELECT member_casual,
	   SUM(CASE WHEN EXTRACT (HOUR FROM started_at) IN (8,9,17,18)
				AND day_of_week NOT IN ('Saturday', 'Sunday')
                AND DATE_TRUNC('day', started_at) NOT IN ('2022-01-01', '2022-01-17', '2022-02-21', '2022-05-30', '2022-07-04', '2022-09-05', '2022-11-11', '2022-11-24', '2022-11-25', '2022-12-25', '2022-12-26')
		   THEN 1 ELSE 0 END) AS num_of_rides_rush,
	   SUM(CASE WHEN EXTRACT (HOUR FROM started_at) NOT IN (8,9,17,18)
				OR day_of_week IN ('Saturday', 'Sunday')
                OR DATE_TRUNC('day', started_at) IN ('2022-01-01', '2022-01-17', '2022-02-21', '2022-05-30', '2022-07-04', '2022-09-05', '2022-11-11', '2022-11-24', '2022-11-25', '2022-12-25', '2022-12-26')
		   THEN 1 ELSE 0 END) AS num_of_rides_non_rush
FROM baywheels_tripdata_2022
GROUP BY member_casual;