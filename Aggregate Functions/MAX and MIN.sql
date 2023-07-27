-- MIN and MAX
SELECT MIN(released_year) AS Old_released FROM BOOKS;
SELECT MAX(released_year) AS new_released FROM BOOKS;
-- also find out more columns
SELECT min(released_year) AS old_released
, max(pages) AS max_pages FROM BOOKS;

-- What is the title of the longest books?
/* Directly we cannot take as it will be using aggregate
   function with normal column and we cannot do that in one line
   so we have to understand subqueries
*/
-- we will see this in the subqueries part