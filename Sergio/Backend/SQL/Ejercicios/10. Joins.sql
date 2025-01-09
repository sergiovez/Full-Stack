-- 1. Extrae el continente, el país y el nombre de la ciudad de las tablas correspondientes de la base de datos world.
SELECT *FROM CITY;
SELECT *FROM COUNTRY;
SELECT country.Continent AS 'Continente', country.Name AS 'Pais', city.Name AS 'Ciudad' 
	FROM world.city INNER JOIN world.country
    ON city.CountryCode = country.Code
    ORDER BY Continente, Pais;
-- 2. Extrae el identificador de cada película, el título y también el identificador de la categoría asociado a esa película. Usa la base de datos sakila.
USE sakila;
SELECT *FROM film;
SELECT *FROM film_category;
SELECT *FROM category;
SELECT film.film_id AS 'ID_Pelicula', title AS 'Titulo', category_id AS 'ID_Categoria'
	FROM sakila.film INNER JOIN sakila.film_category
    ON film.film_id = film_category.film_id
    ORDER BY ID_Pelicula;
-- 3. Extrae la misma información que en el ejercicio anterior, pero además, extrae el nombre de la categoría.
SELECT film.film_id AS 'ID_Pelicula', title AS 'Titulo', film_category.category_id AS 'ID_Categoria', category.name AS 'Nombre_Categoria'
	FROM sakila.film_category INNER JOIN sakila.film
		ON film_category.film_id = film.film_id
    INNER JOIN sakila.category
		ON film_category.category_id = category.category_id
	ORDER BY ID_Pelicula;
-- 4. Escribe el enunciado de unos cuantos posibles ejercicios para proponerlos y corregirlos en la siguiente sesión.
