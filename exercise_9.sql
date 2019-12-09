#1 List all movies and their combined sales in millions of dollars ✓
SELECT m.*, SUM(b.domestic_sales + b.international_sales)/1000000 as combined_sales_in_millions FROM movies m
INNER JOIN boxoffice b
ON m.id = b.movie_id
GROUP BY id

#2 List all movies and their ratings in percent ✓
SELECT m.*, b.rating * 10 FROM movies m
INNER JOIN boxoffice b
ON m.id = b.movie_id;

#3 List all movies that were released on even number years ✓
SELECT m.* FROM movies m
WHERE year %2 = 0
