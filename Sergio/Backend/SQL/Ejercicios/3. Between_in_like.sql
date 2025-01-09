USE sakila;
-- 1. Ejercicios con BETWEEN
	-- a. Extrae el nombre y la duración de las películas que duran entre 120 y 130 horas. Utiliza la tabla film
    SELECT title as "Nombre", length as "Duración" FROM film WHERE length BETWEEN '120' and '130';
	-- b. Extrae de la tabla rent, el ‘rental_id’ y el ‘rental_date’ de los alquileres de febrero de 2006
    SELECT *FROM rental;
    SELECT rental_id, rental_date FROM rental WHERE rental_date BETWEEN '2006-02-01' AND '2006-02-28';
	-- c. Extrae de la tabla actor el ‘first_name’ de los actores cuyo primer nombre comience entre B y C
    SELECT first_name FROM actor WHERE first_name BETWEEN 'B' AND 'C';
    
-- 2. Ejercicios con LIKE
	-- a. Averigua los actores cuyo nombre comience en B y termine en A
    SELECT first_name FROM actor WHERE first_name LIKE 'B%a';
	-- b. Extrae los apellidos de los clientes cuyo apellido empiece por MA
    SELECT last_name FROM actor WHERE last_name LIKE 'A%';
	-- c. Extrae los nombres y apellidos de los clientes cuyos apellidos tengan TH en cualquier parte
    SELECT first_name AS 'Nombre', last_name AS 'Apellido' FROM actor WHERE last_name LIKE '%th%';
	-- d. Extrae los apellidos que tengan una A como segunda letra y una E como cuarta letra
    SELECT last_name AS 'Apellido' FROM actor WHERE last_name LIKE '_a_e%';
    
-- 3. Ejercicios con IN
	-- a. Extrae el nombre y los apellidos de los actores cuyo nombre sea: ‘sara’, ‘fred’, ‘ed’ y ‘helen’
    SELECT first_name AS 'Nombre', last_name AS 'Apellido' FROM actor WHERE first_name IN ('sara', 'fred', 'ed', 'helen');
	-- b. Extrae el ‘title’ y el ‘rental_date’ de la tabla film, cuyo ‘rental_date’ sea 2.99 o 4.99
    SELECT title AS 'Titulo', rental_rate AS 'Tasa' FROM film WHERE rental_rate IN (2.99, 4.99);
	-- c. Extrae el título y las características especiales de las películas que sean ‘Deleted scenes’ o ‘Comedy’
    SELECT title AS 'Titulo', special_features AS 'Características especiales' FROM film WHERE special_features IN ('Deleted scenes', 'Comedy');
	-- d. Extrae el nombre de la ciudad cuyo país es el 87 o el 60
    SELECT city FROM city WHERE country_id IN ('87', '60');