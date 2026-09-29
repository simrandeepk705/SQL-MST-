-- practrical mst

CREATE DATABASE MST;
USE MST;

CREATE TABLE Employee(
employee_id INT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
email VARCHAR(150) UNIQUE,
age INT CHECK (age> 18),
department VARCHAR(100) DEFAULT 'sales',
salary INT
);

INSERT INTO Employee VALUES 
(1,'karan','karan@gmail',24,'HR',56000),
(2,'simran','simran@gmail',23,'HR',58000),
(3,'gurleen','gurleen@gmail',19,'sales',24000),
(4,'ria','ria@gmail',45,'marketing',45000),
(5,'jashan','jashan@gmail',21,'sales',28000);

SELECT * FROM Employee 
WHERE salary > 30000;

UPDATE Employee
SET salary = 60000
WHERE department = 'HR';

DELETE from Employee 
WHERE age > 40;

ALTER TABLE Employee
ADD COLUMN phone_no INT DEFAULT NULL;

TRUNCATE TABLE Employee;
SELECT count(*) from Employee; 
SELECT * from Employee;
