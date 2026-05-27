CREATE DATABASE employee_management;
USE employee_management;

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    job_role VARCHAR(50),
    salary DECIMAL(10,2),
    joining_date DATE,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

INSERT INTO departments VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Support');

INSERT INTO employees VALUES
(101, 'Rahul', 'Developer', 55000, '2024-01-10', 1),
(102, 'Sneha', 'HR Executive', 40000, '2023-11-12', 2),
(103, 'Kiran', 'Support Analyst', 45000, '2024-02-20', 4),
(104, 'Anjali', 'Finance Associate', 50000, '2023-09-15', 3),
(105, 'Vamsi', 'Support Engineer', 47000, '2024-03-05', 4);

SELECT * FROM employees;

UPDATE employees
SET salary = 60000
WHERE emp_id = 101;

DELETE FROM employees
WHERE emp_id = 102;

SELECT emp_name, job_role
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id
WHERE d.dept_name = 'Support';

SELECT MAX(salary) AS highest_salary
FROM employees;

SELECT d.dept_name, AVG(e.salary) AS avg_salary
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

SELECT *
FROM employees
WHERE salary > 45000;
