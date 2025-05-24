WITH trip_duration_1hr AS(
  SELECT *
  FROM `bigquery-public-data.new_york.citibike_trips`
  WHERE tripduration >= 3600
)

SELECT *
FROM trip_duration_1hr