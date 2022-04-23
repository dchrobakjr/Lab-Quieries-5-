

-- 1.

select
	*
from
	sakila.staff;
    
alter table 
	sakila.staff
drop column
	picture;
	
select
	*
from
	sakila.staff;
    
-- 2.

select
	*
from 
	sakila.customer
where
	first_name = 'tammy' and last_name = 'sanders';
    
    
select
	*
from
	sakila.staff;


insert into
	sakila.staff
values 
	(3, 'Tammy', 'Sanders', 79, 'TAMMY.SANDERS@sakilacustomer.org,', 2, 1, 'random','random', sysdate());
    
-- 3.

select 
	customer_id
from
	sakila.customer
where
	first_name = 'charlotte' and last_name = 'hunter';
    
    -- 130
    
select
	*
from
	sakila.rental;
    
    
select
	last_update
from
	sakila.customer    
where
	first_name = 'charlotte' and last_name = 'hunter';

 -- sysdate()
 
 
 
 
 
 -- 4.
 
use sakila;
 
drop table 
	deleted_users;

create table deleted_users(
	customer_id smallint,
    email varchar(50),
    date date default (curdate())
    );

select 
	*
from 
	sakila.customer
where 
	active = 0;
    
select
	*
from
	sakila.deleted_users;

select
	count(*)
from
	sakila.customer;
    
set 
	foreign_key_checks=0;
    
delete from 
	sakila.customer
where 
	active = 0;
    
set 
	foreign_key_checks=1;


select 
	count(*)
from 
	sakila.customer;

    


