-- TV Series Challenge #4

SELECT title AS un_reviewed_series from Series Left JOIN
 REVIEWS ON Reviews.reviewer_id = Series.id 
 WHERE rating IS NULL;