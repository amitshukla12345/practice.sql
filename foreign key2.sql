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

INSERT INTO employee VALUES (1,"nikita","mumbai",67000,1,22),
(2,"prajakta","pune",80000,1,23),
(3,"manisha","banglore",20000,2,25),
(4,"nilesh","mumbai",35400,2,26),
(5,"monal","pune",34452,2,27);

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


-- 25-05-2024


select * from employee;
select * from employee where em_name like "n%a";
select * from employee where em_name like "m_n%";
select * from employee where em_name not like "m_n%";
select * from employee where em_name like "%n%";
select * from employee where em_name not like "m%";
select * from employee where em_name  like "%ta";
select * from employee where em_name like "m%" and city="pune";
select * from employee Where em_name Like "%t_";

-- DELETE FROM <table_name> WHERE  CONDITION;
DELETE FROM employee where em_id=4;
DELETE From employee where department ="1" and age<29;
Delete from employee where  em_name like"%l";
delete from employee;

-- TRUNCATE TABLE table-name
TRUNCATE TABLE employee;

-- AGGREGATE FUNCTIONS
-- SUM
-- COUNT
-- MIN
-- MAX
-- AVG     12+12+10/3 

select count(*) AS number_of_employee from employee;
select count(*) As number_of_department from department;
select city FROM employee;
select distinct city from employee;
INSERT INTO employee VALUES (6,"nikita",null,62300,1,22);
alter table employee modify city varchar(50);
desc employee;
select count(distinct city) from employee;
select min(salary) from employee;
select min(age) from employee;
select max(salary) from employee;
select sum(salary)*12 from employee;
select AVG(SALARY) FROM EMPLOYEE;
SELECT avg(age) from employee;
select * from employee;
select * from employee order by salary ASC;
select * from employee order by salary DESC;
select * from employee order by age;
select * from employee order by age DESC;
update employee set salary=80000 where em_id=1;
select * from employee order by salary Desc,age desc;

-- 26 07 2024
-- agregate function
select * from employee order by salary Limit 1;
select * from employee order by salary desc;
select * from employee order by salary Desc,age desc Limit 3;
select * from employee order by age;
select * from employee order by age desc;

select count(em_id) from employee group by department;
select department,count(em_id) from employee group by department;
select city,count(em_id) from employee Group By city;
select city,sum(salary) from employee group by city;
select sum(salary) from employee group by city;
select city,sum(salary),avg(salary),min(salary),max(salary) from employee Group by city; 

select department,sum(salary) from employee group by department;
alter table employee add column gender varchar(30);
select * from employee;
update employee set gender="M" where em_id=4;
update employee set gender="f" where em_id=1;
update employee set gender="f" where em_id=2;
update employee set gender="f" where em_id=3;
update employee set gender="f" where em_id=5;
update employee set gender="f" where em_id=6;

-- select count(*) from employee where salary<50000 group by gender and gender="f";
select gender,count(em_id) from employee where salary<50000 group by gender HAVING gender="f";


select department,avg(salary) as 
average_salary from employee 
group by department having avg(salary)<50000;
select department,avg(salary) as average_salary
 from employee 
 group by department order by average_salary LIMIT 1;
select department,avg(salary) as average_salary 
from employee 
group by department  ORDER BY AVERAGE_SALARY DESC LIMIT 1;
select department,avg(salary) as average_salary 
from employee group by department  ORDER BY AVERAGE_SALARY asc LIMIT 1;
SELECT department, count(EM_ID) FROM employee Group by department order by count(em_id) limit 1;
SELECT department, count(EM_ID) FROM employee Group by department order by sum(salary) limit 1;

-- 29 07 2024
 use amit_school;
 -- built in functions
 -- CONCAT("Hello","world") Helloworld
 select CONCAT("Amit"," ","shukla");
 select * from employee;
 -- E1-nikita 
 select em_id,em_name,concat(em_id,"-",em_name) from employee; 
 -- email e1.ename@itvedant.com
 select em_id,em_name,concat(em_id,".",em_name,"@itvedant.com") as email from employee;
 
 -- upper ("sql") SQL
 select UPPER("sql");
 select LOWER("ABC");
 INSERT INTO employee values
 (4,"nilesh",lower("mumbai"),35400,1,26,UPPER("m"));
   SELECT length("hello");
  SELECT length("he   llo");
  
  --      5>20
  SELECT LENGTH("NISHA")>20;
  SELECT em_name,length(em_name) from employee;
  select * from employee;

