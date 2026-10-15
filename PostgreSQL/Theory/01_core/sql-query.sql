SELECT datname FROM pg_database;
CREATE DATABASE rs15;
DROP DATABASE rs15;

CREATE DATABASE rs15;
DROP DATABASE rs15;

CREATE TABLE rs15(
  Column_1 INT,
  Column_2 CHAR,
  Column_3 DATE
);

SELECT Column_1, Column_3 FROM rs15;


SELECT * FROM rs12;

INSERT INTO rs15(Column_1, Column_2, Column_3)
VALUES(23, '4', '4-12-2028');


CREATE TABLE rs12(
  ID INT PRIMARY KEY,
  NAME VARCHAR NOT NULL DEFAULT 'Boom',
  AGE INT DEFAULT 23,
  EMAIL VARCHAR(100) UNIQUE,
  ADDRESS VARCHAR(500)
);

INSERT INTO rs12(ID, NAME, AGE, EMAIL, ADDRESS)
VALUES(101, 'Shivam Kumar', 45, 'ammshivam@gmail.com','Kalindi Nagar');

INSERT INTO rs12(ID, NAME, AGE, EMAIL, ADDRESS)
VALUES(102, 'Raj Kumar', 23, 'raj89w9@gmail.com', 'Buxar');

INSERT INTO rs12(ID, NAME, AGE, EMAIL, ADDRESS)
VALUES
(103, 'Aryan Kumar', 23, 'aryan89w9@gmail.com', 'Faridabad'),
(104, 'Himanshu Upadhayay', 34, 'himanshu231@gmail.com', 'Sri Nagar'),
(105, 'Sneha Chaurasiya', 12, 'sn72@gmail.com', 'Bangalore'),
(106, 'jetha Lal', 21, 'jetha@gmail.com', 'delhi'),
(107, 'Shivam Kumar', 34, 'ammshivam.research@gmail.com', 'Ballia'),
(108, 'Aryan Kumar', 34, 'aryan32@gmail.com', 'Faridabad'),
(100, 'Sandhya Pandey', 21, 'sandhyapandey1611@gmail.com', 'Buxar'),
(109, 'Sandhya Pandey', 20, 'san@gmail.com', 'Buxar');




SELECT * FROM rs12;

UPDATE rs12
  SET name = 'Himanshu Upadhayay'
  WHERE id = 102;

UPDATE rs12
  SET id = 101
  WHERE id = 102;

DELETE FROM rs12
WHERE id = 103;


SELECT * FROM rs12
WHERE id = 102 AND age = 23;

SELECT * FROM rs12
WHERE id = 102 OR age = 63;

SELECT * FROM rs12
WHERE id IS NOT NULL

SELECT * FROM rs12
WHERE age NOT BETWEEN 40 AND 75;

SELECT * FROM rs12
WHERE age BETWEEN 10 AND 20;

SELECT * FROM rs12
WHERE address LIKE 'Buxar';

SELECT * FROM rs12
WHERE address NOT LIKE 'Buxar';

SELECT * FROM rs12
WHERE id IN (102,107,109);

SELECT * FROM rs12
WHERE id NOT IN (102, 107, 109);

SELECT * FROM rs12
WHERE id NOT BETWEEN 101 AND 104;

SELECT DISTINCT age FROM rs12;

SELECT DISTINCT address FROM rs12;

SELECT DISTINCT age FROM rs12 ORDER BY age;

SELECT * FROM rs12 ORDER BY id;

SELECT * FROM rs12 ORDER BY id DESC;

SELECT * FROM rs12
  WHERE address = 'Buxar' OR address = 'Faridabad' OR address = 'Ballia';

SELECT * FROM rs12
  WHERE address IN ('Buxar', 'Faridabad', 'Ballia');

SELECT * FROM rs12 LIMIT 5;

SELECT DISTINCT name FROM rs12 WHERE name LIKE 'S%';

SELECT * FROM rs12 WHERE name LIKE '%r';

SELECT DISTINCT name FROM rs12 WHERE name LIKE '%a%';


SELECT * FROM rs12 WHERE name LIKE '_a%'

SELECT * FROM rs12 WHERE name LIKE 'S_%'

SELECT * FROM rs12 WHERE name LIKE '%_a';

SELECT MAX(age) FROM rs12; 

SELECT MIN(age) FROM rs12;

SELECT SUM(age) FROM rs12;

SELECT COUNT(age) FROM rs12;

SELECT AVG(age) FROM rs12;

SELECT address, COUNT(id) FROM rs12 GROUP BY address;
SELECT address, SUM(age) FROM rs12 GROUP BY address;

SELECT * FROM rs12
WHERE age = 23;

SELECT * FROM rs12
WHERE age > 20;

SELECT * FROM rs12
WHERE address != 'Buxar';

SELECT * FROM rs12
WHERE ID > 106;

SELECT CONCAT('Shivam',' ','Kumar');
SELECT CONCAT_WS(' ','Shivam','Kumar');
SELECT CONCAT_WS(' : ','Shivam','Kumar');

SELECT id, CONCAT(name ,' ', address) FROM rs12;
SELECT id, CONCAT_WS(' ', name, address) FROM rs12;

SELECT SUBSTRING('Hello Buddy', 1, 4);

SELECT id, SUBSTRING(name, 1, 3), address FROM rs12;

SELECT id, REPLACE(name, 'Sandhya Pandey', 'Avneet Kaur'), address FROM rs12;

SELECT id, REVERSE(name), REVERSE(address) FROM rs12;

SELECT id, name, address FROM rs12
   WHERE LENGTH(name) > 5;

SELECT id, UPPER(name), address FROM rs12;
SELECT id, LOWER(name), address FROM rs12;

SELECT id, LEFT(name, 4) FROM rs12;

SELECT id, RIGHT(name, 4), address FROM rs12;

SELECT TRIM('  Hello   ');

SELECT LEFT('  Hello   ', 4);

SELECT * FROM rs12;