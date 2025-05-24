SELECT
  usertype,
  CONCAT(start_station_name, " to ", end_station_name) AS trip,
  COUNT(*) AS num_trips,
  ROUND(AVG(CAST(tripduration AS int64)/60),2) AS duration --Converte trip duration para int64 e divide por 60 com a média arredondanda para 2 casas decimais
FROM 
  `bigquery-public-data.new_york.citibike_trips`
GROUP BY
  start_station_name, end_station_name, usertype
ORDER BY
  num_trips DESC
LIMIT 10