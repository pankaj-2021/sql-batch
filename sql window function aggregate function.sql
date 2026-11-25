create database companyydb;

use companyydb;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

INSERT INTO employees (emp_id, emp_name, department, salary)
VALUES
(1, 'Rahul', 'IT', 50000),
(2, 'Aman', 'IT', 60000),
(3, 'Priya', 'HR', 45000),
(4, 'Neha', 'HR', 55000),
(5, 'Rohit', 'IT', 70000),
(6, 'Anjali', 'Sales', 40000),
(7, 'Karan', 'Sales', 50000),
(8, 'Pooja', 'HR', 60000);

SELECT * FROM employees;



select emp_id,emp_name ,department, sum(salary) over() as company_salary from employees;

select emp_name ,department, sum(salary) over(partition by department) as department_salary from employees;

select emp_id,emp_name ,department, avg(salary) over() as company_avgsalary from employees;

select emp_id,emp_name ,department, avg(salary) over(partition by department) as department_avgsalary from employees;

select emp_id,emp_name ,department, max(salary) over() as company_maxsalary from employees;

select emp_id,emp_name ,department, max(salary) over(partition by department) as department_maxsalary from employees;

select emp_id,emp_name ,department, min(salary) over() as company_minsalary from employees;

select emp_id,emp_name ,department, min(salary) over(partition by department) as department_minsalary from employees;

select emp_id,emp_name ,department, count(*) over() as emp_count from employees  ;

select emp_id,emp_name ,department, count(*) over(partition by department) as emp_count from employees  ;

select emp_name , department, salary, sum(salary) over(partition by department) as department_salary from employees;

select emp_name , department, salary, avg(salary) over(partition by department) as department_avgsalary , salary-avg(salary) over(partition by department) as diffrence from employees;

select emp_name , department, salary, sum(salary) over(partition by department) as department_salary ,  (salary*100)/sum(salary) over(partition by department) as contribute_percentage from employees;

select emp_name , department, salary, sum(salary) over(partition by department) as department_salary from employees;

select emp_id,emp_name ,department, salary, avg(salary) over(partition by department) as department_avgsalary from employees;

select emp_id,emp_name ,department,salary, max(salary) over(partition by department) as department_maxsalary from employees;

select emp_id,emp_name ,department,salary, min(salary) over(partition by department) as department_minsalary from employees;

select emp_id,emp_name ,department,salary,sum(salary) over(partition by department) as department_salary ,avg(salary) over(partition by department) as department_avgsalary, max(salary) over(partition by department) as department_maxsalary, min(salary) over(partition by department) as department_minsalary from employees;









