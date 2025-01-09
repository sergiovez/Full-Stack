USE sub;
-- 1. Averigua el DNI de todos los clientes.
SELECT dni FROM cliente;
-- 2. Consulta todos los datos de todos los programas.
SELECT *FROM programa;
-- 3. Obtén un listado con los nombres de todos los programas.
SELECT nombre FROM programa;
-- 4. Genera una lista con todos los comercios.
SELECT *FROM comercio;
-- 5. Genera una lista de las ciudades con establecimientos donde se venden programas, 
	-- sin que aparezcan valores duplicados (utiliza DISTINCT).
SELECT *FROM cliente;
SELECT *FROM comercio;
SELECT *FROM desarrolla;
SELECT *FROM distribuye;
SELECT *FROM fabricante;
SELECT *FROM programa;
SELECT *FROM registra;
SELECT DISTINCT(ciudad) FROM comercio;
-- 6. Obtén una lista con los nombres de programas, sin que aparezcan valores duplicados (utiliza DISTINCT).
SELECT DISTINCT(nombre) FROM programa;
-- 7. Obtén el DNI más 4 de todos los clientes.
SELECT dni+4 FROM cliente;
-- 8. Haz un listado con los códigos de los programas multiplicados por 7.
SELECT codigo*7 FROM programa;
-- 9. ¿Cuáles son los programas cuyo código es inferior o igual a 10?
SELECT nombre, codigo FROM programa WHERE codigo <= 10;
-- 10.¿Cuál es el programa cuyo código es 11?
SELECT nombre, codigo FROM programa WHERE codigo = 11;
-- 11. ¿Qué fabricantes son de Estados Unidos?
SELECT nombre, pais FROM fabricante WHERE pais = 'Estados Unidos';
-- 12. ¿Cuáles son los fabricantes no españoles? Utilizar el operador IN.
SELECT nombre, pais FROM fabricante WHERE pais NOT IN ('España');
-- 13. Obtén un listado con los códigos de las distintas versiones de Windows.
SELECT DISTINCT(version) FROM programa;
-- 14. ¿En qué ciudades comercializa programas El Corte Inglés
SELECT ciudad FROM comercio WHERE nombre='El Corte Inglés';
-- 15. ¿Qué otros comercios hay, además de El Corte Inglés? Utilizar el operador IN.
SELECT nombre, ciudad FROM comercio WHERE ciudad in ('Sevilla', 'Madrid');
-- 16. Genera una lista con los códigos de las distintas versiones de Windows y Access. Utilizar el operador IN.
SELECT codigo, nombre FROM programa WHERE nombre in ('Access', 'Windows');
-- 17. Obtén un listado que incluya los nombres de los clientes de edades comprendidas entre 10 y 25 
	-- y de los mayores de 50 años. Da una solución con BETWEEN y otra sin BETWEEN.
SELECT nombre, edad FROM cliente WHERE edad BETWEEN 10 AND 25;
SELECT nombre, edad FROM cliente WHERE (edad >= 10) AND (edad <= 25);
-- 18. Saca un listado con los comercios de Sevilla y Madrid. No se admiten valores duplicados.
SELECT DISTINCT(nombre) FROM comercio WHERE ciudad in ('Sevilla', 'Madrid');
-- 19. ¿Qué clientes terminan su nombre en la letra “o”?
SELECT nombre, edad FROM cliente WHERE nombre LIKE '%o';
-- 20. ¿Qué clientes terminan su nombre en la letra “o” y, además, son mayores de 30 años?
SELECT nombre, edad FROM cliente WHERE (nombre LIKE '%o') AND (edad>30);
-- 21. Obtén un listado en el que aparezcan los programas cuya versión finalice por una letra i, 
	-- o cuyo nombre comience por una A o por una W.
SELECT nombre, version FROM programa WHERE nombre LIKE 'A%' OR nombre LIKE 'W%'OR version LIKE '%i';
-- 22. Obtén un listado en el que aparezcan los programas cuya versión finalice por una letra i, 
	-- o cuyo nombre comience por una A y termine por una S.
