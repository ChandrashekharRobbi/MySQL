-- TV Series Challenge #3

SELECT first_name , last_name FROM reviewers;
desc reviewers;

SELECT rating FROM reviews;
desc reviews;

SELECT first_name, last_name , rating FROM reviews
INNER JOIN reviewers ON reviews.reviewer_id = reviewers.id;
