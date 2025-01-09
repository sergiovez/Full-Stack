-- LEFT JOIN Y RIGHT JOIN
-- Ayuda a saber qué informacion NO tenemos en alguna de las tablas que estamos cruzando

SELECT D.nombre, E.nombre, E.apellido
FROM departamentos AS D INNER JOIN empleados AS E
ON D.codigo = E.departamento; 

SELECT D.nombre, E.nombre, E.apellido
FROM departamentos AS D LEFT JOIN empleados AS E
ON D.codigo = E.departamento; 

SELECT D.nombre, E.nombre, E.apellido
FROM departamentos AS D RIGHT JOIN empleados AS E
ON D.codigo = E.departamento; 


-- CROSS JOINS


SELECT D.nombre, E.nombre, E.apellido
FROM departamentos AS D CROSS JOIN empleados AS E
ORDER BY D.NOMBRE;









