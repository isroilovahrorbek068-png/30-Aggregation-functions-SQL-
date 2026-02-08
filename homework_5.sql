create database homework_5 
use homework_5 
use W3Resource
--> solution 1
select * from Inventory.Salesman
where city = 'Paris' or city= 'Rome'

--> solution 2

select * from Inventory.Salesman
where city = 'Paris' or city= 'Rome'

--> solution 3

select * from Inventory.Salesman
where city not in ('Paris','Rome')

--> Solution 4 


select * from Inventory.Customer
where customer_id in (3007,3008,3009)

--> solution 5 


select * from Inventory.Salesman
where commission between 0.12 and 0.14 

--> solution 6 
select *from Inventory.Orders
where (purch_amt between 500 and 4000) 
and not purch_amt in (948.50, 1983.43)

--> solution 7
select * from Inventory.Salesman
where name between 'A' and 'L'

--> solution 8 

select * from Inventory.Salesman
where name not between 'A' and 'L'

--> solution 9 
select *from Inventory.Customer
where cust_name like 'B%'

--> Solution 10 

select * from Inventory.Customer
where cust_name like '%n'

--> solution 11

select *from Inventory.Salesman
where name like 'N_1%'

--> solution 20 
select *from Inventory.Customer
where grade is null 

--> solution 21

select *from Inventory.customer 
where grade is not null 

--> solution 22 
select *from emp_details
where emp_lname like 'D%'
select *from Hospital.Trained_in
 --- solution (movie)
select 
	mov_title,
	mov_year 
from Movies.movie

--- 
select mov_year from Movies.Movie
where mov_title = 'American Beauty'

--- 
select mov_title from movies.movie 
where mov_year = 1999
--- 
select mov_title from Movies.movie
where mov_year <= 1998

---
select reviewer.rev_name from Movies.Reviewer
Union 
select movie.mov_title from Movies.Movie

--- 
select reviewer.rev_name from Movies.Reviewer
where reviewer.rev_id = Reviewer.rev_id
and Reviewer.rev_id >= 7 
and reviewer.rev_name is not null

--- 
select mov_title from movies.movie
where mov_id in (905,907,917)

--- 
select mov_id, mov_title, mov_year from movies.movie
where mov_title like '%Boogie%Nights%'
order by mov_year ASC

--- 
select act_id from movies.Actor
where act_fname = 'Woody'
and act_lname= 'Allen'



