create database office;

use office;

CREATE TABLE members (
    member_id INTEGER PRIMARY KEY,
    name TEXT,
    gender TEXT,
    age INTEGER,
    plan_type TEXT,
    join_date DATE
);
CREATE TABLE payments (
    payment_id INTEGER PRIMARY KEY,
    member_id INTEGER,
    amount DECIMAL(10,2),
    payment_date DATE,
    status TEXT
);

INSERT INTO members VALUES
(1, 'Aarav', 'M', 24, 'Pro', '2026-07-01'),
(2, 'Priya', 'F', 28, 'Basic', '2026-07-05'),
(3, 'Rohan', 'M', 22, 'Elite', '2026-07-10'),
(4, 'Neha', 'F', 30, 'Pro', '2026-07-12'),
(5, 'Kabir', 'M', 26, 'Basic', '2026-07-15'),
(6, 'Meera', 'F', 25, 'Pro', '2026-07-18'),
(7, 'Dev', 'M', 35, 'Elite', '2026-07-20'),
(8, 'Ananya', 'F', 23, 'Basic', '2026-07-22'),
(9, 'Vihaan', 'M', 29, 'Pro', '2026-07-25'),
(10, 'Ishaan', 'M', 31, 'Elite', '2026-07-30');

INSERT INTO payments VALUES
(1, 1, 50.00, '2026-08-01', 'Completed'),
(2, 2, 30.00, '2026-08-05', 'Completed'),
(3, 3, 80.00, '2026-08-10', 'Failed'),
(4, 4, 50.00, '2026-08-12', 'Completed'),
(5, 5, 30.00, '2026-08-15', 'Completed'),
(6, 1, 50.00, '2026-09-01', 'Completed'),
(7, 3, 80.00, '2026-09-10', 'Completed'),
(8, 7, 80.00, '2026-08-20', 'Failed'),
(9, 6, 50.00, '2026-08-18', 'Completed'),
(10, 8, 30.00, '2026-08-22', 'Completed');

select * from members;

select * from members;



-- 1

select * from members where age>25;


-- 2

select name ,plan_type from members where gender='f';


-- 3

select * from payments where status='failed';


-- 4

select name ,join_date from members where join_date>'2026-07-15';


-- 5

select name , age ,plan_type from members where plan_type='pro';


-- 6

select payment_id, member_id, amount from payments where amount>40.00;


-- 7

select name, age from members where age between 22 and 28;


-- 8

select name, plan_type from members where name like 'a%' or name like 'm%';


-- 9

select payment_id, member_id, amount , status from payments where member_id in (1 , 3);


-- 10

select payment_id, member_id, amount , payment_date, status from payments where status='completed' and payment_date<'2026-09-01';


-- 11

select plan_type, count(*) as total_members from members group by plan_type order by plan_type;


-- 12

select gender, avg(age) as average_age from members group by gender;

select gender, round(avg(age),2) as average_age from members group by gender order by gender;



-- 13

select status, sum(amount) as total_amount from payments group by status;



-- 14

select member_id, max(amount) as total_payment from payments group by member_id;


-- 15

select payment_date, count(payment_id) as payment_count from payments group by payment_date;


-- 16

select plan_type, count(*) as member_count from members group by plan_type having count(*)>3;


-- 17

select gender , avg(age) as avg_age from members group by gender having avg(age)>25;

select gender , round(avg(age),2) as avg_age from members group by gender having avg(age)>25 order by gender;


-- 18

select member_id, sum(amount) as total_paid from payments group by member_id having  total_paid>80.00;


-- 19

select payment_date, sum(amount) as daily_total from payments group by payment_date having daily_total=50.00;


-- 20 

select plan_type, min(age) as youngest_member from members group by plan_type having youngest_member>=24;


