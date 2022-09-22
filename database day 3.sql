#answers to world exercise
use world;

show tables;

select * from city;
select * from country;
select * from countrylanguage;

#	Using COUNT, get the number of cities in the USA
select count(name) from city where countrycode="USA";

#2.	Find out the population and life expectancy for people in Argentina
select population, lifeexpectancy from country where code="arg";

#3.	Using IS NOT NULL, ORDER BY, and LIMIT, which country has the highest life expectancy?

select `name` from country order by lifeexpectancy desc limit 1;

#4.	Using JOIN ... ON, find the capital city of Spain.

select city.`name` from country join city on country.capital=city.ID where countrycode="ESP";

#5.	Using JOIN ... ON, list all the languages spoken in the Southeast Asia region.

select `language` from countrylanguage join country on countrylanguage.countrycode=country.code where region="southeast asia";

#6.	Using a single query, list 25 cities around the world that start with the letter F.

select `name` from city where `name` like "f%" limit 25;

#7.	Using COUNT and JOIN ... ON, get the number of cities in China.

select count(id) from city join country on city.countrycode=country.code where country.`name`="China";

#8.	Using IS NOT NULL, ORDER BY, and LIMIT, which country has the lowest population? Discard non-zero populations.

select name, population from country where population is not null and population >0 order by population asc;