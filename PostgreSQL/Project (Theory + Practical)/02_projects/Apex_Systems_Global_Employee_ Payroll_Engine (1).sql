CREATE TABLE apex_employees(
   emp_id INT PRIMARY KEY,
   emp_name VARCHAR(150) NOT NULL,
   work_email VARCHAR(150) UNIQUE,
   department VARCHAR(50) NOT NULL DEFAULT 'Engineering',
   base_salary DECIMAL(10,4) NOT NULL  
);

INSERT INTO apex_employees(emp_id,emp_name,work_email,department,base_salary)
VALUES(101,'Shivam Kumar','ammshivam@gmail.com','AI Research',76000),
(102,'Raj Kumar','rajkumar234@gmail.com','Data Science',50000);

INSERT INTO apex_employees(emp_id,emp_name,work_email,base_salary)
VALUES(103,'Shreya Pandey','shreya453@gmail.com',45000);

SELECT * FROM apex_employees;

UPDATE apex_employees
SET base_salary = 76000+12500.5000
WHERE emp_id = 101;


UPDATE apex_employees
SET department = 'Core Infrastructure'
WHERE emp_id = 102;

SELECT * FROM apex_employees
WHERE emp_id = 102;

select * from apex_employees
where department = 'Engineering';

SELECT * FROM apex_employees
WHERE base_salary = 50000;

SELECT * FROM apex_employees
WHERE base_salary > 50000;

SELECT * FROM apex_employees
WHERE base_salary BETWEEN 40000 AND 50000;

SELECT * FROM apex_employees
WHERE base_salary = 50000 OR base_salary = 60000;

SELECT * FROM apex_employees
WHERE base_salary = 50000 AND department = 'Core Infrastructure';

SELECT * FROM apex_employees
WHERE base_salary != 50000;


SELECT * FROM apex_employees
WHERE department IN('AI Research','Engineering');

SELECT * FROM apex_employees
WHERE department NOT IN('AI Research');

SELECT DISTINCT department FROM apex_employees;

SELECT * FROM apex_employees
ORDER BY emp_name;

SELECT * FROM apex_employees
ORDER BY department;

SELECT * FROM apex_employees
LIMIT 2;

SELECT * FROM apex_employees
LIMIT 4;

SELECT * FROM apex_employees
WHERE emp_name LIKE '_h%';

SELECT * FROM apex_employees
WHERE emp_name LIKE '%v%';
