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
CONSTRAINT category_product 
foreign key (category_id)
references category(category_id)
);

desc product;
insert into category VALUES (1,"ELECTRONIC");
insert into product values(4,"computer",60000,100);
select * from product;
-- 22-07-2024
Create table school(
school_id int primary KEY,
school_name varchar(100)
);
drop table school;

create table student(
Roll_no int primary key,
student_name varchar(100) not null,
phone_no bigint,
school_id int,
constraint student_school 
Foreign key (school_id)
references school (school_id)
);
desc school;
desc student;
insert into school values (1,"gsb");
select * from school;

create table courses(
courses_id int primary key,
courses_name varchar(50) not null
);


create table teacher(
teacher_id int primary key,
teacher_name varchar(60) not null,
phone_no bigint,
courses_id int,
constraint teacher_courses Foreign key(courses_id)
references courses(courses_id)
);
DESC teacher; 
Alter table product DROP FOREIGN KEY category_product;
select * from category;
insert into product values (130,"Tshirt",520,100);
select * from product;
insert into category values(100,"clothes");
select * from category; 

-- 23-07-2024
ALTER TABLE PRODUCT drop foreign key category_product;
ALTER TABLE product ADD CONSTRAINT product_category
foreign key (category_id) references category(category_id);

select(100>45);
select(100<56);
select(100<100);
select(100<=100);

-- and all statement should be true
select (200<100 and 100<=100 and 10!=100);
-- or 
select (2500<500 or 500=500);
select (25<500 or 500=500);
show tables;
drop table department;
select not(25>500 or 500!=500 or 100!=700);
create database Amit_school;
use Amit_school;
create table department(
department_id int primary key,
department_name varchar(100) not null
);
create table employee(
em_id int primary key,
em_name varchar(50) not null,
city varchar(50) not null,
salary bigint,
Department int,
constraint department_employee foreign key(department)
references department(department_id)
);

INSERT INTO department VALUES (1,"MARKETING"),
(2,"IT"),
(3,"human resources");
select * from  department;

INSERT INTO employee VALUES (1,"nikita","mumbai",67000,1),
(2,"prajakta","pune",80000,1),
(3,"manisha","banglore",20000,2),
(4,"nilesh","mumbai",35400,2),
(5,"monal","pune",34452,2);

select * from employee;

desc employee;
-- select col-name1,.... from table_name;
select em_name,salary from employee;
use xyz_company;



-- 24-07-2023


select (10>7) As answer;
select * from employee WHERE Em_id=1;
select department FROM employee where em_=1;
select * from employee where city="mumbai";
select * from employee WHERE salary<80000 ;
select * from employee where city="mumbai" AND salary<50000;
select * from employee where city="mumbai" or city="banglore";
-- 11 12 13 14 ....20 values>=11 and values<20
select * from employee where salary>11000 and salary<=20000 ;
-- department 1 and salary should be less than 20000
select * from employee where department=1 and salary<=20000;
select * from employee where department=1 and city="pune";
-- short cut or operator
select * from employee WHERE em_id=1 or em_id=2 or em_id=3;
select * from employee where em_id in(1,2,3);
select * from employee where city in ("mumbai","pune");

select * from employee where salary between 20000 and 50000;
alter table employee add column age int;

update employee SET age=0;
update employee set age=25 where em_id=1;
update employee set age=26 where em_id=2;
update employee set age=27 where em_id=3;
UPDATE employee SET age=28 WHERE em_id=4;
UPDATE employee SET age=29 WHERE em_id=5;
UPDATE employee SET age=25 WHERE em_id=6;
update employee set city="pune" where em_name="nikta";
update employee set salary=salary+5000 where em_id=5;
update employee set age=age+2;
update employee set salary=salary-2000 where em_id=1;
update employee set age= null where em_id in(1,3);
desc employee;
select * from employee;
update employee set age=null WHERE em_id(1,3);
select * from employee where age is  null;

select * from employee where age is not null;
select * from employee where em_name!="nikita";






























 
 
 








