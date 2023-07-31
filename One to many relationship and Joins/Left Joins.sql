-- Left Joins
SELECT first_name, last_name, amount FROM customers -- (Left table)
LEFT JOIN orders ON customers.id = orders.customer_id;
	-- (right table)
# it says select everything from left and matching records of right
