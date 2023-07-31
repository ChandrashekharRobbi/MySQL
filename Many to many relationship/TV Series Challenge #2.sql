-- TV Series Challenge #2

SELECT title, ROUND(AVG(rating), 2) AS average_rating FROM series
INNER JOIN reviews ON series.id = reviews.series_id
GROUP BY title
ORDER BY average_rating;