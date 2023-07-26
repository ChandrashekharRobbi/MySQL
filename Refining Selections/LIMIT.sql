-- LIMIT
-- we can limit the number rows we get
SELECT * FROM BOOKS ORDER BY title LIMIT 5; -- WE GET TOP 5 TITLE BOOKS
SELECT title, released_year FROM BOOKS ORDER BY released_year LIMIT 5; -- TOP 5 BOOKS BY RELEASED YEAR

-- we can also set range LIMIT(A,B)
-- A = STARTING ROW; B = COUNT
SELECT title, released_year FROM BOOKS 
ORDER BY released_year DESC 
LIMIT 1,5; 
-- it means start after 1 and select 5 rows
SELECT title, released_year FROM BOOKS 
ORDER BY released_year DESC 
LIMIT 8,2; 
-- it means start after 8 and select 2 rows
-- what if we limit greater than we actually have??
SELECT title, released_year FROM BOOKS
order by released_year DESC
LIMIT 90;

-- we will not get any error
