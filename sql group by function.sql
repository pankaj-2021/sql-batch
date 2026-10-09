-- group by

use world;

select district from city group by district;

select district , count(name) from city group by district;

select continent from country;

select distinct continent from country;

select count( distinct continent ) from country;

select name, count(name) from country group by name;

select continent, count(name) from country group by continent;

select district , count(name), sum(population) from city group by district;

select district , count(name) from city group by district;

select countrycode, count(name) from city group by countrycode;

select continent, count(name) from country group by continent having count(name)>10;







-- question

select sum(population), avg(population) from country;

select  sum(population) from country where continent='europe';

select  count(name) ,sum(population) from country where continent='europe';

select continent, count(name) ,sum(population) from country group by continent having continent='europe';

select name ,sum(population) from country where continent='europe' group by name;


select count(name) from country where continent='asia' or 'africa';

select count(name) from country where name like 'r%';

select region, max(population), min(population) from country group by region;

select continent ,region , sum(population) from country group by continent, region;
