-- LIKE
/* we can use LIKE for better searching 
   it has a wildcard character like 
   '%': which means 0 or more characters
   '_' : which means exaclty one characters
*/
SELECT title, author_fname,released_year FROM BOOKS 
WHERE author_fname LIKE '%da%';

-- it means before and after `da` it has to present 0 or more charcters

SELECT title, author_fname,released_year FROM BOOKS 
WHERE author_fname LIKE 'da%';

-- it means after `da` it has to present 0 or more charcters

-- check if any title has colon in it
SELECT * FROM BOOKS WHERE title LIKE '%:%';

-- check the authorname which have exaclty 4 charcters
SELECT * FROM BOOKS WHERE author_fname LIKE '____';