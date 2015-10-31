CREATE DATABASE IF NOT EXISTS LAB5;

USE LAB5;

CREATE TABLE IF NOT EXISTS DEPARTMENT 
(
    DEPT_ID int  PRIMARY KEY ,
    NAME VARCHAR (20) UNIQUE ,
    DESCRIPTION TEXT 

    );
	
	CREATE TABLE IF NOT EXISTS `user` 
(
    user_id int  PRIMARY KEY auto_increment ,
    email VARCHAR (30) UNIQUE ,
    username VARCHAR (20) UNIQUE ,
	password VARCHAR (50)  ,
	   registration_date timestamp default CURRENT_TIMESTAMP ,
	    department_id int  

    );
	
		CREATE TABLE IF NOT EXISTS course 
(
    course_id int  PRIMARY KEY  ,
    course_name VARCHAR (30) UNIQUE NOT NULL ,
    course_description TEXT  ,
	instructor_name VARCHAR (30)  ,
	   credit_hours int ,
	    department_id int  

    );
	
	
	ALTER TABLE `user` ADD FOREIGN KEY (department_id) REFERENCES DEPARTMENT(DEPT_ID);
		ALTER TABLE `course` ADD FOREIGN KEY (department_id) REFERENCES DEPARTMENT(DEPT_ID);
		
	
	INSERT INTO DEPARTMENT (DEPT_ID ,NAME,DESCRIPTION) 
VALUES (1 , "Computer", "Awesome Dep.");

	
	INSERT INTO DEPARTMENT (DEPT_ID ,NAME,DESCRIPTION) 
VALUES (2 , "Art", "for Artists Only");

	
	INSERT INTO DEPARTMENT (DEPT_ID ,NAME,DESCRIPTION) 
VALUES (3 , "Music", "For Rock stars ");
	
	
		INSERT INTO course (course_id ,course_name,course_description,credit_hours,department_id) 
VALUES (1 , "Algorithms", "This is the most important course in CS ",3,1);

		INSERT INTO course (course_id ,course_name,course_description,credit_hours,department_id) 
VALUES (11 , "Physics", "PHysics desc ",3,1);

		INSERT INTO course (course_id ,course_name,course_description,credit_hours,department_id) 
VALUES (123 , "MAth", "Mathmatics And Algebra",3,1);

			INSERT INTO course (course_id ,course_name,course_description,credit_hours,department_id) 
VALUES (31 , "Drawing", "Learn how to draw",3,2);
			INSERT INTO course (course_id ,course_name,course_description,credit_hours,department_id) 
VALUES (32 , "painting", "Learn how to paint",3,2);


				INSERT INTO course (course_id ,course_name,course_description,credit_hours,department_id) 
VALUES (41 , "Rock history", "ACDC and Nirvana",4,3);
				INSERT INTO course (course_id ,course_name,course_description,credit_hours,department_id) 
VALUES (42 , "Music Theory", "for all musicians",4,3);
