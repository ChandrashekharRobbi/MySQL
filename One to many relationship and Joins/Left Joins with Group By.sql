-- Left Joins with Group By

SELECT first_name, last_name , IFNULL(sum(amount), 0)	 as total_amount FROM customers
LEFT JOIN orders ON orders.customer_id = customers.id 
GROUP BY first_name, last_name
ORDER BY total_amount;