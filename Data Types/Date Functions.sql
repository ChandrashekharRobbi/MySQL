-- Date Functions
-- DAY() will extract date from the DATE
SELECT birthdate, DAY(birthdate) FROM people;
-- DAYOFWEEK() will tell which day it will be
-- by using numbers 1 = Sunday , 2 = Monday and so on till 7
SELECT birthdate, DAY(birthdate), DAYOFWEEK(birthdate) FROM PEOPLE;
-- DAYOFYEAR() will tell which day of the year it is from 1 to 366
SELECT birthdate, DAY(birthdate), DAYOFWEEK(birthdate), DAYOFYEAR(birthdate) FROM PEOPLE;
-- MONTHNAME() will give us the name of the month
SELECT birthdate, DAY(birthdate), DAYOFWEEK(birthdate), DAYOFYEAR(birthdate) , MONTHNAME(birthdate) FROM PEOPLE;
-- YEAR() will give us which week it was
SELECT birthdate, YEAR(birthdate) FROM people;