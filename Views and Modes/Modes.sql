-- MODES

SELECT @@GLOBAL.SQL_MODE;
SELECT @@SESSION.SQL_MODE;

# lets remove zero one
SET SESSION SQL_MODE = '';
# it will remove all the modes

SELECT 1/0;

SHOW WARNINGS; -- NONE
