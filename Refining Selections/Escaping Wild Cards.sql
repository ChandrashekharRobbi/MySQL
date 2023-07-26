-- Escaping Wild Cards
/* what if we have to search '%' we can't do because of wildcards
   so we can use '\' which is also called backslash 
   and perform the operations
*/
SELECT * FROM BOOKS WHERE title LIKE '%\%%';
-- it means we have to check for percenatage sign in middle of anything between title
-- we can also search if we know exact positions
SELECT * FROM BOOKS WHERE title LIKE '__\%%';