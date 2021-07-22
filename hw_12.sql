-- Query 1
SELECT COUNT(*) FROM film
WHERE length >
(SELECT AVG(length) FROM film);

-- Query 2
SELECT COUNT(*) FROM film
WHERE rental_rate =
(SELECT MAX(rental_rate) FROM film);

-- Query 3
SELECT * FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film) 
AND replacement_cost = (SELECT MIN(replacement_cost) FROM film);

-- Query 4
SELECT customer_id, COUNT(*) AS "Number of Orders" FROM payment
GROUP BY customer_id
ORDER BY COUNT(*) DESC;
