-- EXISTS Y NOT EXISTS
/*
	EXISTS: Comprueba la existencia de alguna fila en la subconsulta y devuelve true si la subconsulta devuelve al menos una fila
*/

-- Ciudades de países con esperanza de vida mayor a 80
SELECT NAME FROM CITY AS Ciudades
WHERE EXISTS(SELECT * from Country where LifeExpectancy > 80 AND CODE = ciudades.CountryCode);

-- Países qque tengan alguna ciudad que supere los 6.000.000 de habitantes

SELECT NAME FROM COUNTRY as Paises
WHERE EXISTS(Select* FROM city where Population > 6000000 and CountryCode =  paises.Code);
