-- Number of rides for member and casual users aggregated by season
SELECT CASE WHEN EXTRACT(MONTH FROM started_at) IN (9,10,11) THEN 'fall'
			WHEN EXTRACT(MONTH FROM started_at) IN (12,1,2) THEN 'winter'
            WHEN EXTRACT(MONTH FROM started_at) IN (3,4,5) THEN 'spring'
            ELSE 'summer' END AS season,
	   member_casual,
       COUNT(*) AS num-of_rides
FROM baywheels_tripdata_2022
GROUP BY season, member_casual
ORDER BY season, member_casual;