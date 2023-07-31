-- Inner Joins with Group By
# get the total amount of each customers

SELECT first_name, last_name, SUM(amount) AS total_amount FROM customers
JOIN orders ON customers.id = orders.customer_id 
GROUP BY first_name,last_name
ORDER BY total_amount;