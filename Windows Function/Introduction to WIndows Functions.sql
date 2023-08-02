-- Introduction to WIndows Functions
/*
	Window Functions perform aggregate operations on groups
    of rows, but they produce a result FOR EACH ROW.
*/

SELECT * FROM EMPLOYEES;

-- GROUP BY RESULTS
SELECT department , 
       AVG(salary) 
FROM EMPLOYEES 
GROUP BY department;

-- Windows Function results
SELECT emp_no,department,
       AVG(salary) OVER(PARTITION BY department) AS avg_dept
FROM EMPLOYEES;



