show databases;
create database customers;
USE customers;
#create table in databases
CREATE TABLE customer_info(id INTEGER, first_name VARCHAR(10), last_name VARCHAR(10));
SHOW TABLES;
SELECT * FROM customer_info;

INSERT INTO customer_info(id,first_name,last_name)VALUES(1,'Suyog','Kurlekar');
INSERT INTO customer_info(id,first_name,last_name)VALUES(1,'Swayam','Kurlekar');
DROP TABLE customer_info;
DROP DATABASE customers;
SHOW DATABASES