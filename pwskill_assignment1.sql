--1 Identify the primary keys and foreign keys in maven movies db. Discuss the differences ----
SELECT 
    TABLE_NAME, COLUMN_NAME
FROM
    information_schema.KEY_COLUMN_USAGE
WHERE
    CONSTRAINT_NAME = 'PRIMARY'
        AND TABLE_SCHEMA = 'mavenmovies';

--2 List all details of actors----
select* from actor;

--3 List all customer information from DB. 
select*from customer;

--4 List different countries. 
select* from country;

--5 Display all active customers. 
select* from customer;

--6 List of all rental IDs for customer with ID 1. 
select rental_id from payment where customer_id=1;

--7 Display all the films whose rental duration is greater than 5 . 
select title , rental_duration from film where rental_duration>5;

--8 List the total number of films whose replacement cost is greater than $15 and less than $20. 
select count(*) as total_film from film where replacement_cost between 15 and 20;
select count(*) as total_no_of_film from film where replacement_cost>15 and replacement_cost <20;

--9 Find the number of films whose rental rate is less than $1.
select title , rental_rate from film where rental_rate <1;

--10 Display the count of unique first names of actors. 
select count(distinct(first_name)) from actor;

--11 Display the first 10 records from the customer table . 
select*from customer limit 10;

--12 Display the first 3 records from the customer table whose first name starts with ‘b’. 
select first_name from customer where first_name like 'b%' limit 3;

--13 Display the names of the first 5 movies which are rated as ‘G’. 
select title , rating from film where rating='g' limit 5;

--14 Find all customers whose first name ends with "a". 
select first_name from customer where first_name like '%a';

--15 Display the list of first 4 cities which start and end with ‘a’ . 
Select city from city where city like '%a';

--16 Find all customers whose first name have "NI" in any position. 
select first_name from customer where first_name like '%ni%';

--17 Find all customers whose first name have "r" in the second position .
select first_name from customer where first_name like '_r%';

--18 Find all customers whose first name starts with "a" and are at least 5 characters in length. 
select first_name from customer where first_name like 'a%' and length(first_name)>=5;

--19 Find all customers whose first name starts with "a" and ends with "o". 
select first_name from customer where first_name like 'a%o';

--20 Get the films with pg and pg-13 rating using IN operator. 
select title, rating from film where rating in ('pg','pg-13');

--21 Get the films with length between 50 to 100 using between operator. 
Select title,length from film where length between 50 and 100;

--22 Get the top 50 actors using limit operator. 
SELECT* FROM ACTOR order by actor_id limit 50;

---Get the distinct film ids from inventory table. 
SELECT distinct film_id from film;
