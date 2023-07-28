-- Decimal
/* The syntax will be
    DECIMAL(a,b)
    where a = no of digits
          b = after decimal digits
*/
CREATE TABLE products(price DECIMAL(5,2));
-- it means maximum 5 digits and after decimal 2 digit eg 222.22
INSERT INTO products VALUES(23.22);
INSERT INTO products VALUES(2311.22);
-- ERROR 1264 (22003): Out of range value for column 'price' at row 1
INSERT INTO products VALUES(231.4567890);
-- Query OK, 1 row affected, 1 warning (0.01 sec)
# we can insert after decimal but it will be turncated to 2 as we have
# set to 2 after decimal

DROP TABLE PRODUCTS;