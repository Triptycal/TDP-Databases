# ANSWERS TO SAKILA EXERCISE BOOK
USE sakila;
SHOW TABLES;

#1.	List all actors.
SELECT DISTINCT *
FROM actor;

#2.	Find the surname of the actor with the forename 'John'.
SELECT last_name
FROM actor
WHERE first_name='John';

#3.	Find all actors with surname 'Neeson'.
SELECT *
FROM actor
WHERE last_name='Neeson';

#4.	Find all actors with ID numbers divisible by 10.
SELECT *
FROM actor
WHERE actor_id%10=0;

#5.	What is the description of the movie with an ID of 100?
SELECT description
FROM film
WHERE film_id=100;

#6.	Find every R-rated movie.
SELECT title
FROM film
WHERE rating='R';

#7.	Find every non-R-rated movie.
SELECT title
FROM film
WHERE rating!='R';

#8.	Find the ten shortest movies.
SELECT title, length
FROM film
ORDER BY length
LIMIT 10;

#9.	Find the movies with the longest runtime, without using LIMIT.
SELECT title, length
FROM film
WHERE length=(
    SELECT MAX(length)
    FROM film
);

#10.	Find all movies that have deleted scenes.
SELECT title, special_features
FROM film
WHERE special_features LIKE '%Deleted Scenes%';

#11.	Using HAVING, reverse-alphabetically list the last names that are not repeated.
SELECT last_name, COUNT(last_name)
FROM actor
GROUP BY last_name HAVING COUNT(last_name)=1
ORDER BY last_name DESC;

#12.	Using HAVING, list the last names that appear more than once, from highest to lowest frequency.
SELECT last_name, COUNT(last_name)
FROM actor
GROUP BY last_name HAVING COUNT(last_name)>1
ORDER BY COUNT(last_name) DESC;

#13.	Which actor has appeared in the most films?
SELECT f.actor_id, a.first_name, a.last_name, COUNT(f.actor_id)
FROM film_actor f
JOIN actor a ON f.actor_id=a.actor_id
GROUP BY f.actor_id
ORDER BY COUNT(f.actor_id) DESC
LIMIT 1;

#14.	When is 'Academy Dinosaur' due?
SELECT 
    f.title,
    r.rental_date,
    f.rental_duration,
        DATE_ADD(r.rental_date,
        INTERVAL f.rental_duration DAY) AS due_date
FROM
    (rental r
    JOIN inventory i
    ON r.inventory_id = i.inventory_id)
    JOIN film f
     ON f.film_id = i.film_id
WHERE
    f.title = 'ACADEMY DINOSAUR'
        AND r.return_date IS NULL;

#15.	What is the average runtime of all films?
SELECT AVG(length)
FROM film;

#16.	List the average runtime for every film category.
SELECT category, AVG(length)
FROM film_list
GROUP BY category;

#17.	List all movies featuring a robot.
SELECT film_id, title
FROM film
WHERE description LIKE '%robot%';

#18.	How many movies were released in 2010?
SELECT COUNT(release_year)
FROM film
WHERE release_year=2010;

#19.	Find the titles of all the horror movies.
SELECT title
FROM film_list
WHERE category='Horror';

#20.	List the full name of the staff member with the ID of 2.
SELECT CONCAT(first_name, ' ', last_name) AS name
FROM staff
WHERE staff_id=2;

#21.	List all the movies that Fred Costner has appeared in.
SELECT title, actors
FROM film_list
WHERE actors LIKE '%Fred Costner%';

#22.	How many distinct countries are there?
SELECT COUNT(DISTINCT country)
FROM country;

#23.	List the name of every language in reverse-alphabetical order.
SELECT DISTINCT name
FROM language
ORDER BY name DESC;

#24.	List the full names of every actor whose surname ends with '-son' in alphabetical order by their forename.
SELECT first_name, last_name
FROM actor
WHERE last_name LIKE '%son%'
ORDER BY first_name;

#25.	Which category contains the most films?
SELECT category, COUNT(title)
FROM film_list
GROUP BY category
ORDER BY COUNT(title) DESC
LIMIT 1;