USE customer;

CREATE TABLE student(
	student_id INT AUTO_INCREMENT,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    age INT,
    PRIMARY KEY(student_id)
    );
    
INSERT INTO student 
	VALUES(1,'SUYOG','KURLEKAR',25),
		  (2,'KUNAL','PAGAR',24),
          (3,'SWARAJ','MESHRAM',24);
          
CREATE TABLE department(
				student_id INT AUTO_INCREMENT,
                department_name VARCHAR(25)NOT NULL,
				FOREIGN KEY (student_id) REFERENCES student(student_id)
                );
                
DESC department;

INSERT INTO department VALUES(1,'COMPUTER SCIENCE'),
							 (2,'ELECTRONICS'),
                             (3,'MECHANICAL');
                             
SELECT * FROM department;
SELECT * FROM student;
			
/*
	HERE student_info is not a seperate table its just a virtual representation of a data(view)
    VIEWS DON'T SUPPORT QURIES THAT INVOLVE UPDATE STATEMENT,AGGRIGATE FUNCTIONS,GROUP BY,
    UNION,LEFT OUTER JOIN, RIGHT OUTER JOIN AND SUB QUEIRES.
*/
CREATE VIEW student_info as            
	SELECT first_name, last_name,age FROM student INNER JOIN department
	USING (student_id);         
SELECT * FROM student_info; 
DROP VIEW student_info;