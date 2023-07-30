-- Cross Joins
SELECT * FROM CUSTOMERS;
# get the value of George
SELECT id FROM customers WHERE last_name = 'George';
SELECT * FROM ORDERS WHERE customer_id = 1;

-- OR WE CAN USE SUBQUERIES
SELECT * FROM ORDERS 
WHERE customer_id = (
						SELECT id FROM customers 
                        WHERE last_name = 'George'
					);
# cross joins
# it will give all possibility of customers and orders
# dumb joint
SELECT * FROM customers,orders;

