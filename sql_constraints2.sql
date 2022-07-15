/*
	Primary Key
    Foreign Key : USED TO CONNECT TWO TABLES
    Check Constraints
    Default Constraints
*/

USE customer;
	CREATE TABLE person(
		id INT NOT NULL,
        first_name VARCHAR(25) NOT NULL,
        last_name VARCHAR(25) NOT NULL,
        age INT        
     );
     
DROP TABLE person;
DESC person;
ALTER TABLE person ADD PRIMARY KEY (id);
ALTER TABLE person ADD CONSTRAINT pk_person PRIMARY KEY (id,last_name);
ALTER TABLE person DROP PRIMARY KEY;

USE customer;
	CREATE TABLE person(
		id INT NOT NULL PRIMARY KEY,
        first_name VARCHAR(25) NOT NULL,
        last_name VARCHAR(25) NOT NULL,
        age INT,
        salary INT
	);
     
	CREATE TABLE department(
		id INT NOT NULL,
        department_id INT NOT NULL,
        department_name VARCHAR(25) NOT NULL,
        PRIMARY KEY (department_id),
        CONSTRAINT fk_dept FOREIGN KEY (id) REFERENCES person (id)
	);
        
DESC department;
ALTER TABLE department ADD FOREIGN KEY (id) REFERENCES person (id);
DROP TABLE department;
DROP TABLE person;

# CHECK CONSTRAINTS

	CREATE TABLE person(
		id INT NOT NULL,
        first_name VARCHAR(25) NOT NULL,
        last_name VARCHAR(25) NOT NULL,
        age INT,
        salary INT,
        PRIMARY KEY (id),
        CHECK(salary<50000)
     );       
     
INSERT INTO person VALUES(1,'SUYOG','KURLEKAR',25,40000);
DROP TABLE person;     
        
# DEFAULT CONSTRAINTS

	CREATE TABLE person(
		id INT NOT NULL,
        first_name VARCHAR(25) NOT NULL,
        last_name VARCHAR(25) NOT NULL,
        city_name VARCHAR(25) DEFAULT 'BANGALORE'
     );       
ALTER TABLE person ALTER city_name DROP DEFAULT;