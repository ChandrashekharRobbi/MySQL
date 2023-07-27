-- SUM
SELECT SUM(pages) AS total_pages FROM BOOKS;

-- SUM + GroupBy
-- Sum all pages each author has written
SELECT 
	CONCAT(author_fname, ' ', author_lname) AS Name,
    SUM(pages) AS Total_pages_of_each_author
FROM BOOKS GROUP BY Name;

-- ‼️NOTE: SUM(ofString) is always equal to 0