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
 show tables;
 
 
 -- 18-07-2024
 
 desc hospital;
 SHOW TABLES;
 drop table department;
 CREATE TABLE department(
 department_id INT UNIQUE NOT NULL,
 department_name varchar(50) NOT NULL
 );
 
 INSERT INTO department VALUES(101,"Nisha");
 select * from department;
INSERT INTO department VALUES(null,"Ankita");

desc department;

 
 
DROP TABLE employee;
CREATE TABLE employee(
employee_id char(2) primary key,
employee_name varchar(60) NoT NULL,
employee_email VARCHAR(90) UNIQUE NOT NULL
);
DESC employee;
-- TO add Not null constraint
-- ALTER TABLE <TABLE-NAME> MODIFY <col-name> <data-type> NOT NULL;
-- To remove not null constraint
-- ALTER TABLE <table-name> MODIFY <col-name> <data-type>;
ALTER TABLE employee MODIFY employee_name varchar(60);
show tables;
DESC employee;
ALTER TABLE employee MODIFY employee_name varchar(60) not null;
ALTER TABLE employee DROP INDEX employee_email;
Desc employee;
ALTER TABLE employee ADD UNIQUE(employee_email);

ALTER TABLE employee DROP primary key;
DESC employee;
ALTER TABLE employee ADD primary key (employee_id);
ALTER TABLE employee add COLUMN employee_salary int;
desc employee;
ALTER table employee alter employee_salary set DEFAULT 0;
INSERT into employee(employee_id,employee_name,employee_email,employee_salary)values("e2","nitya","n@gmail.com",50000);

-- 19-07-2024
use xyz_company;
desc employee;

--                           -6>=0
Alter table employee Alter employee_salary Drop Default;
-- ALTER TABLE <table-name>ADD CONSTRAINT <constraint_name> CHECK (condition);
ALTER TABLE employee ADD CONSTRAINT check_salary CHECK (employee_salary>=0);
INSERT INTO employee (employee_id,employee_name,employee_email,employee_salary)
VALUES("E4","Nitya","nm@gmil.com", -50000);

-- ALTER TABLE <table-name> DROP CONSTRAINT <constraint-name>
ALter table employee DROP constraint CHECK_salary; 
INSERT INTO employee (employee_id,employee_name,employee_email,employee_salary)
VALUES("E7","manisha","lm@gmil.com", 50000);
-- foreign-key

Create table category(
category_id int primary key,
category_name varchar(100) not null
);
desc category;
Create table product(
pro_id INT primary key,
pro_name varchar(60) NOT NULL,
Pro_price int DEFAULT 0 CHECK (PRO_price>=0),
category_id int,
CONSTRAINT category_product foreign key (category_id)
references category(category_id)
);

desc product;
insert into category VALUES (1,"ELECTRONIC");
insert into product values(2,"computer",50000,1 );
select * from product;
















 
 
 








