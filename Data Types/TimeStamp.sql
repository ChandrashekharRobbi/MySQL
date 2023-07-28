-- TimeStamp
-- it takes less storage
/*  The DATETIME type is used for values that contain both date and time parts. 
	MySQL retrieves and displays DATETIME values
	'format. The supported range is '1000-01-01 to '9999-12-31 23:59:59'.
	The TIMESTAMP data type is used for values that contain both date and time parts. 
	TIMESTAMP has a range of ' 1970-01-01 UTC to '2038-01-19 UTC.
*/
SELECT NOW();
SELECT TIMESTAMP(NOW());
-- more functions like
/* 
	1. TIMESTAMPDIFF()
    2. TIMESTAMPADD()
*/

-- lets create a new table explaining the TIMESTAMP
CREATE TABLE captions(
	name VARCHAR(100),
    created_at timestamp DEFAULT current_timestamp);
INSERT INTO captions (name)  VALUES 
('Just chilling broi'),
('East or west you are the best');

SELECT 
    *
FROM
    CAPTIONS;
-- ALSO LETS SEE ON UPDATE
CREATE TABLE captions2(
	Caption VARCHAR(100),
    created_at timestamp DEFAULT current_timestamp,
    updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP);
INSERT INTO captions2 (Caption)  VALUES 
('Just chilling broi');

SELECT * FROM CAPTIONS2;

UPDATE CAPTIONS2 SET Caption='Just chilling broi!!' WHERE created_at = '2023-07-28 16:16:51';

SELECT * FROM CAPTIONS2;

UPDATE CAPTIONS2 SET Caption='yOU ARE COOL!' WHERE created_at = '2023-07-28 16:16:51';

SELECT * FROM CAPTIONS2;
