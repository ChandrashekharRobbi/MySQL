-- Inner Joins
SELECT * FROM customers;
SELECT * FROM ORDERS; 

SELECT * FROM customers
JOIN orders ON customers.id = orders.customer_id;

-- OR

SELECT * FROM customers
JOIN orders ON orders.customer_id = customers.id;

# get selected columns

SELECT first_name, last_name, email, order_date,amount FROM customers
JOIN orders ON orders.customer_id = customers.id;

-- OR we can also write INNER JOIN
SELECT first_name, last_name, amount FROM customers
INNER JOIN orders ON customers.id = orders.customer_id;