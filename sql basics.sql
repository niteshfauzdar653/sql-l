show databases;
use world;
show tables;
use world;
show tables;
select* from country
select * from country where continent='Asia';
select name,continent,indepyear from country where indepyear='1919';
select * from country where continent in ('Africa','Asia');
select * from country where indepyear in (1991,1960);
select * from country where indepyear  not between 1960 and 1991;
select*from  countary name,continent where region not in 'SouthEurope'; 
select*from country name,population,region where population not between 5000 and 300000; 
select name,population,population*0.1+ population from country; 
select* from country where lifeexpectancy in (75.1,77.8);
select* from country where name not like 'I%'
select * from country where name like 'r%r'
select * from country where name like 'Ira_'
select  name,continent  from country where  name like 'N%';
select  name,continent  from country where  name like '----%';
select name,continent  from country where  region like '_a_a_';
select name,continent  from country where  continent is not (America,south america);

select name,code,concat(name,'-',code'-','regex') from country;
select name,code,concat_ws('-'name,code,'regex') from country;
select name,substr(name,2),substr(name,-4,2) from country;
select name,continent,substr(name,1,1),substr(continent,1,1) from country where substr(name,1,1)=substr(continent,1,1)
---get the country name and population wHRERE	 the sUBtrst 3 charter of company is ALG
select name,poulation from country where substr(name,1,3)='alg';
select name,instr(name,'e') from country;
select name, char_length(name)from country;
select char_length('       nitesh        ');
select trim('             nitesh      ');
select char_length( rtrim('       nitesh        '));
select trim(both'z' from '          tushar zzzzz');
select name,trim( both 'a' from trim( both'A' from name))from country;
select name,population from country;
select name,population,lpad(population,9,"#") from country;
select name,population,rpad(population,9,"#") from country;
select name from world where capital=concat(name,' ','city');
use world;
select lifeexpectancy,round(lifeexpectancy) from country;
select 30.68, round(30.62,1);
select 6.0012, round( 14.0012,-1);
select 456.68,round(456.68,1);
select 456.68,round(456.68,-2), truncate(3653.68,-2);
select mod(10,3);
 select ceil(4.000);
 select floor (4.8888);
 select now();
 select now(),adddate( now(),2);
 select now(),adddate(now(),interval 2 month);
 select now(),extract(year from now());
 select now(),extract(week from now());
 select now(),extract(year from now()),date_format(now(),'year is %y');