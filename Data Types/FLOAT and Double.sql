-- FLOAT and Double
CREATE TABLE number(X FLOAT, y double);
INSERT INTO number VALUES(1.123, 1.123);
SELECT * FROM number;
-- the main issue is precision
-- float after 7 digits decimal will have very lowe precision
-- FLOAR ~7 digits
-- DOUBLE ~15 digits
-- Float will loose precision now
INSERT INTO number VALUES(1.12345678, 1.12345678);

SELECT * FROM NUMBER;
-- DOUBLE will loose precision now
INSERT INTO number VALUES(1.12345678, 1.123456789101112131415);

SELECT * FROM NUMBER;