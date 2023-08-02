-- PARTITION BY

# if we place something in OVER() then it will acts like GROUP BY
SELECT department,
       salary,
       AVG(salary) OVER(PARTITION BY department) AS dept_avg
FROM employees;

SELECT department,
       salary,
       AVG(salary) OVER(PARTITION BY department) AS dept_avg,
       AVG(salary) OVER() AS company_avg
FROM employees;

# count how many employees in each department
SELECT department,
       salary,
       Count(*) OVER(partition by department) AS dept_count
FROM EMPLOYEES;
       
