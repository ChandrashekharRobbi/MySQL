-- MIN and MAX With GROUP BY
-- Find the year where each author published there first book?📚
SELECT 
	author_fname, 
    author_lname, 
    MIN(released_year) 
FROM BOOKS group by author_lname, author_fname;
-- Find the year where each author published there recent book?
SELECT 
	author_fname, 
    author_lname, 
    MAX(released_year)
FROM BOOKS group by author_lname, author_fname;
-- Find the year where each author published there first and recent book?
SELECT 
	author_fname, 
    author_lname, 
    MIN(released_year) AS First_Book,
    MAX(released_year) AS Recent_Book
FROM BOOKS group by author_lname, author_fname;
-- Find the year where each author published 
-- there first and recent book as well as no of books published?
SELECT 
	author_fname, 
    author_lname, 
    COUNT(*) AS no_of_book_published,
    MIN(released_year) AS First_Book,
    MAX(released_year) AS Recent_Book
FROM BOOKS group by author_lname, author_fname;
-- Find the year where each author published 
-- there first and recent book as well as no of books published
-- and longest page count ?

SELECT 
	author_fname, 
    author_lname, 
    COUNT(*) AS no_of_book_published,
    MIN(released_year) AS First_Book,
    MAX(released_year) AS Recent_Book,
    MAX(pages) AS longest_page
FROM BOOKS group by author_lname, author_fname;