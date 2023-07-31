-- TV Series Challenge #7

# title, rating, reviewer
SELECT title FROM series;
SELECT rating FROM reviews;
SELECT CONCAT(first_name,' ', last_name) FROM reviewers;

SELECT 
    title,
    rating,
    CONCAT(first_name, ' ', last_name) AS full_name
FROM
    reviews INNER JOIN series ON reviews.series_id = series.id
	INNER JOIN
    reviewers ON reviews.reviewer_id = reviewers.id;