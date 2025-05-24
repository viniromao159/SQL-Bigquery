SELECT
  summary.region,
  CAST(SUM(edu.value) AS int64) AS secondary_edu_population -- Somandado todos os valores de cada região na coluna 
FROM
  `bigquery-public-data.world_bank_intl_education.international_education` AS edu
INNER JOIN 
  `bigquery-public-data.world_bank_intl_education.country_summary` AS summary
ON edu.country_code = summary.country_code
  WHERE summary.region IS NOT NULL -- Nulos não contam
  AND edu.indicator_name = 'Population of the official age for secondary education, both sexes (number)'
  AND edu.year = 2015
GROUP BY summary.region
ORDER BY secondary_edu_population DESC;