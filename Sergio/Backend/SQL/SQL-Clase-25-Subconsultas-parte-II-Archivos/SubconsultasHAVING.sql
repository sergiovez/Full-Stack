-- SUBCONSULTAS EN HAVING

-- Regiones que tengan mas poblacion que todo el continente de Africa
SELECT sum(Population) FROM country WHERE Continent = "Africa";

SELECT REGION, sum(Population) FROM country
GROUP BY REGION
HAVING sum(Population) > (SELECT sum(Population) FROM country WHERE Continent = "Africa");


-- Contientes que tengan una esperanza de vida media mayor que la de China
SELECT LifeExpectancy FROM country WHERE Name ="China";

SELECT Continent, AVG(LifeExpectancy) FROM country 
GROUP BY Continent
HAVING AVG(LifeExpectancy) > (SELECT LifeExpectancy FROM country WHERE Name ="China");