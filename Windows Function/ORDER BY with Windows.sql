-- ORDER BY with Windows

-- it is related to rolling_functions

SELECT department,
       salary,
       SUM(salary) OVER(PARTITION BY department ORDER BY salary) AS rolling_sum,
       SUM(salary) OVER(PARTITION BY department) AS dept_sum
FROM employees;

SELECT department,
       salary,
       SUM(salary) OVER(PARTITION BY department ORDER BY salary DESC) AS rolling_sum,
       SUM(salary) OVER(PARTITION BY department) AS dept_sum
FROM employees;