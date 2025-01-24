CREATE DATABASE Pratisel ;
USE Pratisel ;
CREATE TABLE Employee (emp_id 	INT , emp_name varchar (20) , salary int , location varchAr (20));
DESC Employee;
INSERT INTO Employee (emp_id,emp_name,salary,location)VALUE (101,"ATHARVA",300,"PUNE");

SELECT * FROM Employee;
UPDATE employee SET location="srilanka";
UPDATE employee SET location="INDIA" WHERE emp_name="SAHIL";

INSERT INTO Employee (emp_id,emp_name,salary,location)VALUE (103,"OMKAR",100,"PUNE");
INSERT INTO Employee (emp_id,emp_name,salary,location)VALUE (104,"ARYAN",400,"PUNE");
UPDATE Employee SET location=
CASE emp_name 
WHEN "omkar" THEN "Germany"
WHEN "aryan" THEN "uganda"
ELSE location
END;
 DELETE FROM employee ;
 DELETE from employee WHERE emp_name="omkar"

-- Constraints 
/*
NOT NULL     enaure that null value can not be stored in a column
UNIQUE       make sure that all the values in a column are different 
CHECK        it enusre that all values in a colume satisy a specific condition'
DEFAULT       consist of default value for a coloumn when no value is specified
primary key     ensure that colume value in every row is unique aand has no null values
foriegn key     it help to from parent-child relationship between tables
*/
-- 1.not null
CREATE TABLE student(roll_no INT NOT NULL,stud_name VARCHAR(20),address varchar(20) not null);

INSERT INTO student (stud_name,address) VALUES ("RUSHI","Satara");



ALTER TABLE employee MODIFY COLUMN emp_id int NOT NULL;
DESC employee;
ALTER TABLE employee MODIFY COLUMN emp_id int;
DROP TABLE student;
ALTER TABLE employee MODIFY COLUMN emp_id int UNIQUE;

SELECT * FROM student;
DESC student ;
CREATE TABLE student(roll_no INT UNIQUE,stud_name VARCHAR(20),address varchar(20) not null);

INSERT INTO student VALUES(101,"ATHARVA","SATARA");
INSERT INTO student VALUES(101,"shiv","pune");

INSERT INTO student (stud_name,address) VALUES ("ATHARVA","SATARA");
CREATE TABLE student(roll_no INT UNIQUE,stud_name VARCHAR(20),address varchar(20) DEFAULT "PUNE");
INSERT INTO student (roll_no,stud_name,address) VALUES(101,"HRUSHI","SATARA");

ALTER TABLE employee DROP INDEX emp_id;
CREATE TABLE student(roll_no INT ,stud_name VARCHAR(20),address varchar(20));
ALTER TABLE student  MODIFY COLUMN address varchar (20) DEFAULT "PUNE";

-- PRIMARY KEY
-- COMBINATION OF NOT NULL NAD UNIQUE 
-- UNIQUELY IDENTIFY EACH ROW IN TABLE
-- MUST CONTAIN UNIQUE AND CAN NOT HAVE NULL VALUE
-- A TABLE CAN HAVE ONLY ONE PRIMARY KEY BUT ONE PRIMARY KEY CAN CONTAIN MULTIPLE COLUMN
DROP TABLE student;
CREATE TABLE student (roll_no INT UNIQUE NOT NULL, stud_name VARCHAR (20),address VARCHAR(30));
DESC student;
CREATE TABLE student(roll_n0 INT PRIMARY KEY, stud_name VARCHAR (20),address VARCHAR (30));
CREATE TABLE student(roll_n0 INT , stud_name VARCHAR (20),address VARCHAR (30),PRIMARY KEY (roll_no,stud_name));
CREATE TABLE student(roll_n0 INT , stud_name VARCHAR (20),address VARCHAR (30));
ALTER TABLE student MODIFY COLUMN roll_no INT PRIMARY KEY ;
ALTER TABLE student DROP PRIMARY KEY ;
-- auto incremant 
-- can be used to genrate a unique identity for a new rows
-- it is  mandetory to define a column asa primary key to auto_increment


CREATE TABLE student (roll_no INT AUTO_INCREMENT PRIMARY KEY,stud_name VARCHAR (20),address VARCHAR(20));
INSERT INTO student VALUES (101, "YESH","STATARA");
SELECT * FROM student;
INSERT INTO student (stud_name,address) VALUES (102, "KOMAL","PUNE");
INSERT INTO student (stud_name,address) VALUES (103, "SAKSHI","GOA");
-- FORIGN KEY 
-- A FORIGN KEY IS A FIELD IN A ONE TABLE THAT REFERS TO THE PRIMARY KEY OR ANOTHER TABLE 
-- IT IS USED TO DEFINE A RELATIONSHIP BETWEEN TWO OR MULTILPLE TABLE 
-- WE  CAN HAVE  MULTIPLE OR ONE FORIGN KEYS
-- THE TABLE WITH FORIGNE KEY IS CALLED AS CHILD OR REFERANCING TABLE AND THE TABLE WITH 
-- PARIMARY KEY IS CALLED AS PARENT OR REFERANCE TABLE  
CREATE TABLE student (roll_no INT PRIMARY KEY,stud_name VARCHAR (20),address VARCHAR(20));
CREATE TABLE course (course_id INT,course_name VARCHAR(15),roll_no INT,
                      FOREIGN KEY (roll_no) REFERENCES student(roll_no));
 DESC course;
 SELECT * FROM student;
 SELECT * FROM course;
INSERT INTO course VALUES (10,"DSDA",102);
INSERT INTO course VALUES (10,"DSDA",103);

DROP TABLE course;

CREATE TABLE course(course_id INT,course_name VARCHAR (15),roll_no INT, 
                             FOREIGN KEY (roll_no) REFERENCES student(roll_no)
                             ON DELETE CASCADE
                             ON UPDATE CASCADE);
UPDATE student SET roll_no=108 WHERE stud_name="YASH";
DELETE FROM 







                      
                      





