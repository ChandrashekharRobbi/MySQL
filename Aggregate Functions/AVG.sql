-- AVG
-- Calculate average released year across all books
SELECT AVG(released_year) FROM BOOKS;
-- Calculate average pages across all books
SELECT AVG(pages) FROM BOOKS;
-- Calculate average stock_quantity across all books
SELECT AVG(stock_quantity) FROM BOOKS;
-- Calculate average stock_quantity for books released in the same year
SELECT 
	released_year,
    AVG(stock_quantity) AS avg_stock_quantity
FROM BOOKS 
	GROUP BY(released_year) 
    ORDER BY released_year;
-- Calculate average stock_quantity for books 
-- released in the same year and count too
SELECT 
	released_year,
    AVG(stock_quantity) AS avg_stock_quantity,
    COUNT(*) 
FROM BOOKS 
	GROUP BY(released_year) 
    ORDER BY released_year;