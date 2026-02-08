create database dars_4
use dar_4


select [empid],
		[firstname],
		[city],
		[country],
		[mgrid]
from [TSQL2012].[HR].[Employees]


create table salary
		(id int, 
		name nvarchar(10),
		city nvarchar (10),
		country nvarchar(10),
		mgrid int, 
		salary int)
    
	select *from salary 

insert into salary(
	id,name,city, country, mgrid)
select [empid],
		[firstname],
		[city],
		[country],
		[mgrid]
from [TSQL2012].[HR].[Employees]

select country, max(salary) as max_salary 
from salary
group bu country



seelct *from salary

select country, city, sum(salary) as total_salary from salary.
group by country,city

select city, count(*) soni from salary 
group by city 
having count(*)>1 

select top 10,country, avg(salary) as AVG
from salary 
where salary >1000  and mgrid is not null 
group by country
having count(*)>2 
order by Avg

select shipcountry, count(*)-count(shipregion) as num 
from orders
group by shipcountry 
having count(*)-count(shipregion)>0
order by num desc

---

select *from orders 
where shipcountry = 'France' and shipregion is null 





select * from HR.EMployees 
 
select min(salary) as min,
		max(salary) as max,
		sum (id) as sum, 
		count (mgrid) as avg
		from salary 



