-- Named Constraints
CREATE TABLE USERS(
	NAME VARCHAR(100),
    AGE INT,
    CONSTRAINT age_over_18 CHECK(AGE > 18)
);

INSERT INTO USERS (name, age) VALUES ('John', 21);

INSERT INTO USERS (name, age) VALUES ('John', 1);
-- Error Code: 3819. Check constraint 'age_over_18' is violated.


SELECT * FROM USERS;


## SAME FOR PALINDROME
CREATE TABLE PALINDROME(
	word VARCHAR(100),
    CONSTRAINT word_is_pal CHECK(REVERSE(WORD) = word)
);

INSERT INTO PALINDROME (word) VALUES ('kimmik');

INSERT INTO PALINDROME (word) VALUES ('kimmikA');
-- Error Code: 3819. Check constraint 'word_is_pal' is violated.


SELECT * FROM PALINDROME;