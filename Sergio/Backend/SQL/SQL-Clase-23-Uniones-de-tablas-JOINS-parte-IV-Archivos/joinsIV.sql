/*
3. De las tablas DIRECTORES y DESPACHOS: 
a. Mostrar el DNI, el nombre y los apellidos de todos los directores:
b. Mostrar los datos de los directores que no tienen jefes
c. Mostrar el número de directores en cada despacho
d. Mostrar los nombres y apellidos de los directores junto con los de su jefe

4. De las tablas CIENTIFICOS, ASIGNADO_A y PROYECTO: 
a. Saca una relación completa de los científicos asignados a cada proyecto. 
   Muestra el DNI, el nombre del científico, el identificador del proyecto y el nombre del proyecto
b. Obtener el número de proyectos al que está asignado cada científico. Mostrar el nombre y el DNI
c. Obtener el número de científicos asignados a cada proyecto. Mostrar el identificador del proyecto y el nombre del proyecto
d. Mostrar el número de horas de dedicación de cada científico
*/

-- 3. A

Select *  from empresa.DIRECTORES;
Select *  from empresa.DESPACHOS;

SELECT NombreCompleto, DNI FROM empresa.DIRECTORES;

-- 3. B
SELECT NombreCompleto, DNI FROM empresa.DIRECTORES WHERE DNIJefe IS NULL; 

-- 3. C
-- Sin tener en cuenta despachos vacíos
SELECT Despacho, COUNT(*) AS 'numero_directores' FROM empresa.DIRECTORES
GROUP BY Despacho;

-- Teniendo en cuenta posibles despachos vacíos
SELECT Codigo, COUNT(DNI) FROM empresa.DESPACHOS LEFT JOIN empresa.DIRECTORES
ON DESPACHOS.Codigo = DIRECTORES.Despacho 
GROUP BY Codigo; 




-- ------------------------
-- 4. A
SELECT * FROM centro_investigacion.CIENTIFICOS;
SELECT * FROM centro_investigacion.ASIGNADO_A;
SELECT * FROM CENTRO_INVESTIGACION.PROYECTO;


SELECT NombreApellidos, Proyecto, Nombre 
FROM centro_investigacion.CIENTIFICOS as C INNER JOIN 
(centro_investigacion.ASIGNADO_A AS A INNER JOIN centro_investigacion.PROYECTO AS P 
ON A.Proyecto = P.ID)
ON A.Cientifico=C.DNI;


-- 4. B

SELECT NombreApellidos, DNI, COUNT(Proyecto) as 'Numero_proyectos'
FROM centro_investigacion.CIENTIFICOS LEFT JOIN centro_investigacion.ASIGNADO_A
ON Cientifico = DNI
GROUP BY NombreApellidos, DNI;


-- 4. C
SELECT ID, Nombre, COUNT(Proyecto) as 'Numero_cientificos' FROM 
centro_investigacion.PROYECTO LEFT JOIN centro_investigacion.ASIGNADO_A
ON ID = Proyecto
GROUP BY ID, Nombre;

-- 4. D 

SELECT NombreApellidos, DNI, SUM(horas) as 'Horas_dedicadas' FROM centro_investigacion.CIENTIFICOS AS C LEFT JOIN
(centro_investigacion.ASIGNADO_A  AS A INNER JOIN centro_investigacion.PROYECTO  AS P
ON P.ID = A.Proyecto) ON C.DNI = A.Cientifico 
GROUP BY DNI, NombreApellidos;




USE EMPRESA;

-- 3. D
Select *  from empresa.DIRECTORES;

INSERT INTO DIRECTORES (DNI, NombreCompleto, DNIJefe, Despacho)
VALUES
('999999999Y', 'YOLANDA LÓPEZ', '888888888B', 106),
('888888888B', 'BIENVENIDO SÁEZ', '777777777A', 106),
('777777777A', 'ALEXIS BAUTISTA', NULL, 106),
('666666666E', 'ELENA HERNANDEZ', '999999999Y', 106);

SELECT d1.NombreCompleto as 'Directores' , d2.NombreCompleto as 'Jefes'
FROM DIRECTORES AS d1 LEFT JOIN DIRECTORES AS D2
ON d1.DNIJefe = d2.DNI;
