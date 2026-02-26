-- Use DB sakila
USE sakila;

-- 1) Film prices , From film, show: film_id, title, rental_rate Get only the films where rental_rate is 9.99 or 4.99.
SELECT film_id, title, rental_rate
FROM film
WHERE rental_rate IN (9.99, 4.99);--
-- WHERE rental_rate = 9.99
--     OR rental_rate = 4.99;

-- 2) Film length + rating , From film, show: title, length, rating Find films that are 90 to 120 minutes (inclusive) 
-- and rating is PG or PG-13.
SELECT title, length, rating
FROM film
WHERE LENGTH BETWEEN 90 AND 120
      AND rating IN ('PG', 'PG-13');
-- WHERE LENGTH BETWEEN 90 AND 120
--      AND (rating = 'PG' OR rating = 'PG-13');
      
-- 3) Actor last names , From actor, show: actor_id, first_name, last_name Find actors whose last_name starts with S OR ends with N.
SELECT actor_id, first_name, last_name
FROM actor
WHERE last_name LIKE 'S%' OR
      last_name LIKE '%N';

-- 4) Active customers + email filter , From customer, show: customer_id, first_name, last_name, email
-- Find active customers whose email contains “.org” OR “.net”.
SELECT customer_id, first_name, last_name, email
FROM customer
WHERE active = 1
      AND (email LIKE '%.org%' OR email LIKE '%.net%');

-- 5)  Inactive customers in store 1 , From customer, show: customer_id, store_id, active
-- Find customers from store 1 who are not active.
SELECT customer_id, store_id, active
FROM customer
WHERE store_id = 1
      AND active = 0;

-- 6) Payment amount + date range , From payment, show: payment_id, customer_id, amount, payment_date
-- Find payments with amount between 2.00 and 5.00 and made in February 2007.
SELECT payment_id, customer_id, amount, payment_date
FROM payment
WHERE amount BETWEEN 2.00 AND 5.00
      AND (payment_date >= '2007-02-01 00:00:00' AND payment_date < '2007-02-01 23:59:59');
-- SELECT * FROM payment;
-- Output is null because sakila DB - table payment has no record for the year 2007.

-- 7) Rentals not returned , From rental, show: rental_id, rental_date, return_date, customer_id
-- Find rentals where return_date is NULL.
SELECT rental_id, rental_date, return_date, customer_id
FROM rental
WHERE rental_date IS NULL;
-- There are no return_date which has NULL value.

-- 8)  Address district + postal code present , From address, show: address_id, address, district, postal_code
-- Find addresses where district is Texas or California AND postal_code is not NULL.
SELECT address_id, address, district, postal_code
FROM address
WHERE district IN ('Texas', 'California')
      AND postal_code IS NOT NULL;
-- WHERE (district = 'Texas' OR district = 'California')
--      AND postal_code IS NOT NULL;

-- 9) Replacement cost + exclude titles , From film, show: film_id, title, replacement_cost
-- Find films where replacement_cost is 12.99, 16.99, or 28.99 AND the title does NOT contain the letter A.
SELECT film_id, title, replacement_cost
FROM film
WHERE replacement_cost IN (12.99, 16.99, 28.99)
      AND title NOT LIKE '%A%';
-- WHERE replacement_cost IN (12.99, 16.99, 28.99)
--      AND LOWER(title) NOT LIKE '%a%';

-- 10)  Inventory logic challenge , From inventory, show: inventory_id, film_id, store_id
-- Find inventory items where:
--     • (store_id = 1 AND film_id between 1 and 50)
--           OR
--     • (store_id = 2 AND film_id between 51 and 100)
Select inventory_id, film_id, store_id
FROM inventory
WHERE  (store_id = 1 AND film_id between 1 AND 50)
      OR  (store_id = 2 AND film_id between 51 and 100)