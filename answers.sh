Basic Queries:

1) SELECT * FROM students

2) SELECT * FROM students
WHERE Age >= 30;

3) SELECT * FROM students
WHERE Age >= 30 AND Gender ="F";

4)SELECT * FROM students
WHERE ID = 1;

5) INSERT INTO students 
VALUES ('7', 'Bachir', '36', 'M', '250');

6) UPDATE students
SET Points = '400'
WHERE ID = 2;

7) UPDATE students
SET Points = '150'
WHERE ID = 1;

Creating Table:

CREATE TABLE graduates(
ID Integer Not Null Primary key AUTOINCREMENT,
Name Text Not Null Unique,
Age Integer,
Gender Text,
Points Integer,
Graduation Text 
);


INSERT INTO graduates (name, Age, Gender, Points)
SELECT name, Age, Gender, Points FROM students 
WHERE name = "Layal";

UPDATE graduates
SET Graduation = '08/09/2018'
WHERE ID = 1;

DELETE FROM students WHERE ID = '4';


Joins:

SELECT employees.name, companies.name, companies.date
FROM employees INNER JOIN companies 
ON employees.Company = companies.Name;


SELECT employees.name FROM employees 
INNER JOIN companies
ON employees.Company = companies.Name
WHERE date < 2000;


SELECT companies.name
FROM employees INNER JOIN companies 
ON employees.Company = companies.Name
WHERE Role = "Graphic Designer";



Count & Filter

1) SELECT Name, MAX(Points) FROM students;

2) SELECT avg(Points) FROM students;

3) SELECT Points FROM students WHERE Points = 500;

4) SELECT name FROM students WHERE name like "%s%";

5) SELECT Points FROM students ORDER BY Points DESC;




