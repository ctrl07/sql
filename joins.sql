/*
 SQL JOINS: Helps us to retrive info from two or more tables these 
				these tables will be linked with primary keys and foreign keys.
	INNER JOIN
    LEFT JOIN
    RIGHT JOIN
    FULL JOIN
    NATURAL JOIN
    CROSS JOIN
*/

USE customer;
	SELECT * FROM student;
		INSERT INTO student VALUES (4,'KRISHNA','KUMAR',25);
				INSERT INTO student VALUES (5,'VIRAJ','KARANJKAR',25);	
    SELECT * FROM department;
    
# iNNER JOIN
		SELECT student.first_name,student.last_name,student.age,department_name FROM student INNER JOIN department 
        ON student.student_id=department.student_id;
        
# LEFT JOIN        
		SELECT student.first_name,student.last_name,student.age,department_name FROM student LEFT JOIN department 
        ON student.student_id=department.student_id;

# RIGHT JOIN
		SELECT student.first_name,student.last_name,student.age,department_name FROM student RIGHT JOIN department 
        ON student.student_id=department.student_id;
        
# FULL OUTER JOIN
		SELECT student.first_name,student.last_name,student.age,department_name FROM student LEFT JOIN department 
        ON student.student_id=department.student_id 
        
        UNION
        
        SELECT student.first_name,student.last_name,student.age,department_name FROM student RIGHT JOIN department 
        ON student.student_id=department.student_id;
        
# CROSS JOIN: all possible combiniations are displayed 
		SELECT student.first_name,student.last_name,student.age,department_name FROM student CROSS JOIN department;
        
# NATURAL JOIN: SHOWS ALL THE VALUES THAT ARE LINKED BY A COMMON COLUMN
		SELECT student.first_name,student.last_name,student.age,department_name FROM student NATURAL JOIN department;