-- FIRST_VALUE

SELECT emp_no,
       salary,
       department,
       FIRST_VALUE(emp_no) OVER(ORDER BY salary DESC)
FROM employees;

SELECT emp_no,
       salary,
       department,
       FIRST_VALUE(emp_no) OVER(ORDER BY salary DESC),
       FIRST_VALUE(emp_no) OVER(PARTITION BY department ORDER BY salary DESC)
FROM employees ORDER BY emp_no;

-- we can also do for last_value
SELECT emp_no,
       salary,
       department,
       LAST_VALUE(emp_no) OVER(ORDER BY salary),
       LAST_VALUE(emp_no) OVER(PARTITION BY department ORDER BY salary)
FROM employees ORDER BY emp_no;

-- Nth values
SELECT emp_no,
       salary,
       department,
       NTH_VALUE(emp_no, 2) OVER(ORDER BY salary DESC),
       NTH_VALUE(emp_no, 2) OVER(PARTITION BY department ORDER BY salary DESC)
FROM employees ORDER BY emp_no;