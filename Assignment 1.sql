-- Q1 Identify the primary key and foreign keys in maven movies db . Discuss the differences
select * from information_schema.key_column_usage where table_schema='mavenmovies';
-- Primary key : Primary key is the column in a database who uniquely identifies the each row of a table/database , whose value can not be zero , duplicate and null 
-- where as foreign key is a column in a database which valu can be repeatable , zero and null and it acts as a primary key of another table, it is a column which creates a relationship between two or more tables.

-- Q2 List all details of actors
select * from actor;

-- Q3 List all customer information from DB
select * from customer;

-- Q4 list different countries
select * from country;
select distinct(country) from country;

-- Q5 Display all active customers.
select * from customer;
select * from customer where active=1;

-- Q6 List of all rental IDs for customer with ID 1
select * from rental;
select rental_id ,customer_id from rental where customer_id=1;

-- Q7 Display all the films whose rental duration is greater than 5
select * from film ;
select title,rental_duration from film where rental_duration >5;

-- Q8 List the total number of films where replacement cost is greater than $15 and less than $20
select * from film ;
select title, replacement_cost from film where replacement_cost >15 and replacement_cost <20;
select count(title) from film where replacement_cost >15 and replacement_cost <20;
select count(film_id) as total_film from film where replacement_cost>15 and replacement_cost<20;

-- Q9 Display the count of unique first names of actors
select * from actor;
select count(distinct(first_name)) from actor;

-- Q10 Display the first 10 records from the customer table
select * from customer limit 10;

-- Q11 Display the first 3 records from customer table whpse first name starts with 'b'
Select first_name from customer where first_name like "b%" limit 3;

-- Q12 	Display the names of the first 5 movies which are rated as 'G'
select title,rating from film where rating='G' limit 5 ;

-- Q13 Find all customers whose first name starts with 'A'
Select first_name from customer where first_name like "A%";

-- Q14 Find all customers whose first name ends with 'a'
select first_name from customer where first_name like "%a";

-- Q15 Display the list of first 4 cities which start and end with a
select * from city;
select city from city where city like "a%a" limit 4 ;

-- Q16 Find all customers whose first name have 'ni' in any position
select first_name from customer where first_name like "%ni%";

-- Q17 Find all customers whose first name has r in the second position
select first_name from customer where first_name like "_r%";

-- Q18 Find all customers whose first name starts with 'a ' and are atleast 5 characters in length
select * from customer where first_name like "a%" and length(first_name)>=5;

-- Q19 Find all customers whose first name starts with a and ends with o
select first_name from customer where first_name like "a%o";

-- Q20 Get the films with PG and PG -13 rating using IN Operator
select * from film where rating in ("PG","PG-13");

-- Q21 GEt the films with length between 50 to 100 using between operator
select * from film where length between 50 and 100; 

-- Q22 Get the top 50 actors using limit operator
select * fRom actor limit 50;

-- Q23 Get the distinct film ids from inventory table
Select distinct(film_id) from inventory;

