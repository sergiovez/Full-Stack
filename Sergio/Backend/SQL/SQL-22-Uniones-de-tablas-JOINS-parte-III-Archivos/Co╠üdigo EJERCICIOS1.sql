/*
De las tablas FABRICANTES y ARTÍCULOS:
a. Obtener los nombres de los productos de la tienda.
b. Obtener nombres y precios de los artículos.
c. Obtener el nombre de los artículos cuyo precio sea menor o igual a 20 €.
d. Obtener todos los datos de los artículos cuyo precio esté entre los 60€ y los 120€.
e. Calcular el precio medio de todos los productos
f. Calcular el precio medio de los productos del fabricante 3
g. Calcular el número de artículos cuyo precio sea menor o igual a 160€
h. Obtener un listado completo de artículos en el que aparezca el nombre del artículo y
el nombre del fabricante
i. Obtener el precio medio de los productos de cada fabricante
j. Obtener el precio medio de los productos de cada fabricante mostrando además el
nombre del fabricante
k. Obtener los nombres de los fabricantes que ofrezcan productos cuyo precio medio
sea mayor o igual a 100€
l. Obtener el nombre y el precio del artículo más barato
*/

-- A 
SELECT Codigo, Nombre FROM empresa.ARTICULOS;

-- B
SELECT Codigo, Nombre, Precio FROM empresa.ARTICULOS;

-- C 
SELECT Codigo, Nombre, Precio FROM empresa.ARTICULOS
WHERE Precio <=20;

-- D 
SELECT Codigo, Nombre, Precio FROM empresa.ARTICULOS
WHERE Precio BETWEEN 60 AND 120
ORDER BY PRECIO DESC;

-- E
SELECT AVG(Precio) Precio_Medio FROM empresa.ARTICULOS;

-- F
SELECT Fabricante, AVG(Precio) Precio_Medio 
FROM empresa.ARTICULOS INNER JOIN empresa.FABRICANTES
ON fabricantes.codigo = articulos.fabricante
WHERE fabricantes.codigo = 3;

-- G 
SELECT Count(*) as 'Articulos' FROM empresa.articulos
where Precio<= 160;

-- H
SELECT a.nombre, f.nombre 
FROM empresa.ARTICULOS as a INNER JOIN empresa.FABRICANTES as f
ON  a.Fabricante = f.codigo;

-- I
SELECT Fabricante, AVG(Precio) as 'Precio_Medio'
from empresa.articulos 
group by fabricante;

-- J
SELECT  f.nombre, AVG(Precio) AS 'Precio_Medio'
FROM empresa.ARTICULOS as a INNER JOIN empresa.FABRICANTES as f
ON  a.Fabricante = f.codigo
GROUP BY  f.nombre;

-- K 
SELECT  f.nombre, AVG(Precio) AS 'Precio_Medio'
FROM empresa.ARTICULOS as a INNER JOIN empresa.FABRICANTES as f
ON  a.Fabricante = f.codigo
GROUP BY  f.nombre
HAVING Precio_Medio >= 100;

-- L 
SELECT Nombre, Precio
FROM empresa.ARTICULOS
ORDER BY Precio ASC
LIMIT 1;
















