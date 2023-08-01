-- More Modes

SELECT @@SESSION.SQL_MODE;

SET @@SESSION.SQL_MODE = 'ONLY_FULL_GROUP_BY';

SELECT title, AVG(rating) FROM reviews
JOIN Series ON series.id = reviews.series_id GROUP BY title;
# now we cannot select rating column as it is not included in Group by condition
# we will get error because of mode
SELECT title, rating FROM reviews
JOIN Series ON series.id = reviews.series_id GROUP BY title;

# if we set null
SET @@SESSION.SQL_MODE = '';

SELECT title, rating FROM reviews
JOIN Series ON series.id = reviews.series_id GROUP BY title;

-- NO_ZERO_IN_DATE 
/*
	2000-00-10 :- VALID
    0000-00-00 :- NOT VALID
*/
-- IF THERE IS A STRICT MODE 
-- ENABLED THEN THE EFFECT WILL BE DIFFERENT