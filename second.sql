/*
SQL NULL VALUES
SQL UPDATE STATEMENT
SQL DELETE STATEMENT
SQL ALTER TABLE
	add column in existing column
    modify/alter a column
    alter table drop column
*/
#CREATE DATABASE customer;
USE customer;

CREATE TABLE customer_info(
id INTEGER AUTO_INCREMENT,
first_name VARCHAR(25),
last_name VARCHAR(25),
salary INTEGER,
PRIMARY KEY(id)
);

#INSTERT STUFF INTO THE TABLE
INSERT INTO customer_info(first_name,last_name,salary)
VALUES('SUYOG','KURLEKAR',50000),
	  ('SWAYAM','KURLEKAR',60000),
      ('SWARAJ','M',70000),
      ('VIRAT','KARANJKAR',40000),
      ('KRISHNA','KUMAR',NULL);

INSERT INTO customer_info (first_name,last_name,salary)VALUES('KRISHNA','KUMAR',50000);

# SQL UPDATE STATEMENT TO REPLACE NULL VALUES

UPDATE customer_info SET salary=50000 WHERE id=5;   
UPDATE customer_info SET email='abc@def.com' WHERE id=1;
UPDATE customer_info SET email='abc@def.com' WHERE id=2;
UPDATE customer_info SET email='abc@def.com' WHERE id=3;
UPDATE customer_info SET email='abc@def.com' WHERE id=4;
UPDATE customer_info SET email='abc@def.com' WHERE id=36;
# DELETE STUFF FROM THE TABLE

DELETE FROM customer_info WHERE id BETWEEN 31 AND 35;
      
SELECT * FROM customer_info;

# SQL ALTER TABLE
# ADD COLUMN IN EXISTING TABLE

ALTER TABLE customer_info ADD email VARCHAR(25);
ALTER TABLE customer_info ADD dob DATE;

# ALTER TABLE MODIFY COLUMN
ALTER TABLE customer_info MODIFY dob YEAR;

#ALTER TABLE TO DROP COLUMN
ALTER TABLE customer_info DROP COLUMN email;