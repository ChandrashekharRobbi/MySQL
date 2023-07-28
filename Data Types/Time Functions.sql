-- Time Functions
-- HOUR()
SELECT birthtime, HOUR(birthtime) FROM PEOPLE;
-- MINUTE()
SELECT birthtime, MINUTE(birthtime) FROM PEOPLE;
-- second()
SELECT birthtime, SECOND(birthtime) FROM PEOPLE;
-- Extract DATE from Timestamp()
SELECT birthdt , DATE(birthdt) FROM PEOPLE;
-- Extract TIME from Timestamp()
SELECT birthdt , TIME(birthdt) FROM PEOPLE;
