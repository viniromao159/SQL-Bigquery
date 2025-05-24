-- Qual é o nome da estação cujo start_station_id é 111? R: Park Lane , Hyde Park
SELECT DISTINCT
    start_station_name 
FROM 
    `bigquery-public-data.london_bicycles.cycle_hire`
WHERE
   start_station_id = 111;

--- Retorne todos os rental_ids, IDS de estações e nomes de estações de onde bike_id 1710 partiu.
SELECT
    rental_id, start_station_id, start_station_name
FROM 
    `bigquery-public-data.london_bicycles.cycle_hire`
WHERE
   bike_id = 1710;

-- Qual é o bike_model de bike_id 58782? R: CLASSIC
SELECT DISTINCT
    bike_model
FROM 
    `bigquery-public-data.london_bicycles.cycle_hire`
WHERE
   bike_id = 58782;