-- H e l l o
-- 1 2 3 4 5
select substr("Hello",2,1);
select substr("hello",2,2);
select substr("hello",5,1);
select substr("Anju",LENGTH("Anju"),1);
select  em_name,substr(em_name,length(em_name),1) from employee;
select  em_name,upper(substr(em_name,length(em_name),1)) from employee;

select CONCAT(em_name,"-",UPPER(substr(em_name,LENGTH(em_name),1))) from employee;

select  concat(UPPER(substr(em_name,1,1)),LOWER(substr(em_name,2,LENGTH(em_name)-1))) from employee;


-- 30 07 2024
-- mod(m,n)
select mod(71,3);
select round(5.785,1);
select ceil(77.00);
select floor(45.78);
select sqrt(17);
select round(sqrt(17),4);
select sign(-80);
SELECT SIGN(5);
SELECT truncate(5.678354556,4);
SELECT ROUND(5.67835624,4);
Select pow(5,2);
--   ------------------------------
select ceil (avg(salary)) As average_salary from employee;
-- DATE RELATED FUNCTION
-- YYYY-MM-DD
SELECT curdate();
-- HH:MM:SS
SELECT curtime();
-- YYYY-MM-DD  HH:MM:SS
SELECT now();
SELECT date("2024-11-05 07:25:20");
SELECT date(now());
select Day("2024-10-20");
select month(curdate());
select month("2024-10-20");
select year("2023-10-20");
 alter table employee add column joining_date Date;
 select * from employee;
 update employee set joining_date="2022-5-11" where em_id in (2);
 update employee set joining_date="2021-10-14" where em_id in (4,5,6);
 select em_id,em_name,joining_date,year(joining_date) from employee;
 select * from employee where year(joining_date)=2022;
 select * from employee where year(joining_date)=2021 or year(joining_date)=2023;
 -- select em_name,count(joining_date) from employee where year(2021) or year(joining_date)=2023;
 
 select year(joining_date),count(em_id) from employee group by year(joining_date);
  select year(joining_date)as joining_year,count(em_id) from employee group by year(joining_date) having joining_year=2022;
  -- ---------------
  select date_format("2024-11-21","%d-%m-%y");
  select date_format("2024-11-21","%D %M %Y");
  -- %W IS  A WEEK NUMBER 0-SUN 1-MON
  select date_format("2024-07-28","%D %M %Y %w");
  -- CAPITAL W WILL GIVE YOU DAY NAME
   select date_format("2024-07-28","%D %M %Y %W");
   
  SELECT date_format(now(), "%D %M %Y %H::%i::%s");
  select  date_format(now(), "%b");
   select  date_format(now(), "%c");
  desc employee;
  
  
  -- 31 07 2024
  
  select * from employee;
  -- 30000 very less   60000 Average     High 90000
  select em_name,salary,
  case 
     when salary<30000 then "very less"
     When salary<60000 then  "Average"
	 When salary<100000 then "very high"
     ELSE "-"
  End as salarydata,em_name
  from employee;
  
  select em_id,em_name,department,
  case 
  When department=1 then "marketing"
  when department=2 then "IT"
  when department=3 then "HR"
  else "-"
  End as department_name,salary,
  case 
  when salary<30000 then "very less"
  When salary<60000 then  "Average"
  When salary<100000 then "very high"
  ELSE "-"
  End as salarydata
  from employee;
  
  -- update employee set salary=case ;
  update employee set salary=
  case
     when department=1 then salary+2000
     when department=2 then salary+1000
     when department=3 then salary+500
	 else salary
  end;
  select * from employee;
  alter table employee add column Email varchar(90);
  select * from employee;
   -- b.ename_e_id@itvedant.com
   
