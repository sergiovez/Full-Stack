-- 1. En la tabla country de la bases de datos world, extraer los siguientes datos:
USE world;
	-- a. Países cuyo continente es Asia y la poblacion supera los 20.000.000
    SELECT Name, Population FROM country WHERE Population>20000000;
	-- b. Países que pertenecen a Asia o a África
    SELECT Name, Continent FROM country WHERE (Continent = 'Asia') OR (Continent = 'Africa');
	-- c. Países que empiecen por B y que pertenezcan a África
    SELECT Name, Continent FROM country WHERE (Continent = 'Africa') AND (Name LIKE 'B%');
	-- d. Países que pertenezcan a Europa y cuya expectativa de vida esté entre 75 y 85 años
    SELECT Name, Continent, LifeExpectancy FROM country WHERE (Continent = 'Europe') AND (LifeExpectancy BETWEEN 75 AND 85);
	-- e. Países cuyo gobierno sea República o Monarquía
    SELECT *FROM country;
    SELECT Name, GovernmentForm FROM country WHERE (GovernmentForm LIKE 'Republic%') OR (GovernmentForm LIKE '%Monarchy%');
	-- f. Países de África que se independizaron despué de los 50 y cuyo gobierno sea república
    SELECT Name, Continent, IndepYear, GovernmentForm FROM country WHERE (Continent = 'Africa') AND (GovernmentForm LIKE 'Republic%') AND (IndepYear > 1959);
-- 2. En la base de datos sakila, buscar dónde se encuentran (en qué tabla) y extraer los siguientes datos:
USE sakila;
	-- a. Todos los actores cuyo nombre no es ‘Tom’ o ‘John’
    SELECT first_name FROM actor WHERE first_name NOT IN ('Tom', 'John');
	-- b. Películas que no están en inglés y que tienen una clasificación ‘PG’
    SELECT title, language_id, rating FROM film WHERE NOT language_id = '1' AND rating = 'PG';
    -- SELECT title, langu
	-- c. Películas que son clasificadas como ‘PG’ o ‘G’
    SELECT title, rating FROM film WHERE rating IN ('PG','G');
	-- d. Alquileres que ocurrieron antes de ‘2005-05-15’ o después de ‘2006-01-01’
    SELECT rental_id, rental_date FROM rental WHERE rental_date BETWEEN '2005-05-15' AND '2006-01-01';
	-- e. Clientes que tienen un nombre que comienza con ‘A’ y que están en ‘Canada’
    SELECT first_name FROM customer WHERE first_name LIKE 'A%';