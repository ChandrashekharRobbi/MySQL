-- Exercises
# SELECT ALL BOOKS BEFORE 1980 (NOT INCLUSIVE)
SELECT title, released_year FROM BOOKS WHERE RELEASED_YEAR < 1980;
# SELECT ALL BOOKS WRITTEN BY Eggers OR Chabon
SELECT title,author_lname, released_year FROM BOOKS 
WHERE author_lname IN ('Eggers', 'Chabon');
# SELECT ALL BOOKS WRITTEN BY LAHIRI PUBLISHED AFTER 2000
SELECT * FROM BOOKS 
WHERE author_lname = 'Lahiri' AND RELEASED_YEAR >= 2000;
# Select ALL BOOKS WHICH HAVE PAGE COUNT BETWEEN 100 AND 200
SELECT * FROM BOOKS WHERE pages BETWEEN 100 AND 200;
# Select all books where author lname starts with c or s
SELECT * FROM BOOKS WHERE AUTHOR_LNAME 
LIKE 'C%' OR AUTHOR_LNAME LIKE 'S%';
-- OR DIFFERENT METHOD
select title,author_lname FROM BOOKS
WHERE SUBSTR(AUTHOR_LNAME, 1 ,1) IN ('S', 'C');
# MATCH THE WAY
SELECT TITLE, AUTHOR_LNAME,
	CASE
		WHEN title LIKE '%stories%' THEN 'Short Stories'
        WHEN title = 'Just Kids' 
			 OR 
             title = 'A Heartbreaking Work of Staggering Genius' 
             THEN 'Memoir'
		ELSE 'Novel'
	END as TYPE
FROM BOOKS;
# MAKE THAT HAPPEN
SELECT author_fname, author_lname, 
	   CASE
			WHEN COUNT(*) <= 1 THEN CONCAT(COUNT(*),' book')
            WHEN COUNT(*) > 1 THEN CONCAT(COUNT(*),' books')
       END AS Count 
FROM BOOKS GROUP BY author_fname, author_lname;