update employee set email=concat(substr(city,1,1),".",em_name,"_",LOWER(em_id),"@itvedant.com");

-- COALESCE
alter table employee add column PHONENO bigint ;
update employee set phoneno =7738169412, email=null where em_id in(1,2,3);
select em_name,email,phoneno,coalesce(email,phoneno) from employee;

-- 01 08 2024
use amit_school;
select isnull("amit");
select datediff(curdate(),"2024-07-25");
select * from employee;
select em_name,joining_date,datediff(curdate(),joining_date)  from employee;
select em_name,joining_date,datediff(curdate(),joining_date) as no_of_days  from employee
where datediff(curdate(),joining_date)>365;

-- date_add
select date_add(curdate(),interval 100 DAY);
select date_add(curdate(),interval 10 MONTH);
SELECT date_add(curdate(),interval 10 year);
-- (- for past days ya year)
select date_add(curdate(),interval -100 DAY);

select * from employee;
select em_name,joining_date,date_add(joining_date,interval 1 YEAR) AS anniversary from employee;

select * from department;
update employee set department=null where em_id=4;
insert into department values(4,"operation");

-- inner join

select * from employee
INNER join department
on
employee.department=department.department_id;

select e.em_name,d.department_id,d.department_name from employee e
inner join department d
on
e.department=d.department_id;
use amit_school;
----------------------------------- ----------------
-- 02 08 2024

-- left join
select * from employee e
left join department
on 
e.department=department.department_id
where e.salary<50000
order by e.salary DESC LIMIT 1;
-- RIGHT JOIN
 select * FROM employee e
 right join department d
 on 
 e.department=d.department_id
 where e.em_id is null; 
 
 -- cross join multiple of data
 select * from employee e,department d where e.department=d.department_id and department_id=1; 
 select * from department_duplicate; 
 
 create table department_duplicate(
 department_id char(10),
 department_name varchar(50),
 city varchar(60)
 );
 insert into department_duplicate values
 ("D1","marketing","mumbai"),
 ("D6","Training","pune");
 select * from department_duplicate;
 select * from department;
 
 select department_id,department_name from department
 union all
 select department_id,department_name from department_duplicate;
 
 -- 07 08 2024
 select * from employee e
 left join department d 
 on e.department=d.department_id
 union
 select * from employee e 
 right join department d
 on e.department=d.department_id; 
 
 -- Equi join  It uses the equality ( = ) symbol to compare the data between two columns
 select * from employee e,department d
 where e.department=d.department_id;
 
 -- non-Equi Join
 select * from employee e,department d
 where e.department=d.department_id and e.salary<50000;
 
 -- subqueries In SQL a Subquery can be simply defined as a query within another query
 select min(salary) from employee;
 select * from employee where salary=(select min(salary)from employee);
 select max(salary) from employee;
 select * from employee where salary=(select max(salary)from employee);
 select avg(salary) from employee;
 select * from employee where salary<(select avg(salary)from employee);
 select * from employee where  salary<(select max(salary) from employee) order by salary desc limit 1;
 
 select * from department where department_name="marketing";
 alter table department add column department_city varchar(100);
 select * from department;
 update department set department_city="mumbai" where department_id=1;
  update department set department_city="pune" where department_id=2;
   update department set department_city="delhi" where department_id=3;
    update department set department_city="Banglore" where department_id=4;
    
    select * from department where department_city="mumbai";
    
    -- in is used for multiple values
     select * from employee where department in 
    (select department_id from department where department_city="mumbai");
    select * from employee;
    
    
    
 -- 06 08 2024
 select salary from employee where em_name="nikita" or em_name="nilesh";
 select * from employee where salary>all
 (select salary from employee where em_name="Ankita" or em_name="nilesh");
 
 select * from employee where salary<all
 (select salary from employee where em_name="Ankita" or em_name="nilesh");
 -- < than any greater values will take
 select * from employee where salary<any
 (select salary from employee where em_name="nikita" or em_name="nilesh");
 select * from employee where salary>any
 (select salary from employee where em_name="nikita" or em_name="nilesh");
 select * from employee where salary>=any
 (select salary from employee where em_name="nikita" or em_name="nilesh");
 
 select * from employee where salary<
 (select salary from employee where salary<
 (select max(salary) from employee) order by salary desc LIMIT 1) ORDER BY SALARY desc limit 1;
 select * from employee where salary<
 
 (select salary from employee where age<
 (select max(age) from employee) order by age desc LIMIT 1)  ORDER BY age desc limit 1;
  
  select * from department where department_id=
  (select department from employee where age=
  (select age from employee where age<
  (select max(age) from employee) order by age desc limit 1));
  
  -- 07 08 2024;
  -- VIEW
  use amit_school;
  select * from employee;
  create VIEW DEPARTMENT_SALARY AS
  select department,sum(salary) from employee group by  department;
  select * from department_salary;
  
  -- 09 08 2024
  -- stored procedure
  -- in out 
  -- whay DELIMITER IS USE
  -- TO CHANGE END
  Delimiter $$
  select * from employee$$
  select * from department$$
  /*
  DELIMITER $$
CREATE PROCEDURE procedure_name()
  
  BEGIN
  

  
  END$$
  DELIMITER;
  */

