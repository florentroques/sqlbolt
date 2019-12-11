#1 Find the number of movies each director has directed ✓
SELECT director, COUNT(*) FROM movies GROUP BY director;

#2 Find the total domestic and international sales that can be attributed to each director
SELECT director, SUM(domestic_sales + international_sales) as total_sales
FROM movies m
INNER JOIN boxoffice b
ON m.id = b.movie_id
GROUP BY m.director;
