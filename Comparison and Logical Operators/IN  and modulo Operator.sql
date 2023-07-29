-- IN Operator
SELECT title, author_lname FROM BOOKS 
WHERE author_lname IN ('Lahiri', 'Gaiman');

SELECT title, author_lname FROM BOOKS 
WHERE author_lname NOT IN ('Lahiri', 'Gaiman');

-- Modulo
SELECT * FROM BOOKS 
WHERE 
released_year >= 2000 AND released_year % 2 != 0;