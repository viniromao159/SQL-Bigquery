SELECT
  station_id,
  num_bikes_available,
  (SELECT AVG(num_bikes_available) FROM `bigquery-public-data.new_york.citibike_stations`) AS avg_num_bikes_available,
  num_bikes_available - (SELECT AVG(num_bikes_available) FROM `bigquery-public-data.new_york.citibike_stations`) AS difference_from_avg
FROM `bigquery-public-data.new_york.citibike_stations`
ORDER BY difference_from_avg DESC; 