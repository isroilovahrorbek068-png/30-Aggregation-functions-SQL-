
create database homework_4
use W3Resource

---> Solutions1
select sum(purch_amt) from Inventory.Orders

---> SOLUTION2
select avg(purch_amt) from Inventory.Orders

---> Solution3 
select count(*) from Inventory.Orders
group by salesman_id
---> in this case we get 12 counts because 
--it retuns the same numbers, To avoid this we will apply distinct function 

select count(distinct salesman_id) from Inventory.Orders
---> Solution4 
select count(distinct customer_id) from Inventory.Orders

---> Solution5 
select count(all grade) from Inventory.Customer
---> Solution6 
select max(purch_amt) from Inventory.Orders

---> Solution7 
select min(purch_amt) from Inventory.Orders

---> Solution8 
select 
		city,
		max(grade) as max_score
from Inventory.Customer
group by city 
order by city desc

---> Solution9 
select 
		salesman_id,
		max(purch_amt)
from Inventory.Orders
group by salesman_id

--> Solution10 
select 
		customer_id,
		ord_date,
		max(purch_amt) as max_amount
from Inventory.Orders
group by customer_id,ord_date

---> Solution11
select 
		salesman_id,
		max(purch_amt)
from inventory.Orders
group by salesman_id, ord_date
having ord_date= '2012-08-17'

---> Solution12 

select 
		customer_id,
		ord_date,
		max(purch_amt)
from Inventory.Orders
where purch_amt >=2000.00
group by customer_id, ord_date

---> Solution13
select 
		customer_id,
		ord_date,
		max(purch_amt)
from Inventory.Orders
where purch_amt between 2000 and 6000
group by customer_id, ord_date
order by customer_id desc

---> Solution14 
select 
		customer_id,
		ord_date,
		max(purch_amt)
from Inventory.Orders
group by customer_id, ord_date
having max(purch_amt) in (2000,3000,5760,6000)

---> Solution15 

select 
		customer_id,
		max(purch_amt)
from Inventory.Orders
group by customer_id
having customer_id between 3002 and 3007

---> Solution16 

select 
		customer_id,
		max(purch_amt)
from Inventory.Orders
where customer_id between 3002 and 3007 
group by customer_id 
having max(purch_amt)>1000

--> Solution17 

select 
		salesman_id ,
		max(purch_amt)
from Inventory.Orders
group by salesman_id
having salesman_id between 5003 and 5008 

--> Solution18 

select  
		count(*)
from Inventory.Orders
where ord_date = '2012-08-17'

--> Solution19 

select	count(salesman_id) as count 
from Inventory.Salesman
where city is not null 

---> Solution20

select 
	ord_date,
	salesman_id,
	count(*) as Count_order
from Inventory.Orders
group by ord_date,salesman_id


---> Solution21

select 
	avg(PRO_PRICE) as average_price
from item_mast 

---> Solution22
select 
		count (*)
from item_mast
where pro_price>= 350 

---> Solution23 
select 
		avg(pro_price),
		pro_com
from item_mast
group by  pro_com

---> Solution24 
select 
		sum(dpt_allotment) 
from emp_details

---> Solution25 
select 
		emp_dept,
		count(*) as coun_of_employees
from emp_details
group by emp_dept


