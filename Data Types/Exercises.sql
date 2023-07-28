-- Exercises
CREATE TABLE inventory(
item_name VARCHAR(50),
price DECIMAL(9,2),
QUANTITY smallint
);
-- current time
SELECT CURTIME();
-- CURRENT DATE
SELECT CURDATE();
-- DAY OF THE WEEK
SELECT DAYOFWEEK(NOW());
-- get day of week name
SELECT DATE_FORMAT(NOW(),'%a');
-- print in the format mm/dd/yyyy
SELECT DATE_FORMAT(NOW(), '%m/%d/%Y');
-- print in the format month 2nd at hour:minute
SELECT DATE_FORMAT(NOW(), '%M %D at %H:%i');
-- create a twitter table
CREATE TABLE TWEETS(
Content VARCHAR(180),
Username VARCHAR(20) UNIQUE,
created_at TIMESTAMP DEFAULT current_timestamp);
INSERT INTO TWEETS (content,Username) VALUES
(
'just improve little by little day by day bro you will do it!!:)',
'RobbiChandra20'
);

SELECT * FROM TWEETS;