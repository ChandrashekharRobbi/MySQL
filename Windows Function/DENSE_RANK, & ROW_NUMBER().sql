-- DENSE_RANK, & ROW_NUMBER()

SELECT emp_no,
	   department,
       salary,
       RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_rank,
       RANK() OVER(ORDER BY salary DESC) AS overall_rank
FROM EMPLOYEES;

-- ROW_NUMBER()

SELECT emp_no,
	   department,
       salary,
       ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_row_no,
       RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_rank,
       RANK() OVER(ORDER BY salary DESC) AS overall_rank
FROM EMPLOYEES ORDER BY DEPARTMENT;

-- DENSE_RANK() IT WILL NOT SKIP THE NUMBER AS THE RANK() DOES
SELECT emp_no,
	   department,
       salary,
       ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_row_no,
       RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_rank,
       RANK() OVER(ORDER BY salary DESC) AS overall_rank,
       DENSE_RANK() OVER(ORDER BY salary DESC) AS overall_dense_rank
FROM EMPLOYEES ORDER BY overall_dense_rank;

-- overall_row number

SELECT emp_no,
	   department,
       salary,
       ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_row_no,
       RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_rank,
       RANK() OVER(ORDER BY salary DESC) AS overall_rank,
       DENSE_RANK() OVER(ORDER BY salary DESC) AS overall_dense_rank,
       ROW_NUMBER() OVER(ORDER BY salary DESC) AS overall_row_num
FROM EMPLOYEES ORDER BY overall_dense_rank;
