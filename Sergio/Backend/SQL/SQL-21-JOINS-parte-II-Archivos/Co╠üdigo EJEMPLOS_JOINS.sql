USE SAKILA;

-- Extrae y calcula la cantidad de actores que hay por cada película
SELECT f.film_id, title, count(factor.film_id) AS 'numero_actores'
FROM film as f LEFT JOIN film_actor as factor
ON factor.film_id = f.film_id
group by f.film_id;



select * from inventory;

SELECT FILM_ID, STORE_ID, COUNT(*) AS CANTIDAD
FROM INVENTORY
GROUP BY FILM_ID, STORE_ID
ORDER BY FILM_ID, STORE_ID;

SELECT * FROM FILM WHERE FILM_ID=1;

SELECT title, count(*) as 'cantidad'
FROM inventory RIGHT JOIN film
ON inventory.film_id = film.film_id
GROUP BY TITLE
HAVING TITLE= 'ACADEMY DINOSAUR';




