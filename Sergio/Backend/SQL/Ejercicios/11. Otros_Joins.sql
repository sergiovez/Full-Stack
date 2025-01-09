-- 1. De las tablas FABRICANTES y ARTÍCULOS:
USE empresa;
SELECT *FROM fabricantes;
SELECT *FROM articulos;
	-- a. Obtener los nombres de los productos de la tienda.
    SELECT Nombre FROM articulos;
	-- b. Obtener nombres y precios de los artículos.
    SELECT Nombre, Precio FROM articulos;
	-- c. Obtener el nombre de los artículos cuyo precio sea menor o igual a 20 €.
    SELECT Nombre, Precio FROM articulos WHERE Precio <= 20;
	-- d. Obtener todos los datos de los artículos cuyo precio esté entre los 60€ y los 120€.
    SELECT *FROM articulos WHERE Precio BETWEEN 60 AND 120;
	-- e. Calcular el precio medio de todos los productos
    SELECT AVG(Precio) FROM articulos;
	-- f. Calcular el precio medio de los productos del fabricante 3
    SELECT AVG(Precio) FROM articulos WHERE Fabricante = 3;
	-- g. Calcular el número de artículos cuyo precio sea menor o igual a 160€
    SELECT COUNT(*) FROM articulos WHERE Precio<= 160;
	-- h. Obtener un listado completo de artículos en el que aparezca el nombre del artículo y el nombre del fabricante
    SELECT articulos.nombre AS 'Nombre_articulo', fabricantes.nombre AS 'Nombre_fabricante'
		FROM empresa.articulos INNER JOIN empresa.fabricantes
        ON articulos.fabricante = fabricantes.codigo
        ORDER BY Nombre_articulo;
	-- i. Obtener el precio medio de los productos de cada fabricante
    SELECT Fabricante, AVG(Precio) AS 'Precio_Medio' FROM articulos GROUP BY Fabricante;
	-- j. Obtener el precio medio de los productos de cada fabricante mostrando además el nombre del fabricante
    SELECT fabricantes.Nombre, AVG(articulos.Precio) AS 'Precio_Medio'
		FROM empresa.articulos INNER JOIN empresa.fabricantes
        ON articulos.fabricante = fabricantes.codigo
        GROUP BY fabricantes.Nombre
        ORDER BY Precio_Medio;
	-- k. Obtener los nombres de los fabricantes que ofrezcan productos cuyo precio medio sea mayor o igual a 100€
    SELECT Fabricante, AVG(Precio) AS 'Precio_Medio' FROM articulos GROUP BY Fabricante HAVING Precio_Medio >= 100;
	-- l. Obtener el nombre y el precio del artículo más barato
	SELECT nombre, Precio FROM articulos ORDER BY Precio LIMIT 1;
    
-- 2. De las tablas ALMACENES y CAJAS:
SELECT *FROM almacenes;
SELECT *FROM cajas;
	-- a. Obtener todos los almacenes
    SELECT Lugar FROM almacenes;
	-- b. Obtener todas las cajas con valor superior a 250
    SELECT Contenido, Valor FROM cajas WHERE Valor>250 ORDER BY Valor;
	-- c. Obtener los distintos tipos de contenidos de las cajas
    SELECT DISTINCT(Contenido) FROM cajas ORDER BY Contenido;
	-- d. Obtener el valor medio de las cajas
    SELECT AVG(Valor) FROM cajas;
	-- e. Obtener el valor medio de las cajas de cada almacén
    SELECT Almacen, AVG(Valor) FROM cajas GROUP BY Almacen ORDER BY Almacen;
	-- f. Obtener el número de referencia de la caja junto con el lugar en el que se encuentra
    SELECT cajas.NumReferencia, almacenes.Lugar
		FROM empresa.almacenes INNER JOIN empresa.cajas
        ON almacenes.Codigo = cajas.Almacen;
	-- g. Obtener el número de cajas que hay en cada almacén
    SELECT Almacen, Count(*) AS 'Suma' FROM cajas GROUP BY Almacen ORDER BY Almacen;
	
    SELECT almacenes.codigo, Count(NumReferencia)
		FROM empresa.almacenes LEFT JOIN empresa.cajas
        ON almacenes.Codigo = cajas.Almacen
        GROUP BY almacenes.codigo;
     -- h. Obtener los números de referencia de las cajas que están en el Almacén N
    SELECT cajas.NumReferencia
		FROM empresa.cajas INNER JOIN empresa.almacenes
        ON cajas.Almacen = almacenes.Codigo
        WHERE almacenes.Lugar = 'Almacén N';
        
-- 3. De las tablas DIRECTORES y DESPACHOS:
SELECT *FROM directores;
SELECT *FROM despachos;
	-- a. Mostrar el DNI, el nombre y los apellidos de todos los directores:
    SELECT NombreCompleto, DNI FROM directores;
	-- b. Mostrar los datos de los directores que no tienen jefes
    SELECT NombreCompleto, DNI FROM directores WHERE DNIJefe IS NULL;
	-- c. Mostrar el nombre y apellidos de cada director, junto con la capacidad del despacho en el que se encuentra
    SELECT directores.NombreCompleto, directores.Despacho, despachos.Capacidad
		FROM empresa.directores INNER JOIN empresa.despachos
        ON directores.Despacho = despachos.codigo;
	-- d. Mostrar el número de directores en cada despacho
    SELECT Despacho, COUNT(*) FROM directores GROUP BY Despacho ORDER BY Despacho;
		
-- 4. De las tablas CIENTIFICOS, ASIGNADO_A y PROYECTO:
USE centro_investigacion;
SELECT *FROM cientificos;
SELECT *FROM asignado_a;
SELECT *FROM proyecto;
	-- a. Saca una relación completa de los científicos asignados a cada proyecto. Muestra el DNI, el nombre del científico, el identificador del proyecto y el nombre del proyecto
	SELECT cientificos.DNI, cientificos.NombreApellidos, proyecto.ID, proyecto.Nombre
		FROM centro_investigacion.asignado_a INNER JOIN centro_investigacion.cientificos
        ON asignado_a.Cientifico = cientificos.DNI
        INNER JOIN centro_investigacion.proyecto
        ON asignado_a.Proyecto = proyecto.ID;
    -- b. Obtener el número de proyectos al que está asignado cada científico. Mostrar el nombre y el DNI
    SELECT cientificos.DNI, cientificos.NombreApellidos, COUNT(asignado_a.proyecto) AS 'Numero de proyectos'
		FROM centro_investigacion.asignado_a INNER JOIN centro_investigacion.cientificos
        ON asignado_a.Cientifico = cientificos.DNI
        GROUP BY cientificos.DNI, cientificos.NombreApellidos;
	-- c. Obtener el número de científicos asignados a cada proyecto. Mostrar el identificador del proyecto y el nombre del proyecto
	SELECT proyecto.ID, proyecto.Nombre, COUNT(asignado_a.cientifico) AS 'Numero de asignados'
		FROM centro_investigacion.asignado_a INNER JOIN centro_investigacion.proyecto
        ON asignado_a.Proyecto = proyecto.ID
        GROUP BY proyecto.ID, proyecto.Nombre
        ORDER BY proyecto.ID;
    -- d. Mostrar el número de horas de dedicación de cada científico
    	SELECT asignado_a.cientifico, SUM(proyecto.Horas) AS 'Horas totales'
		FROM centro_investigacion.asignado_a INNER JOIN centro_investigacion.proyecto
        ON asignado_a.Proyecto = proyecto.ID
        GROUP BY asignado_a.cientifico
        ORDER BY asignado_a.cientifico;