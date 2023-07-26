-- COUNT
SELECT COUNT(*) FROM BOOKS;
-- it means select rows from books
SELECT COUNT(author_fname) FROM BOOKS;
-- HOW MANY DISTINT?
SELECT COUNT(distinct author_fname) FROM BOOKS;

-- how many title contains 'the'
SELECT COUNT(*) AS no_of_titles FROM BOOKS WHERE title like '%the%';