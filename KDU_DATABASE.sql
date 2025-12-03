CREATE DATABASE IF NOT EXISTS employee ; 

USE employee  ;
 
 CREATE TABLE department(
   department_id INT PRIMARY KEY ,
   department_name VARCHAR(100) NOT NULL 
   ) ; 
   
   CREATE TABLE employee(
    employee_id INT PRIMARY KEY ,
    employee_name VARCHAR(100) NOT NULL ,
    salary DECIMAL(10, 2) , 
    
    department_id INT ,
    FOREIGN KEY (department_id) REFERENCES department(department_id) 
    ) ;     
    
    -- DUMMY DATA 
    -- Insert data into the department table
INSERT INTO department (department_id, department_name) VALUES
(1, 'IT'),
(2, 'Human Resources'),
(3, 'Sales'),
(4, 'Marketing');

-- Insert data into the employee table
INSERT INTO employee (employee_id, employee_name, salary, department_id) VALUES
(1001, 'Alice Johnson', 75000.00, 1),
(1002, 'Bob Williams', 62000.00, 2),
(1003, 'Charlie Brown', 90000.00, 1),
(1004, 'Diana Prince', 58000.00, 3),
(1005, 'Eve Adams', 72000.00, 3),
(1006, 'Frank Miller', 110000.00, 4),
(1007, 'Grace Lee', 65000.00, 2);
   --  QUERIES 
   SELECT 
   E.employee_id ,
   E.employee_name  ,
   D.department_name
   FROM 
   employee E 
   JOIN 
   department D ON E.department_id = D.department_id  ;
    
   -- 2  
   SELECT * FROM  employee  ORDER BY salary DESC ;  
   
   -- 3 
   SELECT D.department_name , AVG(E.salary) AS AVG_salary FROM employee AS E  
    JOIN department AS D ON E.department_id = D.department_id
    GROUP BY 
    D.department_name 
    ORDER BY 
    AVG_salary DESC ;
     
