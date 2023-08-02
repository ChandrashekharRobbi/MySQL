-- OVER()

-- it just distributes the aggregate functions to each row
SELECT AVG(salary) FROM EMPLOYEES; -- Normal way

SELECT AVG(salary) OVER() FROM EMPLOYEES; -- for each row

SELECT emp_no, department, salary,AVG(salary) OVER()
from employees;

SELECT emp_no, 
       department, 
       salary,
       MIN(salary) OVER(), 
       MAX(salary) OVER()
from employees;