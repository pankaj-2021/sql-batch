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