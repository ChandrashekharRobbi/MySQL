-- ROLL UP
-- ! It can only be used with GROUP BY

SELECT * FROM FULL_REVIEWS;

SELECT AVG(rating) FROM full_reviews; # it give table avg

SELECT title, 
	   AVG(rating) 
FROM full_reviews GROUP BY title;

-- ROLL UP WILL GET ALL TABLE VALUE ALONG WITH GROUP BY
SELECT title,
	   AVG(rating)
FROM full_reviews GROUP BY title WITH ROLLUP;

SELECT title,
	   COUNT(rating)
FROM full_reviews GROUP BY title WITH ROLLUP;

-- it becomes complex when it comes multiple columns
SELECT title,
       genre,
       AVG(rating)
FROM full_reviews GROUP BY title, genre WITH ROLLUP;
-- it shows avg of each group by and then of entire title 
SELECT title,
       genre,
       released_year,
       AVG(rating)
FROM full_reviews GROUP BY title, genre,released_year WITH ROLLUP;