DELIMITER $$
CREATE procedure getEmployee()
BEGIN

select * from employee;

END$$
DELIMITER ;

Call getEmployee();

DELIMITER $$
CREATE procedure getdepartment()
BEGIN

SELECT * FROM department;

END$$
DELIMITER ;
call getdepartment;      



DELIMITER $$
CREATE procedure get_by_city(IN city VARCHAR(100))
begin

SELECT COUNT(*) FROM EMPLOYEE WHERE EMPLOYEE.CITY=CITY;


END$$
DELIMITER ;
CALL GET_BY_CITY("PUNE");
-- drop procedure procedure_name;

DELIMITER $$
create procedure get_by_department (in dep_count int(10) )
begin 


 select count(*) from employee  where department=dep_count;
 
 end$$
 delimiter ;
 
 call get_by_department(1) 
 
 DELIMITER $$
 CREATE PROCEDURE UPDATE_PHONENO(IN EM_ID INt(20), IN  phoneno bigint)
 
bEGIN
UPDATE employee set employee.phoneno=phoneno where employee.em_id=em_id;

END$$
delimiter ;
CALL UPDATE_PHONENO(1,90225525);
DROP procedure UPDATE_PHONENO;
SELECT * from EMPLOYEE;


  use amit_school;
-- 12 08 2023
-- getyear


select @age;
set @salary=50000;
select @salary;
 select * from employee where salary<@salary;
 
 Delimiter $$
 create procedure getYear(in em_id int(10),out reg_year int)
 begin
 select year(joining_date) Into reg_year from employee where employee.em_id=em_id;
 end$$
 DELIMITER ;
 CALL GETYEAR(4,@reg_year);
 select @reg_year;
 select * from employee where year(joining_date)=@reg_year;
 
 Delimiter $$
 Create procedure UPDATE_city (IN EM_ID varchar(20), IN  city varchar(20))
 bEGIN
 UPDATE employee set employee.city=city where employee.em_id=em_id;
 END$$
delimiter ;
CALL UPDATE_city('6',"delhi");
SELECT * from EMPLOYEE;
dROP procedure UPDATE_city;

 DELIMITER $$
 CREATE PROCEDURE UPDATE_PHONENO(IN EM_ID INt(20), IN  phoneno bigint)
 
bEGIN
UPDATE employee set employee.phoneno=phoneno where employee.em_id=em_id;

END$$
delimiter ;
CALL UPDATE_PHONENO(4,8368204051);

-- h.w
-- getCount("mumbai",@counttemp)
-- getemdatail("d2")
-- getemployee("a")
-- getemployeecount("a",@countemp)

