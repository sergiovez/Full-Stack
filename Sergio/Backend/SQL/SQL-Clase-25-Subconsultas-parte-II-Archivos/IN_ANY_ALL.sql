-- OPERADORES IN, ANY y ALL

-- Recordatorio de IN 
SELECT * FROM COUNTRY WHERE CONTINENT IN ('ASIA', 'AFRICA'); -- continent = 'Africa' OR continent = 'Asia'

-- Extraer las ciudades que pertenecen a AFRICA
SELECT Name 
FROM city
WHERE CountryCode IN (SELECT Code from country where Continent = 'Africa');

-- Extraer ciudades que pertenecen a España o Argentina
SELECT Name
FROM city 
WHERE CountryCode IN(SELECT Code FROM country WHERE Name IN('Spain' , 'Argentina'));

-- Extraer ciudades que pertenezcan a Europa o a Asia

SELECT Name
FROM city
WHERE CountryCode IN ( SELECT Code FROM country WHERE Continent IN('Europe', 'Asia'));

-- ANY , ALL
/*
	ANY(Valor1, Valor2, Valor3) -> VERDADERO SI CUALQUIERA DE LOS VALORES CUMPLE LA CONDICIÓN
    ALL(Valor1, Valor2, Valor3) -> VERDADERO SI TODOS LOS VALORES CUMPLEN LA CONDICIÓN
*/

-- Países que tienen más esperanza de vida que CUALQUIER país de ASIA
SELECT Name, Continent, LifeExpectancy FROM COUNTRY
WHERE LifeExpectancy > ANY(SELECT LifeExpectancy FROM country Where Continent = 'Asia')
ORDER BY LifeExpectancy;

SELECT Name, LifeExpectancy From Country where Continent = 'Asia' order by LifeExpectancy DESC;

-- Países que tienen más esperanza de vida que TODOS los países de ASIA
SELECT Name, Continent, LifeExpectancy FROM COUNTRY
WHERE LifeExpectancy > ALL(SELECT LifeExpectancy FROM country Where Continent = 'Asia')
ORDER BY LifeExpectancy;

-- Países que tienen más poblacion que CUALQUIER país de Africa
SELECT Name, Continent, Population FROM country
WHERE Population > ANY(SELECT Population FROM Country WHERE Continent = "Africa");

-- Países que tienen más población que TODOS los paises de Africa
SELECT Name, Continent, Population FROM country
WHERE Population > ANY(SELECT Population FROM Country WHERE Continent = "Africa");



