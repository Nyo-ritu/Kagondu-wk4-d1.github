--1. How many actors are there with the last name ‘Wahlberg’? 
-- ANS = 2

SELECT COUNT(last_name)
FROM actor
WHERE last_name = 'Wahlberg';

--2. How many payments were made between $3.99 and $5.99? 
-- ANS = 5607

SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;


--3. What film does the store have the most of? (search in inventory) 
-- ANS = 8 is the highest number in stock, and many films are 8 in stock. 

SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;

--4. How many customers have the last name ‘William’? 
-- ANS = 0 There is one 'Williams', but no 'William' as a last name in the table 'customer'.

SELECT COUNT(last_name)
FROM customer
WHERE last_name = 'William';

--5. What store employee (get the id) sold the most rentals? 
-- ANS = staff_id 1 sold 8040, staff_id 2 sold 8004, (Mike Hillyer is staff id_1 
--if rental table and staff table ids reflect same person)

SELECT staff_id, COUNT(rental_id)
FROM rental
GROUP BY staff_id;

--6. How many different district names are there? 
-- ANS = 378

SELECT COUNT(DISTINCT district)
FROM address;

--7. What film has the most actors in it? (use film_actor table and get film_id) 
--Ans = Film_id 508 has 15 actors in it. 

SELECT film_id, COUNT(actor_id)
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;


--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) 
-- ANS = 21

SELECT COUNT(last_name)
FROM customer
WHERE last_name LIKE '%es';


--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers  with ids between 380 and 430? (use group by and having > 250) 
-- ANS == 0, if not zero then not sure what the question is asking...

SELECT customer_id, COUNT(amount)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY customer_id
HAVING COUNT(rental_id) > 250;

--10. Within the film table, how many rating categories are there? And what rating has the most  movies total?
-- ANS == 5 distinct rating categories,  and PG-13 has the most movies (223)

SELECT COUNT(DISTINCT rating) 
FROM film;

SELECT rating, COUNT(title)
FROM film
GROUP BY rating;






