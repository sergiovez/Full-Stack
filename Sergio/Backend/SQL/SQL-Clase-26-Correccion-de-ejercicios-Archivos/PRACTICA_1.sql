-- PRÁCTICA 1
/*
19. ¿Qué clientes terminan su nombre en la letra “o”?
20. ¿Qué clientes terminan su nombre en la letra “o” y, además, son mayores de 30 años? */
use practica1;

SELECT * FROM cliente WHERE nombre like "%o";
SELECT * FROM cliente WHERE nombre like "%o" AND edad>30;

/*
21. Obtén un listado en el que aparezcan los programas cuya versión finalice por una letra i, 
 o cuyo nombre comience por una A o por una W.					
22. Obtén un listado en el que aparezcan los programas cuya versión finalice por una letra i, 
o cuyo nombre comience por una A y termine por una S.
*/
SELECT * FROM PROGRAMA WHERE version LIKE "%i" OR (NOMBRE LIKE "A%" OR NOMBRE LIKE "W%");

SELECT * FROM PROGRAMA WHERE VERSION LIKE "%i" OR (NOMBRE LIKE "A%" AND NOMBRE LIKE "%s");

-- 27  Genera un listado de los programas que desarrolla Oracle.
SELECT * FROM FABRICANTE;
SELECT * FROM PROGRAMA;
SELECT * FROM DESARROLLA;

SELECT * FROM FABRICANTE, PROGRAMA, DESARROLLA 
WHERE FABRICANTE.ID_FAB = DESARROLLA.ID_FAB AND PROGRAMA.CODIGO = DESARROLLA.CODIGO AND FABRICANTE.NOMBRE = 'Oracle';

SELECT * FROM FABRICANTE INNER JOIN DESARROLLA INNER JOIN PROGRAMA
ON FABRICANTE.ID_FAB = DESARROLLA.ID_FAB AND PROGRAMA.CODIGO = DESARROLLA.CODIGO
WHERE FABRICANTE.NOMBRE = 'Oracle' ;

-- 28.  ¿Qué comercios distribuyen Windows?
SELECT * FROM COMERCIO, PROGRAMA, DISTRIBUYE
WHERE PROGRAMA.CODIGO = DISTRIBUYE.CODIGO AND DISTRIBUYE.CIF = COMERCIO.CIF AND PROGRAMA.NOMBRE = 'Windows';

SELECT * FROM COMERCIO INNER JOIN PROGRAMA INNER JOIN DISTRIBUYE 
ON PROGRAMA.CODIGO = DISTRIBUYE.CODIGO AND DISTRIBUYE.CIF = COMERCIO.CIF
WHERE PROGRAMA.NOMBRE = "WINDOWS";

-- 41. Nombre de aquellos fabricantes cuyo país es el mismo que ʻOracleʼ. (Subconsulta).	
SELECT NOMBRE FROM FABRICANTE 
WHERE PAIS=(SELECT PAIS FROM FABRICANTE WHERE NOMBRE = "Oracle");

/*
42. Nombre de aquellos clientes que tienen la misma edad que Pepe Pérez. (Subconsulta).						
43. Genera un listado con los comercios que tienen su sede en la misma ciudad que tiene el comercio ʻFNACʼ. (Subconsulta).					
44. Nombre de aquellos clientes que han registrado un producto de la misma forma que el cliente ʻPepe Pérezʼ. (Subconsulta).
*/
SELECT * FROM CLIENTE 
WHERE edad = (SELECT EDAD FROM CLIENTE WHERE nombre ="Pepe Pérez");

SELECT * FROM COMERCIO 
WHERE CIUDAD=(SELECT CIUDAD FROM COMERCIO WHERE NOMBRE='FNAC');

SELECT CLIENTE.nombre FROM CLIENTE, REGISTRA
WHERE CLIENTE.DNI = REGISTRA.DNI 
AND MEDIO IN (SELECT MEDIO FROM REGISTRA, CLIENTE WHERE REGISTRA.DNI = CLIENTE.DNI AND cliente.NOMBRE='Pepe Pérez');

