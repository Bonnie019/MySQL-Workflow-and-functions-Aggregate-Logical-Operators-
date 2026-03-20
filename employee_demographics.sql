CREATE TABLE bonniedb.employee_salary
 (first_name VARCHAR(50), last_name VARCHAR(50), 
 department VARCHAR(25), salary INT);
 
INSERT INTO bonniedb.employee_salary
 (first_name, last_name, department, salary)
 VALUES
 ('John', 'David', 'Sales manager', 45000), 
 ('Sarah', 'brown', 'Human Resource', 80000), 
 ('Nathan', 'white', 'Logistics', 35000), 
 ('Simon', 'Ngaruiya', 'Manager', 45000), 
 ('Anne', 'Christian', 'Secretary', 25000), 
 ('John', 'Njue', 'Supervisor', 35000), 
 ('Cate', 'Fitcher', 'Security', 28000), 
 ('Margaret', 'Precious', 'Catering', 15000), 
 ('Charles', 'George', 'Project manager', 95000), 
 ('Peter', 'Higggins', 'Project assistant', 85000);
 
 SELECT* 
 FROM bonniedb.employee_salary;


SELECT* 
 FROM bonniedb.employee_salary
 WHERE first_name = 'Anne'
 ;
 
 SELECT* 
 FROM bonniedb.employee_salary
 WHERE salary > '50000'
 ;
 
 SELECT* 
 FROM bonniedb.employee_salary
 WHERE salary <= '85000'
 ;
 
  CREATE TABLE bonniedb.employee_demographics
 (first_name VARCHAR(50), last_name VARCHAR(40),
 birth_date DATE, age INT, gender VARCHAR(20));

INSERT INTO bonniedb.employee_demographics
 (first_name, last_name, birth_date, age, gender)
 VALUES
('John', 'David', '1990-06-03', 36, 'Male'), 
 ('Sarah', 'brown', '2000-09-23', 26, 'Female'), 
 ('Nathan', 'white', '2001-07-02', 25, 'Male'), 
 ('Simon', 'Ngaruiya', '1978-05-30', 48, 'Male'), 
 ('Anne', 'Christian', '1998-10-06', 28, 'Female'), 
 ('John', 'Njue', '2002-03-05', 24, 'Male'), 
 ('Cate', 'Fitcher', '1988-04-12', 38, 'Female'), 
 ('Margaret', 'Precious', '1999-12-03', 27, 'Female'), 
 ('Charles', 'George', '1995-06-10', 31, 'Male'), 
 ('Peter', 'Higggins', '1992-09-10', 34, 'Male');

SELECT* 
 FROM bonniedb.employee_demographics
 WHERE birth_date > '2000-01-01'
 ;
 
 -- AND OR NOT-- LOGICAL OPERATORS
 SELECT * 
 FROM bonniedb.employee_demographics
 WHERE birth_date > '1999-01-01'
 AND gender ='male'
 ;
 
 SELECT * 
 FROM bonniedb.employee_demographics
 WHERE birth_date > '1999-01-01'
 OR gender ='male'
 ;
 
 SELECT * 
 FROM bonniedb.employee_demographics
 WHERE birth_date > '1999-01-01'
 OR NOT gender ='male'
 ;
 
 SELECT * 
 FROM bonniedb.employee_salary
 WHERE (first_name = 'simon' AND salary = 45000) 
 OR salary > 85000 
 ;
 
 -- LIKE Statement --
 SELECT * 
 FROM bonniedb.employee_salary
 WHERE first_name LIKE 'Nat%'
 ;
 
 SELECT * 
 FROM bonniedb.employee_salary
 WHERE first_name LIKE '%at%'
 ;
 
 SELECT * 
 FROM bonniedb.employee_salary
 WHERE first_name LIKE 'A___'
 ;
 
 SELECT * 
 FROM bonniedb.employee_salary
 WHERE first_name LIKE 'N__%'
 ;

 -- GROUP BY--
 Select gender, AVG(age), Min(age), MAX(age), COUNT(age)
 From employee_demographics
 Group by gender;

