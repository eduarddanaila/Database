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

select name, population from country where population is not null and population >0 order by population asc limit 1;

#9.	Using aggregate functions, return the number of countries the database contains.

select count(name) from country;

#10.	What are the top ten largest countries by area?

select name from country order by surfacearea DESC limit 10;

#11.	List the five largest cities by population in Japan.

 select city.name from city join country on country.code=city.countrycode where country.name="Japan" order by country.population desc limit 5;
 
 #12.	List the names and country codes of every country with Elizabeth II as its Head of State. You will need to fix the mistake first!
 update country set headofstate="elizabeth II" where headofstate="elisabeth II";
 select name, code from country where headofstate="elisabeth II";
 
 #13.	List the top ten countries with the smallest population-to-area ratio. Discard any countries with a ratio of 0.
 
 select name, population, surfacearea from country where population>=1 order by population/surfacearea asc limit 10;
 
 #14.	List every unique world language.
 
 select distinct language from countrylanguage;
 
 #15.	List the names and GNP of the world's top 10 richest countries.
 
 select name, GNP from country order by GNP DESC limit 10;
 
 #16.	List the names of, and number of languages spoken by, the top ten most multilingual countries
 
 