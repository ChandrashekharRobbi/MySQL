-- Updateable Views

-- Simple Table can be inserted and update the values
CREATE VIEW review_order AS
SELECT * from reviewers ORDER BY first_name;

-- this table we can insert the values and delete it
SELECT * from review_order;

INSERT INTO review_order (first_name, last_name)
VALUES ('Robbi','Car');

SELECT * FROM review_order;

DELETE FROM review_order WHERE id= 8;


