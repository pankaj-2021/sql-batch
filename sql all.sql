show databases;

use world;

show tables;

select * from city;

select * from world.city;

select * from city where name = 'kabul';

select * from city where id>5;

select * from city where id between 7 and 10;

select * from city where id not between 7 and 10;


select * from city where id in (2,7,10);

select * from city where id in (2,7,10,-8);

select * from city where id not in (2,7,10);

select * from city where id=7 or id=10;

select * from city where id=7 and id=10;

select * from city where id<7 or id>2;

select * from city where id<7 and id>2;

select * from city where id<7 and id=2;

select * from city where id<7 or id=2;

select * from city where id<7 or id=10 and id>4;

select * from city where (id<7 or id=10 )and id>4;

select * from city where not (id<7 or id=10 )and id>4;

select * from country;

select * from city where name like 'durg';

select * from city where name like 'durg_';


select * from city where name like 'durg_%';

select * from city where name like 'dur%';

select * from city where name like 'd%';

select * from city where name like '%d';

select * from city where name like '%d%';

select * from city where name like '%d__%';

select * from city where name like '_d%';

select * from city where name like '__d%';

select * from city where name like '_t%';

select * from city where name like '___d%';

select * from city where name like '%g_';


select * from city where name like '%____%';

select * from city where name like '%a_a%';

select * from city where name like '%s%s%';

select * from city where name like '_t%';

select * from city where name like '___d%';

select * from city where name like '%g_';


select * from city where name like '%____%';

select * from city where name like '%a_a%';

select name, upper(name) from city;



describe city;

select name, concat(name,continent) from country;

SELECT 
    name, CONCAT(name, ' ', continent)
FROM
    country;

SELECT 
    name, CONCAT(name, 'have', continent)
FROM
    country;

select name, concat(name,' have ' ,continent) from country;

select name, concat_ws(' ',name ,continent) from country;

select name, concat_ws(' & ',name ,continent) from country;

select name, substr(name,2) from country;

select name, substr(name,2,4) from country;

select name, substr(name,-4) from country;

select name, substr(name,-4,2) from country;

select name, length(name) from country;

select name, length(name) , char_length(name) from country;

select name, length(ㅋ), char_length(ㅋ) from country;

select name, replace(name,'a','@') from country;

select trim('    hello   ');

select trim('    hello   ');

select trim('hello');

select trim('  hel  lo   ');

select name , lpad(name,6,'&') from country;

select name , rpad(name,7,'+') from country;


select round(6.48), round(6.78);

select round(6.43 , 1), round(6.78 , 1);


select round(6.48 , 2), round(6.78 , 1);

select round(26.48 , -1);

select round(53.48 , -1);

select round(143.98, -2);

select round(973.98, -2);

select round(1493.98, -3);

select round(8893.98, -3);

select truncate(239.98,1);

select truncate(239.398,2);

select round(239.398,2), truncate(239.398,2);

select mod(4,3);

select floor(34.88);

select ceil(37.0000);

select abs(10.87), abs(-987.09);

