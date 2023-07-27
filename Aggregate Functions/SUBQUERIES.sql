-- SUBQUERIES
-- What will be the title of the longest pages book?
-- APPROACH 1 (Not gives directly)
SELECT title, pages FROM BOOKS ORDER BY pages DESC LIMIT 1;
-- APPROACH 2 (Subqueries 🔥)
SELECT title, pages FROM BOOKS 
WHERE pages = (SELECT MAX(PAGES) FROM BOOKS);
-- Working Right 😀 But there is a catch 👀
-- it will be ok if we know there is only one book what if it has 
-- multiple books of same max page?
-- it will display both of them
SELECT title, pages FROM BOOKS 
WHERE pages = (SELECT MAX(PAGES) FROM BOOKS);