

//lets say there are two tables .
 SELECT c.title, cat.category_name
FROM content c
JOIN category cat ON c.category_id = cat.id
WHERE cat.category_name = 'Documentaries'
  AND YEAR(c.release_date) = 2024
  AND c.rating > 8.0;

  
  
SELECT c.title, (c.rating + c.views_in_millions) AS success_score
FROM content c
JOIN category cat ON c.category_id = cat.id
WHERE (c.rating + c.views_in_millions) > 100;
 
