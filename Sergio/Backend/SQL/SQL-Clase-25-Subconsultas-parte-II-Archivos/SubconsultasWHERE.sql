-- SUBCONSULTAS EN WHERE
-- Dos subconsultas. Extrae el país con mayor población y el país con menor población
	use world;

SELECT Name, Population FROM country 
WHERE 
Population = (SELECT max(Population) FROM country) 
OR 
Population= (SELECT min(Population) FROM country WHERE Population > 0);

-- Columna referenciadas. Extraer el país que tiene la mayor poblacion dentro de su continenteç
SELECT Name, Continent, Population 
FROM country AS paises
WHERE Population = (SELECT Max(population) FROM country WHERE Continent = paises.Continent AND Population >0);

-- Subconsultas con otras tablas. Extraer todas las ciudades que pertenecen a un país.
SELECT Name FROM city WHERE CountryCode = (SELECT CODE FROM COUNTRY WHERE NAME ="United States");



