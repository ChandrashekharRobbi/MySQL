-- Exercise
SELECT * FROM BOOKS;
-- Q1) Print the number of books in the database
SELECT COUNT(pages) FROM BOOKS;
-- Q2) Print out how many books were released in each year
SELECT released_year, COUNT(*) FROM BOOKS GROUP BY released_year;
-- Q3) Print out the total number of books in stock
SELECT SUM(stock_quantity) FROM BOOKS;
-- Q4) Find the average released_year for each author
SELECT
	CONCAT(author_fname, ' ', author_lname) AS Name,
    AVG(released_year)
FROM BOOKS GROUP BY Name;
-- Q5) Find the full name of the author who wrote the longest book
SELECT 
	CONCAT(author_fname, ' ', author_lname) AS Name
FROM BOOKS WHERE pages = (SELECT MAX(pages) FROM BOOKS);
-- Q6) Make that happen
SELECT 
	released_year AS year,
    Count(*) AS '# books',
    AVG(pages) AS 'avg pages'
FROM BOOKS GROUP BY released_year order by released_year;