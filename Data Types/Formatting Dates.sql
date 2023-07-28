-- Formatting Dates
-- we have to fetch the data in suitable format
-- MONTH DAY YEAR
SELECT CONCAT
		(
			MONTHNAME(BIRTHDATE), 
            ' ',
			DAY(BIRTHDATE), 
            ' ',
			YEAR(BIRTHDATE) 
        ) AS 'MM DD YYY'
FROM PEOPLE;

-- instead of this long value we can insert it by using date format function
-- we can use DATE FORMAT() function
-- DATE_FORMAT(date, format)
-- %b will return abbrevated month name
SELECT BIRTHDATE, DATE_FORMAT(BIRTHDATE, '%b') AS abbr FROM PEOPLE;
-- %a will return the weekname
SELECT BIRTHDATE, DATE_FORMAT(BIRTHDATE, '%a %b') AS abbr FROM PEOPLE;
-- now lets replace that concat statement with dateformat function
SELECT BIRTHDATE, DATE_FORMAT(BIRTHDATE, '%M %e %Y') FROM PEOPLE;