-- LEAD and LAG

# gives previous value
SELECT emp_no,
       department,
       salary,
       LAG(salary) OVER(ORDER BY salary DESC)
FROM employees;

# gives next value corresponding to it
SELECT emp_no,
       department,
       salary,
       LEAD(salary) OVER(ORDER BY salary DESC)
FROM employees;
