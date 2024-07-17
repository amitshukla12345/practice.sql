CREATE DATABASE daffodils_school;
use daffodils_school;
CREATE TABLE student(
roll_no INT,
Student_name varchar(50),
age int,
birth_date date
);
show tables;
desc student;
DESC employee;
-- TO rename column along with the datatype
-- ALTER TABLE <table-name> CHANGE <old-col-name> <new-col-name> <data-type>
ALTER TABLE employee change employee_id e_id char(4);
-- ALTER TABLE <OLD-TABLE-NAME> RENAME TO <new-table-name>
ALTER TABLE employee  RENAME TO employee_detail;
show tables;
CREATE DATABASE xyz_company;
use xyz_company;
Create TABLE department(
department_id char(2),
department_name varchar(50)
);
DESC DEPARTMENT;
-- INSERT INTO <table-name> VALUES (v1,v2,v3.....)
INSERT INTO department VALUES ("D1","IT");
SELECT * FROM department;
-- INSERT INTO <table-name> (c1v1,c1v1,c2v2,c3v3);
INSERT INTO department (department_id) VALUES ("d2");
select * FROM department;
INSERT INTO department (department_name,department_id)
VALUES("Marketing", "D3");
SELECT * FROM department;
CREATE TABLE employee(
employee_id INT,
employee_name VARCHAR(200),
employee_age int
);
show tables;
desc employee;
Insert into employee Values (11, "nisha",23);
select * from employee;
INSERT INTO  employee VALUES 
(12,"POOJA",29),
(13,"Nikta",28),
(14,"Ankita",30);

 select * from employee;
 INSERT INTO employee (employee_id,employee_name)
 VALUES
 (15,"Janki"),
 (16,"Neeta"),
 (17,"sagar");
 select * from employee;
 Create table hospital (
 patient_id int,
 patient_name varchar(50),
 doctor_name varchar(50)
 );
 show tables;
 desc hospital;
 Insert into hospital Values (patient_id );
 
 
 








