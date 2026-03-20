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
 
 
 CREATE TABLE bonniedb.employee_demographics
 (first_name VARCHAR(50), last_name VARCHAR(40),
 birth_date DATE, age INT, gender VARCHAR(20));
 
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