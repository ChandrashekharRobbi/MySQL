-- AT - Adding Columns

ALTER table COMPANIES
ADD COLUMN CITY VARCHAR(25);
-- IT WILL SET NULL AS A DEFAULT VALUE

ALTER TABLE companies
ADD COLUMN employee_count INT NOT NULL;
-- now it will take DEFAULT value as 0

ALTER TABLE companies
ADD COLUMN employee_count2 INT NOT NULL DEFAULT 1;
-- it will now take 1 as DEFAULT value

SELECT * FROM COMPANIES;