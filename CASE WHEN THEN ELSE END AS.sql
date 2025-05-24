SELECT
CASE
  WHEN price = 0 THEN 'Zerado'
  WHEN price < 10000 THEN 'Barato'
  WHEN price < 15000 THEN 'Medio'
  ELSE 'Caro'
  END AS MarketPrice,
  COUNT(Price) AS Quantidade

FROM
  `aerobic-gantry-450916-f4.cars.car_info`

GROUP BY MarketPrice;
