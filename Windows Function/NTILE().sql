-- NTILE()

SELECT emp_no,
       salary,
       department,
       ntile(8) OVER(ORDER BY SALARY DESC) as ntile_partition,
       ntile(8) OVER(PARTITION BY department ORDER BY SALARY DESC) as ntile_partition
FROM EMPLOYEES ORDER BY salary DESC;

SELECT emp_no,
       salary,
       department,
       ntile(8) OVER(ORDER BY SALARY DESC) as ntile_partition,
       ntile(8) OVER(PARTITION BY department ORDER BY SALARY DESC) as ntile_partition
FROM EMPLOYEES ORDER BY department;