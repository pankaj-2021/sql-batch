select now();

select current_date();

select current_time();


select current_timestamp();

select now() , adddate(now(),2);

select now() , adddate(now(),-2);

select now() , subdate(now(),2);

select now() , adddate(now(),interval 1 month);

select now() , adddate(now(),interval 1 quarter);

select now() , adddate(now(),interval 6 year);

select now() , extract(year from now());

select now() , extract(month from now());

select payment_date , extract(hour from payment_date) from sakila.payment;

select now(), datediff(now(),'2026-9-9');

select now(), date_format(now(),'%m');

select now(), date_format(now(),'%M');

select now(), date_format(now(),'%y');

select now(), date_format(now(),'%Y');

select now(), date_format(now(),'%d');

select now(), date_format(now(),'%D');

select now(), date_format(now(),'%T');





