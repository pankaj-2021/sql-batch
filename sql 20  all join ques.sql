create database desk;

use desk;

CREATE TABLE departments ( dept_id INTEGER PRIMARY KEY, dept_name TEXT, location TEXT );

 CREATE TABLE employees ( emp_id INTEGER PRIMARY KEY, emp_name TEXT, job_title TEXT, salary DECIMAL(10,2), 
manager_id INTEGER, dept_id INTEGER, hire_date DATE );

INSERT INTO departments VALUES (1, 'Engineering', 'San Francisco'), (2, 'Sales', 'New York'), 
(3, 'Marketing', 'London'), (4, 'HR', 'Chicago'), (5, 'Finance', 'New York'); 

INSERT INTO employees 
VALUES (1, 'Alice', 'CEO', 250000.00, NULL, 1, '2020-01-15'), (2, 'Bob', 'VP Engineering', 180000.00, 
1, 1, '2020-02-01'), (3, 'Charlie', 'VP Sales', 170000.00, 1, 2, '2020-03-15'), (4, 'David', 'VP 
Marketing', 160000.00, 1, 3, '2020-04-10'), (5, 'Eve', 'HR Director', 140000.00, 1, 4, '2020-05-20'), 
(6, 'Frank', 'Software Eng', 110000.00, 2, 1, '2021-01-10'), (7, 'Grace', 'Software Eng', 115000.00, 
2, 1, '2021-02-15'), (8, 'Heidi', 'Data Scientist', 130000.00, 2, 1, '2021-03-20'), (9, 'Ivan', 
'Sales Rep', 80000.00, 3, 2, '2021-04-25'), (10, 'Judy', 'Sales Rep', 85000.00, 3, 2, '2021-05-30'), 
(11, 'Kevin', 'Sales Rep', 82000.00, 3, 2, '2021-06-05'), (12, 'Laura', 'Marketing Spec', 75000.00, 
4, 3, '2021-07-10'), (13, 'Mallory', 'Marketing Spec', 78000.00, 4, 3, '2021-08-15'), (14, 'Niaj', 
'HR Generalist', 65000.00, 5, 4, '2021-09-20'), (15, 'Olivia', 'Finance Manager', 120000.00, 1, NULL, 
'2020-10-25'), (16, 'Peggy', 'Accountant', 70000.00, 15, NULL, '2021-11-30'), (17, 'Trent', 'Software 
Eng', 105000.00, 2, 1, '2022-01-05'), (18, 'Victor', 'DevOps Eng', 125000.00, 2, 1, '2022-02-10'), 
(19, 'Walter', 'Sales Rep', 79000.00, 3, 2, '2022-03-15'), (20, 'Zoe', 'Marketing Spec', 72000.00, 4, 
3, '2022-04-20');

select * from departments;

select * from employees;



-- 1

select emp_name, salary from employees where salary>100000;


-- 2

select emp_name, hire_date from employees where hire_date>'2021-01-01';


-- 3

select dept_name, location from departments where location='San Francisco';


-- 4

select emp_name, job_title from employees where job_title='Software Eng';


-- 5

select emp_name, salary from employees where salary between 70000 and 90000;


-- 6

select job_title, count(*) as emp_count from employees group by job_title;


-- 7

select dept_id, sum(salary) as total_salary from employees where dept_id is not null group by dept_id;


-- 8

select dept_id, avg(salary) as avg_salary from employees where dept_id is not null group by dept_id;


-- 9

SELECT 
    dept_id, SUM(salary) AS total_salary
FROM
    employees
WHERE
    dept_id IS NOT NULL
GROUP BY dept_id
HAVING total_salary > 300000;


-- 10

select job_title, count(*) as emp_count from employees group by job_title having emp_count>2;

SELECT job_title, COUNT(*) AS emp_count
FROM employees
GROUP BY job_title
HAVING COUNT(*) > 2;


-- 11

select e.emp_name, d.dept_name from employees as e join departments as d on e.dept_id=d.dept_id;


-- 12

SELECT e.emp_name,e.salary, d.location
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id
where d.location='new york';


-- 13

SELECT d.dept_name, sum(e.salary)
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id
group by d.dept_name;



-- 14

SELECT e.emp_name, d.dept_name
FROM employees e
left JOIN departments d
ON e.dept_id = d.dept_id;


-- 15

SELECT e.emp_name
FROM employees e
left JOIN departments d
ON e.dept_id = d.dept_id where d.dept_name is null;


-- 16

SELECT d.dept_name, count(e.emp_id) as emp_count
FROM departments d left join employees as e
ON e.dept_id = d.dept_id
group by d.dept_id, d.dept_name;


-- 17

SELECT d.dept_name
FROM employees e
right JOIN departments d
ON e.dept_id = d.dept_id where e.emp_name is null;


-- 18

SELECT e.emp_name as employee ,m.emp_name as manager
FROM employees e JOIN employees as m
ON e.manager_id = m.emp_id ;

SELECT e.emp_name AS employee,
       m.emp_name AS manager
FROM employees e
INNER JOIN employees m
ON e.manager_id = m.emp_id;



-- 19

SELECT e.emp_name AS employee,
       m.emp_name AS manager
FROM employees e
left JOIN employees m
ON e.manager_id = m.emp_id;



-- 20

SELECT m.emp_name AS manager , count(e.emp_id)
FROM employees e
INNER JOIN employees m 
ON e.manager_id = m.emp_id
group by m.emp_name;






