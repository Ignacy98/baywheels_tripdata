-- Number of rides by bike type on weekdays & weekend/holidays
SELECT rideable_type AS bike_type,
	   member_casual AS user_type,
       SUM(CASE WHEN day_of_week IN ('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday')
	   		AND DATE_TRUNC('day', started_at) NOT IN ('2022-01-01', '2022-01-17', '2022-02-21', '2022-05-30', '2022-07-04', '2022-09-05', '2022-11-11', '2022-11-24', '2022-11-25', '2022-12-25', '2022-12-26') THEN 1 ELSE 0 END) AS rides_weekdays,
	   SUM(CASE WHEN day_of_week IN ('Saturday', 'Sunday')
	   		OR DATE_TRUNC('day', started_at) IN ('2022-01-01', '2022-01-17', '2022-02-21', '2022-05-30', '2022-07-04', '2022-09-05', '2022-11-11', '2022-11-24', '2022-11-25', '2022-12-25', '2022-12-26') THEN 1 ELSE 0 END) AS rides_weekend_holidays	
FROM baywheels_tripdata_2022
GROUP BY bike_type, user_type
ORDER BY bike_type, user_type;