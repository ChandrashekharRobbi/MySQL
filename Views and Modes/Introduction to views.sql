-- Introduction to views
SELECT * FROM reviews 
JOIN series ON series.id = reviews.series_id
JOIN reviewers ON reviewers.id = reviews.reviewer_id;

# we can store the above result into a view
# which acts like a real table
# FORMAT
/*
	CREATE VIEW {view_name} AS {query}
*/
CREATE VIEW full_reviews AS 
SELECT title,released_year, genre, first_name, last_name FROM reviews 
JOIN series ON series.id = reviews.series_id
JOIN reviewers ON reviewers.id = reviews.reviewer_id;

-- now we have table name 'full_reviews' it is virtual table
show tables;

SELECT * from full_reviews;