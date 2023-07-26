-- GROUP BY
-- it aggregates and summarizes the data into single identical rows
SELECT author_lname FROM BOOKS GROUP BY author_lname;
-- Here each name has there own specific group
-- Lets count how much book each group contains
SELECT author_lname, COUNT(*) FROM BOOKS GROUP BY author_lname;
