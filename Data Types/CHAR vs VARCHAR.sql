-- CHAR vs VARCHAR
/* CHAR has fixed length
   Let's say CHAR(4) and we insert 'Y' then it will append 3 white spaces
   to end to make it 4 fixed length
   while VARCHAR just limit the maximum it doesn't add white spaces in it
*/
CREATE table Country (Name VARCHAR(8));
CREATE table Country1 (Name CHAR(8));
-- Insert values into Country
INSERT INTO Country VALUES ('India'),('Japan');
SELECT * FROM Country;

-- Insert Values into States
INSERT INTO Country1 VALUES ('India'),('Japan');
SELECT * FROM Country1;
-- it adds extra space to end

DROP TABLE Country;
DROP TABLE Country1;