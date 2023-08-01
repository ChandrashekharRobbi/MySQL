-- Replacing/Alterting Views

CREATE OR REPLACE VIEW ordered_series AS
SELECT * FROM SERIES ORDER BY genre;
-- if it not exists then create if exists then replace

# OR
ALTER VIEW ordered_series AS 
SELECT * FROM SERIES ORDER BY released_year;

-- DROP VIEW
DROP VIEW ordered_series;