/*
2. De las tablas ALMACENES y CAJAS: 
	a. Obtener todos los almacenes
	b. Obtener todas las cajas con valor superior a 250
	c. Obtener los distintos tipos de contenidos de las cajas
	d. Obtener el valor medio de las cajas
	e. Obtener el valor medio de las cajas de cada almacén
	f. Obtener el número de referencia de la caja junto con el lugar en el que se encuentra
	g. Obtener el número de cajas que hay en cada almacén
	h. Obtener los números de referencia de las cajas que están en el Almacén N
*/

-- A 

SELECT * FROM empresa.ALMACENES;

-- B 
SELECT * FROM empresa.CAJAS WHERE valor > 250;

-- C 
SELECT DISTINCT Contenido FROM empresa.cajas;

-- D
SELECT AVG(Valor) AS 'Valor promedio' FROM empresa.CAJAS;

-- E
SELECT a.Lugar, AVG(c.valor) AS 'Valor_Promedio' from empresa.CAJAS AS c INNER JOIN empresa.ALMACENES AS a
ON a.Codigo = c.Almacen 
GROUP BY a.lugar;

-- F
SELECT c.numReferencia, a.Lugar FROM empresa.CAJAS as c INNER JOIN empresa.ALMACENES as a
ON a.Codigo = c.Almacen ;

-- G 
SELECT Almacen, Count(*)
FROM empresa.CAJAS
GROUP BY Almacen;

SELECT a.Codigo, COUNT(NumReferencia)
FROM empresa.ALMACENES as A LEFT JOIN empresa.CAJAS as c
ON a.Codigo = c.Almacen 
GROUP BY(a.Codigo);


-- H
SELECT NumReferencia
FROM ALMACENES LEFT JOIN CAJAS
ON CODIGO = ALMACEN 
WHERE Lugar = 'Almacen N';


