USE world;
SELECT *FROM country;
SELECT *FROM city;
SELECT *FROM countrylanguage;
-- 9. Encuentra la cantidad de países en cada continente
SELECT Continent, COUNT(Name) FROM country GROUP BY Continent;
-- 10. Encuentra el número total de ciudades en cada país
SELECT CountryCode, COUNT(Name) FROM city GROUP BY CountryCode;
-- 11. Encuentra los países cuya población total es superior a 100 millones
SELECT Continent, SUM(Population) FROM country GROUP BY Continent HAVING SUM(Population)>100000000 ;
-- 12. Encuentra la cantidad de idiomas oficiales en cada país
SELECT CountryCode, COUNT(Language) FROM countrylanguage WHERE IsOfficial = 'T' GROUP BY CountryCode;
-- 13. Encuentra los continentes donde la expectativa de vida promedio es inferior a 70 años
SELECT Continent, AVG(LifeExpectancy) AS Esperanza_promedio FROM country GROUP BY Continent HAVING Esperanza_promedio <70 ;
-- 15. Encuentra los continentes donde ningún país tiene una población superior a 200 millones
SELECT Continent, max(Population) AS 'Poblacion_Maxima' FROM country GROUP BY Continent HAVING Poblacion_Maxima < 200000000;
-- 16. Encuentra los continentes donde la cantidad de países con una expectativa de vida superior a 80 años sea igual o mayor a 3
SELECT Continent, COUNT(*) AS 'Numero_Paises' FROM country WHERE LifeExpectancy > 80 GROUP BY Continent HAVING Numero_Paises >= 3;
-- 17. Encuentra el promedio de la expectativa de vida en cada continente, excluyendo aquellos donde el promedio sea inferior a 70 años
SELECT Continent, AVG(LifeExpectancy) AS 'Esperanza_Media' FROM country GROUP BY Continent HAVING Esperanza_Media > 70;