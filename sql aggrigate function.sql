-- multi row function


use world;

select * from city;

select max(population) from city;

select min(population) from city;

select sum(population) from city;

select count(population) from city;

select avg(population) from city;

select avg(population) , sum(population)/count(population) from city;

select count(name) from city;

select distinct(name) from city;

select count(distinct(name)) from city;

select count(name),count(distinct(name)) from city;

select * from country;

select count(code) from country;
                                              -- count doesnot count null values
select count(indepyear) from country;


select * from city;


select * from city where district='abu dhabi';

select count(*) from city where district='abu dhabi';

select count(*) from city where district='zuid-holland';

