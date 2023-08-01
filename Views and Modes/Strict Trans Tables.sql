-- Strict Trans Tables
SET @@SESSION.SQL_MODE = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- lets insert the value to the table reviews
INSERT INTO reviews (rating) VALUES ('hi'); -- Error

Select * from reviews; -- not inserted

-- if i turn off the mode

SET @@SESSION.SQL_MODE = '';

# if i again try to insert the value

INSERT INTO reviews (rating) VALUES ('hi'); -- ✅

# but it shows warning 
SHOW WARNINGS;

SELECT * FROM reviews;

# set to original
SET @@SESSION.SQL_MODE = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
