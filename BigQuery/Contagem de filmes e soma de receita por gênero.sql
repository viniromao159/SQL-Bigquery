SELECT 
  Genre,
  COUNT(*) AS Total_movies,
  SUM(Revenue) AS Total_revenue

FROM `aerobic-gantry-450916-f4.movie_data.movies`

WHERE Revenue IS NOT NULL

GROUP BY Genre

ORDER BY Total_revenue DESC;
