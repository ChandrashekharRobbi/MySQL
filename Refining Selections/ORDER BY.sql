USE learning;

SELECT * FROM BOOKS;

-- OrderBy always has to end after select STATEMENT
SELECT title, author_fname, author_lname FROM BOOKS ORDER BY author_lname;
-- in the above results the order are arrandged according to author_lname
-- Ascending by Default
-- But we can change that DESC
SELECT title, author_fname, author_lname FROM BOOKS order by author_lname DESC;
-- OR WE CAN ALSO TAKES AS AUTHOR_LNAME
SELECT title, author_fname, author_lname FROM BOOKS order by author_fname;
-- in the above statement the NULL values come to the top as it is ascending
DESC books;
-- we can also do for NUMBERS
SELECT title,pages,released_year from books order by pages;
SELECT title,pages,released_year from books order by released_year;

