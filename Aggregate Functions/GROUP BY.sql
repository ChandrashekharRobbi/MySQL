-- GROUP BY
-- it aggregates and summarizes the data into single identical rows
SELECT author_lname FROM BOOKS GROUP BY author_lname;
-- Here each name has there own specific group
-- Lets count how much book each group contains
SELECT author_lname, COUNT(*) FROM BOOKS GROUP BY author_lname;

-- Sort according to books
SELECT author_lname, COUNT(*) AS books_written 
FROM BOOKS GROUP BY author_lname ORDER BY books_written;

-- Now lets start by using released Year
SELECT released_year FROM books GROUP BY released_year;

-- Group by and order by
SELECT released_year, COUNT(*) AS count_of_books
FROM books GROUP BY released_year ORDER BY count_of_books DESC;