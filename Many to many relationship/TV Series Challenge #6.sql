-- TV Series Challenge #6

SELECT first_name,
	   last_name,
       IFNULL(COUNT(rating), 0) AS count,
       IFNULL(MIN(rating), 0) AS MIN,
	   IFNULL(MAX(rating), 0) AS MAX,
       ROUND(IFNULL(AVG(rating),0), 2) AS AVG,
       CASE 
			WHEN IFNULL(COUNT(rating), 0) = 0 THEN 'INACTIVE'
            ELSE 'ACTIVE'
       END AS STATUS
FROM reviewers
LEFT JOIN reviews ON reviewers.id = reviews.reviewer_id
GROUP BY first_name, last_name;

-- OR

SELECT first_name,
	   last_name,
       IFNULL(COUNT(rating), 0) AS count,
       IFNULL(MIN(rating), 0) AS MIN,
	   IFNULL(MAX(rating), 0) AS MAX,
       ROUND(IFNULL(AVG(rating),0), 2) AS AVG,
       IF(COUNT(rating) > 0,'ACTIVE', 'INACTIVE') AS STATUS
FROM reviewers
LEFT JOIN reviews ON reviewers.id = reviews.reviewer_id
GROUP BY first_name, last_name;