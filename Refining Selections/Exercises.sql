-- Exercise

-- Select titles that contains 'stories'
SELECT title FROM BOOKS WHERE title LIKE '%stories%';

/*Find The Longest Book
Print Out the Title and Page Count*/
SELECT title, pages FROM BOOKS ORDER BY pages DESC LIMIT 1;

/* Print a summary containing the title and
year, for the 3 most recent books */
SELECT CONCAT(title,'-', released_year) AS summary FROM books 
ORDER BY released_year DESC LIMIT 3;

/* That contains space */
SELECT title, author_lname FROM BOOKS WHERE author_lname LIKE '% %';

-- lowest stock quantity
SELECT title, released_year, stock_quantity FROM BOOKS ORDER BY stock_quantity, released_year DESC LIMIT 4;

-- first by author_lname and then title
SELECT 
    title, author_lname
FROM
    BOOKS
ORDER BY author_lname , title;

-- custom text sort by author lname
SELECT CONCAT(
				"MY FAVOURITE AUTHOR IS ",
				UPPER(author_fname),
				" ",
				UPPER(author_lname),"!"
            ) AS yell FROM BOOKS ORDER BY author_lname;
            
-- OR
SELECT UPPER(
			CONCAT(
					"My Favourite Author is ",
                    author_fname,
                    " ",
                    author_lname,
                    "!")
				   ) AS yell 
	   FROM BOOKS ORDER BY author_lname;