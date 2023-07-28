-- DATE
-- FORMAT --> 
/* DATE: 'YYYY-MM-DD'
   TIME: 'HH:MM:SS' OR 'HHH:MM:SS'
   DATETIME: 'YYYY-MM-DD HH:MM:SS'
*/
CREATE TABLE people (
	name VARCHAR(100),
    Birthdate DATE,
    BirthTime TIME,
    BirthDT DATETIME
);

desc people;
INSERT INTO people (NAME, BIRTHDATE, BIRTHTIME, BIRTHDT) VALUES
('Chandu', '2002-10-20','06:00:00','2002-10-20 06:00:00'),
('Robbi' , '2020-10-30','21:23:22','2020-10-30 21:32:22'),
('Chandrashekhar' , '2021-10-30','20:23:22','2021-10-30 20:32:22');

SELECT * FROM people;