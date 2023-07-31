-- TV Series Challenge #1

# select title and rating

SELECT title, rating FROM series
INNER JOIN reviews ON series.id = reviews.series_id;