-- HAVING clause
SELECT * FROM full_reviews;

SHOW TABLES;
SELECT title, 
	   AVG(rating) ,
       COUNT(rating) AS rating_count
FROM full_reviews 
GROUP BY title HAVING COUNT(rating) >= 5;