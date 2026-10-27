create database practice;

use practice;

CREATE TABLE patients (
    patient_id INTEGER PRIMARY KEY,
    patient_name TEXT,
    age INTEGER,
    gender TEXT,
    city TEXT
);
CREATE TABLE appointments (
    appointment_id INTEGER PRIMARY KEY,
    patient_id INTEGER,
    department TEXT,
    status TEXT,
    fee DECIMAL(10,2)
);

INSERT INTO patients VALUES
(1, 'Aarav', 45, 'M', 'Jaipur'),
(2, 'Priya', 32, 'F', 'Delhi'),
(3, 'Rahul', 50, 'M', 'Jaipur'),
(4, 'Sneha', 28, 'F', 'Mumbai'),
(5, 'Vikram', 60, 'M', 'Delhi'),
(6, 'Anjali', 35, 'F', 'Pune'),
(7, 'Karan', 40, 'M', 'Jaipur'),
(8, 'Riya', 25, 'F', 'Mumbai'),
(9, 'Amit', 55, 'M', 'Pune'),
(10, 'Nisha', 22, 'F', 'Delhi');


INSERT INTO appointments VALUES
(1, 1, 'Cardiology', 'Completed', 1200.00),
(2, 1, 'General', 'Completed', 500.00),
(3, 2, 'Neurology', 'Pending', 1500.00),
(4, 3, 'Orthopedics', 'Completed', 800.00),
(5, 3, 'General', 'Cancelled', 500.00),
(6, 4, 'Dermatology', 'Completed', 600.00),
(7, 4, 'Cardiology', 'Completed', 1100.00),
(8, 5, 'Neurology', 'Completed', 1600.00),
(9, 6, 'Orthopedics', 'Pending', 900.00),
(10, 7, 'General', 'Completed', 500.00),
(11, 7, 'Dermatology', 'Pending', 650.00),
(12, 8, 'Cardiology', 'Completed', 1300.00),
(13, 1, 'Orthopedics', 'Completed', 850.00),
(14, 2, 'General', 'Completed', 500.00),
(15, 3, 'Cardiology', 'Pending', 1200.00),
(16, 4, 'Neurology', 'Completed', 1400.00),
(17, 5, 'Dermatology', 'Cancelled', 600.00),
(18, 6, 'General', 'Completed', 500.00),
(19, NULL, 'Orthopedics', 'Completed', 800.00),
(20, NULL, 'Cardiology', 'Pending', 1250.00);


select * from patients;

select * from appointments;



-- 1

select * from patients where city='jaipur';


-- 2

select patient_name , age from patients where age>40;


-- 3

select appointment_id,  department, fee from appointments where fee>800;


-- 4

select appointment_id, fee , status from appointments where department='cardiology';


-- 5 

select patient_name , age from patients where gender='f' and city='delhi';


-- 6

select appointment_id,  department, fee from appointments where fee<1000 and status='completed';


-- 7

select patient_name , city from patients where patient_name like 'a%';


-- 8

select appointment_id,  department, fee from appointments where fee between 500 and 1000;


-- 9

select patient_name , city from patients where city in ('mumbai','pune');


-- 10

select appointment_id,  department, status from appointments where status !='completed';


-- 11

select city, count(*) as patient_count  from patients group by city order by city;


-- 12

select gender, count(*) as patient_count from patients group by gender order by gender;


-- 13

select department, sum(fee) as total_fee from appointments group by department order by department;


-- 14

select department, avg(fee) as avg_fee from appointments group by department order by department;

select department, round(avg(fee),2) as avg_fee from appointments group by department order by department;


-- 15

select status, count(*) as total_appointment from appointments group by status order by status;


-- 16

select department, max(fee) as max_fee from appointments group by department order by department;


-- 17

select city, min(age)  as min_age  from patients group by city order by city;


-- 18

select gender, max(age) as max_age  from patients group by gender order by gender;


-- 19

select patient_id, count(*) as app_count from appointments group by patient_id order by patient_id;


-- 20

select status, sum(fee) as total_fee from appointments group by status order by status;


-- 21

select city, count(*)  as count  from patients group by city having count>2 order by city;


-- 22

select department, sum(fee) as sum_fee from appointments group by department having sum_fee>2000 order by department;


-- 23

select status, count(*) as count from appointments group by status having count>4 order by status;


-- 24

select department, round(avg(fee),1) as avg_fee from appointments group by department having avg_fee>800 order by department;


-- 25

