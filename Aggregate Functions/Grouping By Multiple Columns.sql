SELECT * FROM BOOKS;
-- Grouping By Multiple Columns
SELECT author_fname, author_lname , COUNT(*) 
FROM BOOKS GROUP BY author_lname, author_fname;
-- Here we have GROUP BY on the basis of 2 factors

-- we can also do similar thing by using CONCAT()
SELECT CONCAT(author_fname, ' ', author_lname) AS Name
,Count(*) AS count 
FROM BOOKS GROUP BY Name;