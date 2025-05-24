SELECT
  stn,
  date,
  IF(temp=9999.9,
    NULL,
    temp) AS Temperature, -- SE TEMP for 9999.9 coloque NULL se não TEMP
  IF(wdsp="999.9",
    NULL,
    CAST(wdsp AS FLOAT64)) AS Wind_speed, --SE WDSP for "999.9" (Coluna em STRING) coloque NULL se não converta para FLOAT64
  IF(prcp=99.99,
    0,
    prcp) AS precipitation -- SE PRCP for 99.99 coloque 0 se não PRCP
FROM
`bigquery-public-data.noaa_gsod.gsod2020`
WHERE
  stn = "725030"
  OR stn = "744860"
ORDER BY
  date DESC,
  stn ASC;