-- Multiple Column Constraints

CREATE TABLE Companies(
	name VARCHAR(100),
    address VARCHAR(200),
    CONSTRAINT name_address UNIQUE(name, address)
);

INSERT INTO Companies (name, address) VALUES ('john','123 johnny');

INSERT INTO Companies (name, address) VALUES ('john','123 johnny');
-- Error Code: 1062. Duplicate entry 'john-123 johnny' for key 'companies.name_address'
