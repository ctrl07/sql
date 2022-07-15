/*
	SQL Indexes
		Used to retrieve specific information quickly from the tables
		Querying or search speeds up
        Inserting, updating or altering becomes slower
*/

USE customer;
SHOW TABLES;

SELECT * FROM person;

CREATE INDEX index_city_name on person(city_name);
DESC person;

DROP TABLE student;

CREATE TABLE student(
	id INT NOT NULL,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    age int
);

DESC student;

CREATE INDEX index_age ON student(age);
CREATE INDEX index_age_first_name ON student(age,first_name);

ALTER TABLE student DROP INDEX index_age_first_name;