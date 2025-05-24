SELECT
  ROUND(AVG(Temperature),3) AS AVG_Temperature -- ROUND ajusta as casas decimais da função AVG
FROM
`aerobic-gantry-450916-f4.demos.nyc_weather`
WHERE
  date BETWEEN '2020-06-01' AND '2020-06-30'