-- 14 08 2024 
Delimiter $$
Create procedure updateSalary(IN e_id char(4),INOUT salary INT) 
begin
DECLARE OLD_SALARY INT;
SELECT EMPLOYEE.SALARY INTO OLD_SALARY FROM EMPLOYEE WHERE EMPLOYEE.EM_ID=EM_ID;
UPDATE EMPLOYEE SET EMPLOYEE.SALARY=SALARY WHERE EMPLOYEE.EM_ID=EM_ID;
SET SALARY=OLD_SALARY;
END$$
delimiter ;
set @salary=85000;
call updatesalary(3,@salary);
 SELECT @SALARY;
dROP procedure updateSALARY;


/*
Delimiter $$
Create function fun_name (p1,p2....pn)
retyrb datatype
BEGIN
// LOGIC

retun value;
end$$
DELIMITER ;
*/

delimiter $$
create function addition(a INT, b int)
REturns int
BEGIN
RETURN a+b;
end$$
DELIMITER ;
SELECT ADDITION(510,200);

delimiter $$ 
create function subtraction(a int, b int)
returns int 
begin
return a-b;
end$$
select subtraction(10,2);
delimiter ;


DELIMITER $$
 create function formatname(word VARCHAR(100))
 Returns varchar(100)
 BEGIN
   return concat(upper(substr(word,1,1)),lower(substr(word,2)));
   end$$
   dELIMITER ;
   SELECT FormatName("nisha");
   select * from employee;
   select formatname(em_name),formatname(city),addition(salary,10000) from employee;


DELIMITER $$
   CREATE FUNCTION grade (Marks int)
   RETURNS CHAR(20)
   BEGIN
        DECLARE grade CHAR (20);
        SET grade=CASE
                    WHEN marks BETWEEN 0 AND 40 THEN "C"
                    WHEN marks BETWEEN 41 AND 74 THEN "B"
					WHEN marks BETWEEN 75 AND 100 THEN "A"
                    ELSE
                    "Invalid Marks"
                    END;
                    RETURN GRADE;
                    END$$ 
                    DELIMITER ;
                    SELECT GRADE (90);
                    dROP procedure grade;
                    
                    -- 16 08 2024
/*
Syntax:
If condition THEN
Statements
END IF;
IF condition THEN statement1
ELSE
statement2
END IF
*/

DELIMITER $$
Create function checkNumber(n INT)
RETURNS VARCHAR(4)
BEGIN
IF (n%2=0) THEN
RETURN "EVEN";
else
RETURN "ODD";
END IF;
END$$
DELIMITER ;
SELECT CHECKNUMBER(60);


DELIMITER $$
Create function AGECHECK(age INT)
RETURNS bool
BEGIN
IF (AGE>18) THEN
RETURN True;
else
RETURN false;
END IF;
END$$
DELIMITER ;

SELECT agecheck(17);
drop function agecheck;


                      -- ELSE IF --
     /* 
     IF condition THEN
     statement1
     ELSE IF condition THEN
      statement2
      ELSE IF condition THEN
      statement3
     
     */
     
     
        DELIMITER $$
        CREATE FUNCTION selectLanguage(choice INT)
        RETURNS VARCHAR(20)
        BEGIN
        IF (Choice=1) THEN
        RETURN "ENGLISH";
        ELSEIF (Choice=2) THEN
         RETURN "Marathi";
         ELSEIF (Choice=3) THEN
         RETURN "HINDI";
         else
         RETURN "INVALID INPUT";
         END IF;
        END $$
        DELIMITER ;
        
        SELECT selectLanguage(1);
     
DELIMITER $$
        CREATE FUNCTION selectarmforce(choice INT)
        RETURNS VARCHAR(20)
        BEGIN
        IF (Choice=1) THEN
        RETURN "Army";
        ELSEIF (Choice=2) THEN
         RETURN "Navy";
         ELSEIF (Choice=3) THEN
         RETURN "Airforce";
         else
         RETURN "INVALID INPUT";
         END IF;
        END $$
        DELIMITER ;
        
        SELECT selectarmforce(1);
     



                    
                    
   
   
 








 
 
 
 
 
 


 


  
  

    
  
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
    
    
    
    

  

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 























   
  
  
  
  
  
  
  
  

 










































































 
 
 








