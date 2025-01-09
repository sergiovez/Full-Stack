-- INNER JOIN
SELECT * FROM WORLD.COUNTRY ;  -- PADRE

SELECT * FROM WORLD.CITY ; -- HIJA

-- INNER JOIN CON WHERE / JOIN CON WHERE 

SELECT city.name, country.name
FROM world.city, world.country
WHERE city.CountryCode = country.Code;

-- JOIN CON INNER JOIN
SELECT city.name, country.name 
FROM world.city INNER JOIN world.country
ON city.CountryCode = country.code;

-- INNER JOIN
SELECT nombre_ciudad, nombre_pais
FROM (
	SELECT name as nombre_ciudad, countryCode
	from world.city) city
    
	INNER JOIN 
    
	(SELECT name as nombre_pais, code
	from world.country) country

ON city.CountryCode = country.code;



