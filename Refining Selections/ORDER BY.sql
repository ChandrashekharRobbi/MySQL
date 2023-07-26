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

-- we can also use shorthand for the order by based on the position of select column name
SELECT title, pages, released_year from books order by released_year;
/* here the column name are title, pages, released_year and we are doing order
   by based on released_year.
   We can also use the number as the reference
   title - 1
   pages - 2
   released_year - 3
   so insted using ORDER BY released_year we can use number of it 
*/
SELECT title, pages, released_year from books order by 3;
-- we can also do more than 1 column
-- which means do order of 1st and then 2nd and goes on
SELECT author_lname, released_year, pages from books ORDER BY author_lname;

SELECT author_lname, released_year, pages from books ORDER BY author_lname, released_year;

-- we can also do ascending to one and descending to another
SELECT author_lname, released_year, pages from books ORDER BY author_lname ASC, released_year DESC;

SELECT author_lname, released_year, pages from books ORDER BY author_lname DESC, released_year ASC;


-- we can also do order by for alias name
SELECT CONCAT(author_fname, ' ', author_lname) AS author FROM BOOKS ORDER BY author;