SELECT nombre, version FROM programa WHERE nombre LIKE 'A%s' OR version LIKE '%i';
-- 23. Obtén un listado en el que aparezcan los programas cuya versión finalice por una letra i, 
	-- y cuyo nombre no comience por una A.
SELECT nombre, version FROM programa WHERE (nombre NOT LIKE 'A%') AND version LIKE '%i';
-- 24. Obtén una lista de empresas por orden alfabético ascendente.
SELECT nombre FROM fabricante ORDER BY nombre;
-- 25. Genera un listado de empresas por orden alfabético descendente.
SELECT nombre FROM fabricante ORDER BY nombre DESC;
-- 26. Obtén un listado de programas por orden de versión
SELECT nombre, version FROM programa WHERE version IS NOT NULL ORDER BY version;
-- 27. Genera un listado de los programas que desarrolla Oracle.
SELECT *
	FROM sub.desarrolla INNER JOIN sub.fabricante
    ON desarrolla.id_fab = fabricante.id_fab
    INNER JOIN sub.programa
    ON desarrolla.codigo = programa.codigo
    WHERE fabricante.nombre = 'Oracle';
    
SELECT * FROM sub.desarrolla INNER JOIN sub.fabricante INNER JOIN sub.programa
    ON desarrolla.id_fab = fabricante.id_fab AND desarrolla.codigo = programa.codigo
    WHERE fabricante.nombre = 'Oracle';
-- 28. ¿Qué comercios distribuyen Windows?
SELECT * FROM sub.distribuye INNER JOIN sub.comercio INNER JOIN sub.programa
    ON distribuye.cif = comercio.cif AND distribuye.codigo = programa.codigo
    WHERE programa.nombre = 'Windows';
-- 29. Genera un listado de los programas y cantidades que se han distribuido a El Corte Inglés de Madrid.
SELECT comercio.nombre, distribuye.cantidad, programa.nombre 
	FROM sub.distribuye INNER JOIN sub.comercio INNER JOIN sub.programa
    ON distribuye.cif = comercio.cif AND distribuye.codigo = programa.codigo
    WHERE comercio.nombre = 'El Corte Inglés' AND comercio.ciudad = 'Madrid';
-- 30. ¿Qué fabricante ha desarrollado Freddy Hardest?
SELECT *
	FROM sub.desarrolla INNER JOIN sub.fabricante INNER JOIN sub.programa
    ON desarrolla.id_fab = fabricante.id_fab AND desarrolla.codigo = programa.codigo
    WHERE programa.nombre = 'Freddy Hardest';
-- 31. Selecciona el nombre de los programas que se registran por Internet.
SELECT *	
    FROM sub.registra INNER JOIN sub.programa
    ON registra.codigo = programa.codigo 
    WHERE registra.medio = 'Internet';
-- 32. Selecciona el nombre de las personas que se registran por Internet.
SELECT *	
    FROM sub.registra INNER JOIN sub.cliente
    ON registra.dni = cliente.dni 
    WHERE registra.medio = 'Internet';
-- 33. ¿Qué medios ha utilizado para registrarse Pepe Pérez?
SELECT *	
    FROM sub.registra INNER JOIN sub.cliente
    ON registra.dni = cliente.dni 
    WHERE cliente.nombre = 'Pepe Pérez';
-- 34. ¿Qué usuarios han optado por Internet como medio de registro?
SELECT *	
    FROM sub.registra INNER JOIN sub.cliente
    ON registra.dni = cliente.dni 
    WHERE registra.medio = 'Internet';
-- 35. ¿Qué programas han recibido registros por tarjeta postal?
SELECT *	
    FROM sub.registra INNER JOIN sub.programa
    ON registra.codigo = programa.codigo 
    WHERE registra.medio = 'Tarjeta postal';
-- 36. ¿En qué localidades se han vendido productos que se han registrado por Internet?
SELECT DISTINCT(comercio.ciudad)	
    FROM sub.comercio INNER JOIN sub.registra
    ON comercio.cif = registra.cif 
    WHERE registra.medio = 'Internet';
