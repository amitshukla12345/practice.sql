CREATE DATABASE daffodils_school;
 use daffodils_school;
 CREATE TABLE student(
 roll_no INT,
 student_name VARCHAR(50),
 age int,
 birth_date DATE
 );
SHOW TABLES;
DESC student;
-- TO add column to existing table
-- ALTER TABLE <table-name> ADD COLUMN <column-name> <data_type>
ALTER TABLE student ADD COLUMN marks INT;
DESC student;
ALTER TABLE student ADD COLUMN contact int;
DESC student;
DESC student;
ALTER TABLE student ADD COLUMN teacher_name VARCHAR(60) after student_name;
DESC student;
-- ALTER TABLE <table-name> ADD COLUMN <column-name> <data_type> RIRST;
ALTER TABLE student ADD COLUMN email VARCHAR(70) FIRST;
-- TO delete exisiting column
-- ALTER TABLE <table-name> DROP COLUMN <column-name>;
ALTER TABLE student DROP COLUMN  contact;
DESC student;
DROP TABLE student;





