SELECT DISTINCT TITLE FROM BOOKS;
# Ways to select the distinct multiple columns 
# Method 1 using concat operation
SELECT DISTINCT CONCAT(author_fname,' ', author_lname) AS Distinct_name FROM BOOKS;
# MEthod 2 using clean only DISTINCT keyword
SELECT DISTINCT author_fname, author_lname FROM BOOKS;