-- 37. Obtén un listado de los nombres de las personas que se han registrado por Internet, 
	-- junto al nombre de los programas para los que ha efectuado el registro.
SELECT cliente.nombre, programa.nombre	
    FROM sub.registra INNER JOIN sub.cliente INNER JOIN sub.programa
    ON registra.dni = cliente.dni AND registra.codigo = programa.codigo
    WHERE registra.medio = 'Internet';
-- 38. Genera un listado en el que aparezca cada cliente junto al programa que ha registrado, 
	-- el medio con el que lo ha hecho y el comercio en el que lo ha adquirido.
SELECT cliente.nombre, programa.nombre, registra.medio, comercio.nombre	
    FROM sub.registra INNER JOIN sub.cliente INNER JOIN sub.programa INNER JOIN sub.comercio INNER JOIN sub.distribuye
    ON registra.dni = cliente.dni AND registra.codigo = programa.codigo AND programa.codigo = distribuye.codigo AND distribuye.cif = comercio.cif;
-- 39. Genera un listado con las ciudades en las que se pueden obtener los productos de Oracle.
-- 40. Obtén el nombre de los usuarios que han registrado Access XP.
-- 41. Nombre de aquellos fabricantes cuyo país es el mismo que ʻOracleʼ. (Subconsulta).
SELECT nombre FROM fabricante WHERE pais = (SELECT pais FROM fabricante WHERE nombre = 'Oracle');
-- 42. Nombre de aquellos clientes que tienen la misma edad que Pepe Pérez. (Subconsulta).
SELECT nombre FROM cliente WHERE edad = (SELECT edad FROM cliente WHERE nombre = 'Pepe Pérez');
-- 43. Genera un listado con los comercios que tienen su sede en la misma ciudad que tiene el comercio ʻFNACʼ. (Subconsulta).
SELECT * FROM comercio WHERE ciudad = (SELECT ciudad FROM comercio WHERE nombre = 'FNAC');
-- 44. Nombre de aquellos clientes que han registrado un producto de la misma forma que el cliente ʻPepe Pérezʼ. (Subconsulta).
SELECT nombre FROM cliente, registra WHERE (cliente.dni = registra.dni) AND registra.medio IN (SELECT medio FROM registra, cliente WHERE cliente.nombre = 'Pepe Pérez');
-- 45. Obtener el número de programas que hay en la tabla programas.
SELECT COUNT(codigo) FROM programa;
-- 46. Calcula el número de clientes cuya edad es mayor de 40 años.
SELECT COUNT(dni) FROM cliente WHERE edad >40;
-- 47. Calcula el número de productos que ha vendido el establecimiento cuyo CIF es 1.
SELECT SUM(cantidad) FROM distribuye WHERE cif = 1;
-- 48. Calcula la media de programas que se venden cuyo código es 7.
SELECT AVG(cantidad) FROM distribuye WHERE codigo = 7;
-- 49. Calcula la mínima cantidad de programas de código 7 que se ha vendido
SELECT MIN(cantidad) FROM distribuye WHERE codigo = 7;
-- 50. Calcula la máxima cantidad de programas de código 7 que se ha vendido.
SELECT MAX(cantidad) FROM distribuye WHERE codigo = 7;
-- 51. ¿En cuántos establecimientos se vende el programa cuyo código es 7?
SELECT COUNT(cif) FROM distribuye WHERE codigo = 7;
-- 52. Calcular el número de registros que se han realizado por Internet.

-- 53. Obtener el número total de programas que se han vendido en ʻSevillaʼ.

-- 54. Calcular el número total de programas que han desarrollado los fabricantes cuyo país es ʻEstados Unidosʼ.

-- 55. Visualiza el nombre de todos los clientes en mayúscula. En el resultado de la consulta debe aparecer 
	-- también la longitud de la cadena nombre.
    
-- 56. Con una consulta concatena los campos nombre y versión de la tabla

