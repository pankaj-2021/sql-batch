
use world;


-- ifnull


select name, indepyear, indepyear+100, ifnull(indepyear,0) from country;


-- coalesce



select name, indepyear, lifeexpectancy, coalesce(indepyear, lifeexpectancy, name) from country;




-- if else statement


select name, population, indepyear from country;

select name, population, indepyear, if(indepyear>1947, true, false) from country;

select name, population, indepyear, if(indepyear>1947, 'after india', false) from country;


select name, population, indepyear, if(indepyear>1947, true, 'before india') from country;


select name, population, indepyear, if(indepyear>1947, 'after india', 'before india') from country;


select name, population, indepyear, if(indepyear>1947, 'after india',
          if(indepyear>1920, 'just before india', 'before india') ) from country;



-- case statement


select name, population, indepyear,
case
    when indepyear>1947  then  'after india'
    when indepyear>=1919  then  'before india'
    
    else  'no condition'
end
from country;

select name, continent, population,
case
    when population between 200000 and 500000 then  'avarage population'
    when  population > 500000 then  'large population'
    
    else  'small population'
end as category
from country;


select continent, count(name),
case
    when count(name)>35 then 'large scale continent'
    when count(name)>15 then 'avarage scale continent'
    when count(name)>10 then 'small scale continent'
    end as continent_size
from country
group by continent;







