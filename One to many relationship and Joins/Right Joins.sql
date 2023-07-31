-- Right Joins
select * from orders;
select * from customers;

SELECT first_name, last_name, amount FROM orders
RIGHT JOIN customers ON customers.id = orders.customer_id;

-- Group By
SELECT first_name, last_name, sum(amount) as total_amount FROM orders
RIGHT JOIN customers ON customers.id = orders.customer_id
GROUP BY first_name, last_name;