select patient_id, count(*) as app_count from appointments group by patient_id having count(*)>=2 order by patient_id;


-- 26

select gender, avg(age) as avg_age  from patients group by gender having avg_age>30 order by gender;


-- 27

select city, min(age)  as min_age  from patients group by city having min(age) >=25 order by city;


-- 28

select department, max(fee) as max_fee from appointments group by department having max_fee>=1200 order by department;


-- 29

select patient_id, sum(fee) as total_fee from appointments group by patient_id having total_fee>1500 order by patient_id;


-- 30

select status, sum(fee) as total_fee from appointments group by status having total_fee<4000 order by status;


-- 31

select p.patient_name , a.department from patients as p inner join appointments as a on p.patient_id=a.patient_id;


-- 32

select a.department , a.fee from appointments as a inner join patients as p  on p.patient_id=a.patient_id where p.patient_name='priya';


-- 33

select p.patient_name , p.city from patients as p INNER join appointments as a on p.patient_id=a.patient_id where status='pending';


-- 34

SELECT 
    p.patient_name, sum(fee) AS total_fee
FROM
    patients AS p
       INNER  JOIN
    appointments AS a ON p.patient_id = a.patient_id
GROUP BY p.patient_name order by p.patient_name;



-- 35

SELECT 
     round(avg(fee),1) AS avg_fee
FROM
    patients AS p
        INNER JOIN
    appointments AS a ON p.patient_id = a.patient_id
where p.city='jaipur';


-- 36

SELECT 
    distinct(department)
FROM
    appointments AS a Inner join patients AS p
         ON p.patient_id = a.patient_id where p.age>40;


-- 37

SELECT 
    p.patient_name, count(*) AS app_count
FROM
    patients AS p
        INNER JOIN
    appointments AS a ON p.patient_id = a.patient_id
GROUP BY p.patient_name order by p.patient_name;



-- 38

SELECT 
    max(a.fee) AS max_fee
FROm
    appointments AS a  Inner join patients AS p ON p.patient_id = a.patient_id
where p.gender='f';


-- 39


SELECT 
    distinct(p.patient_name)
FROM
    patients AS p
       INNER JOIN
    appointments AS a ON p.patient_id = a.patient_id
where a.department in  ('Cardiology' , 'Neurology' );


-- 40

SELECT 
    p.patient_name, p.gender, a.department, a.status
FROM
    patients AS p
         INNER JOIN
    appointments AS a ON p.patient_id = a.patient_id
    where a.fee>1000;


-- 41

SELECT 
    p.patient_name,  a.appointment_id
FROM
    patients AS p
       left JOIN
    appointments AS a ON p.patient_id = a.patient_id;


-- 42 

SELECT 
    p.patient_name 
FROM
    patients AS p
       left JOIN
    appointments AS a ON p.patient_id = a.patient_id
    where a.appointment_id is null;


-- 43

SELECT 
    p.patient_name,  count(a.appointment_id) as app_count
FROM
    patients AS p
       left JOIN
    appointments AS a ON p.patient_id = a.patient_id
    group by  p.patient_id,p.patient_name;


-- 44

SELECT 
    p.patient_name, sum(a.fee) as total_fee
FROM
    patients AS p
       left JOIN
    appointments AS a ON p.patient_id = a.patient_id
    group by p.patient_id, p.patient_name;



-- 45

SELECT 
    p.patient_name, p.age,a.status
FROM
    patients AS p
       left JOIN
    appointments AS a ON p.patient_id = a.patient_id
    ;


-- 46

SELECT 
    a.appointment_id,p.patient_name
FROM
    patients AS p
       right JOIN
    appointments AS a ON p.patient_id = a.patient_id
    ;



-- 47

SELECT 
    a.appointment_id,a.department
FROM
    patients AS p
       right JOIN
    appointments AS a ON p.patient_id = a.patient_id
    where p.patient_id is null;


-- 48

SELECT 
    SUM(a.fee) AS unassigned_fee
FROM
    patients AS p
        RIGHT JOIN
    appointments AS a ON p.patient_id = a.patient_id
WHERE
    p.patient_id IS NULL;



-- 49

SELECT 
    p.city, count(a.appointment_id) as app_count
FROM
    patients AS p
        RIGHT JOIN
    appointments AS a ON p.patient_id = a.patient_id group by p.city
   ;


-- 50

SELECT 
    a.department,a.fee,p.patient_name
FROM
    patients AS p
       right JOIN
    appointments AS a ON p.patient_id = a.patient_id
    ;














