-- Exercises whoa!!!
-- create table for students and papers
CREATE TABLE STUDENTS(
	id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL
);

CREATE TABLE PAPERS(
	title VARCHAR(50) NOT NULL,
    grade INT NOT NULL,
    student_id INT ,
    FOREIGN KEY (student_id) REFERENCES students(id) ON DELETE CASCADE
);

INSERT INTO students (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');
 
INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

SELECT first_name, title, grade FROM STUDENTS
JOIN PAPERS ON STUDENTS.id = PAPERS.student_id 
ORDER BY grade DESC;

-- LEFT JOIN
SELECT first_name, title, grade FROM STUDENTS
LEFT JOIN papers ON students.id = papers.student_id;

-- Handle missing data
SELECT first_name, IFNULL(title, 'MISSING'), IFNULL(grade, 0) FROM STUDENTS
LEFT JOIN papers ON students.id = papers.student_id;

-- average groupy 
SELECT first_name , IFNULL(AVG(grade), 0) AS average FROM STUDENTS
LEFT JOIN papers ON students.id = papers.student_id
GROUP BY first_name
ORDER BY average DESC;

-- CASE condition
SELECT first_name , IFNULL(AVG(grade), 0) AS average,
	CASE
		WHEN (AVG(grade) >= 75) THEN 'PASSING'
        ELSE 'FAILING'
    END as passing_status
FROM STUDENTS
LEFT JOIN papers ON students.id = papers.student_id
GROUP BY first_name
ORDER BY average DESC;