-- TV Series Challenge #5

select genre,ROUND(AVG(rating), 2) as avg_rating from series 
INNER JOIN reviews ON
reviews.series_id = series.id
GROUP BY genre;