-- SUBQUERIES
-- What will be the title of the longest pages book?
-- APPROACH 1 (Not gives directly)
SELECT title, pages FROM BOOKS ORDER BY pages DESC LIMIT 1;
-- APPROACH 2 (Subqueries 🔥)
SELECT title, pages FROM BOOKS 
WHERE pages = (SELECT MAX(PAGES) FROM BOOKS);