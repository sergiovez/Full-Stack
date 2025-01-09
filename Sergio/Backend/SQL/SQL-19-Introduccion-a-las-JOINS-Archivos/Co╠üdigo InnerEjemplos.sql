USE WORLD;
SELECT * FROM COUNTRYLANGUAGE;

-- Extrae el nombre de cada país y su lengua o lenguas oficiales
SELECT country.name, countrylanguage.language
from country, countrylanguage
where country.code=countrylanguage.countrycode AND countrylanguage.isOfficial='T';

SELECT country.name, countrylanguage.language
FROM country INNER JOIN countrylanguage
ON country.code=countrylanguage.countrycode
WHERE countrylanguage.isOfficial='T';

SELECT nombre_pais, lengua_oficial
FROM (
	SELECT name as nombre_pais, code
    FROM country) country
    
    INNER JOIN
    
    (SELECT language as lengua_oficial, countrycode
    FROM countrylanguage
    where isOfficial = 'T') countrylanguage
    
ON countrycode = code;


USE SAKILA;

SELECT * FROM ACTOR;
SELECT * FROM FILM_ACTOR;
SELECT * FROM FILM;

-- Extrae todos los titulos de cada pelicula y el identificador asociado del actor que actua en esa pelicula
SELECT TITLE, ACTOR_ID
FROM FILM INNER JOIN FILM_ACTOR
ON film.film_id = film_actor.film_id;

-- Extrae el titulo de la pelicula, el indentificador del actor y el nombre y apellido del actor que actúa en esa pelicula
SELECT TITLE, ACTOR.ACTOR_ID, FIRST_NAME, LAST_NAME
FROM FILM INNER JOIN FILM_ACTOR 
ON film.film_id = film_actor.film_id
INNER JOIN ACTOR
ON ACTOR.ACTOR_ID=FILM_ACTOR.ACTOR_ID;
    
    




