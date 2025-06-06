-- SELECT: 
-- 1. List all films with their title and release year
SELECT film.title, film.release_year 
FROM sakila.film;

-- 2. Select the title and renatl duration of all firms longer than 120 minutes.
SELECT film.title, film.rental_duration, film.length
FROM film
WHERE film.length > 120;

-- 3. Show the first 10 customer first and last names alphabetically
SELECT customer.first_name, customer.last_name
FROM customer 
LIMIT 10;

-- 4. Get the email addresses of all active customers
SELECT customer.first_name, customer.last_name, customer.email
FROM customer
WHERE customer.active = 1;

-- 5. Select the names of all actors whose last name starts with 'S'
SELECT actor.last_name, actor.first_name
FROM actor
WHERE actor.last_name LIKE "S%";

-- INSERT: 
-- 1. Insert a new film into the film table
INSERT INTO film(title, description, release_year, language_id, length, replacement_cost, rating, special_features, last_update)
VALUES ("Jurassic Park: Sarah\'s Dinos", "Sarah\'s Jurassic Park in the year 2055", 2027,  1, 345, 300.00, "G", null, "2010-5-18 00:00:00");
-- Could not add value to special features, generates Data truncation error

-- 2. Add a new category called 'Documentary'
INSERT INTO category (name, last_update)
VALUES ("Thriller", '2025-03-17 05:06:17');

-- 3. Insert a new actor into the actor table.
INSERT INTO actor (first_name, last_name, last_update)
VALUES ("Sarah", "Farris", '2025-06-06 15:55:17');

-- 4. Add a new address to the address table
INSERT INTO address(address, district, city_id, postal_code, phone, location, last_update)
VALUES("555 Main St", "California", "000", "94103", "777-777-7777", '2025-03-17 05:06:17');

ALTER TABLE address