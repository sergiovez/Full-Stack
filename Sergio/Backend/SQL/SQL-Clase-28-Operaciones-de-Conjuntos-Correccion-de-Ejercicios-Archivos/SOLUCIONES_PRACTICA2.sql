/*
PRACTICA 2
*/
use practica_2;

-- 22. Visualizar la especialidad que tenga más médicos.
SELECT * FROM MEDICOS;

SELECT ESPECIALIDAD FROM MEDICOS
GROUP BY ESPECIALIDAD
HAVING COUNT(*) = (
	SELECT COUNT(*) FROM MEDICOS GROUP BY ESPECIALIDAD ORDER BY COUNT(*) DESC LIMIT 1
);

-- 23. ¿Cuál es el nombre del hospital que tiene mayor número de plazas?	
SELECT * FROM HOSPITALES;

-- ESTO NO ESTÁ DEL TODO CORRECTO
SELECT NOMBRE, NUM_PLAZAS FROM HOSPITALES ORDER BY NUM_PLAZAS DESC LIMIT 1;

SELECT NOMBRE, NUM_PLAZAS FROM HOSPITALES 
WHERE NUM_PLAZAS = (SELECT MAX(NUM_PLAZAS) FROM HOSPITALES);

-- 24. Visualizar las diferentes estanterías de la tabla HERRAMIENTAS ordenados descendentemente por estantería.					
SELECT * FROM HERRAMIENTAS;
SELECT distinct ESTANTERIA FROM HERRAMIENTAS ORDER BY ESTANTERIA DESC;

-- 25. Averiguar cuántas unidades tiene cada estantería.
SELECT ESTANTERIA, SUM(UNIDADES) AS CANTIDAD_TOTAL FROM HERRAMIENTAS
group by ESTANTERIA;

-- 26. Visualizar las estanterías que tengan más de 15 unidades 
SELECT ESTANTERIA, SUM(UNIDADES) AS CANTIDAD_TOTAL FROM HERRAMIENTAS
group by ESTANTERIA
HAVING CANTIDAD_TOTAL > 15;

-- 27. ¿Cuál es la estantería que tiene más unidades?					
SELECT ESTANTERIA, SUM(UNIDADES) AS CANTIDAD_TOTAL FROM HERRAMIENTAS
group by ESTANTERIA
HAVING CANTIDAD_TOTAL = ( SELECT SUM(UNIDADES) AS CANTIDAD_TOTAL FROM HERRAMIENTAS
group by ESTANTERIA ORDER BY CANTIDAD_TOTAL DESC LIMIT 1);

-- 28. A partir de las tablas EMPLE y DEPART mostrar los datos del departamento que no tiene ningún empleado.					
SELECT * FROM EMPLE;
SELECT * FROM DEPART;

SELECT DNOMBRE, DEPT_NO FROM DEPART 
WHERE DEPT_NO NOT IN (SELECT DISTINCT DEPT_NO FROM EMPLE);

-- 29. Mostrar el número de empleados de cada departamento. En la salida se debe mostrar también los departamentos que no tienen ningún empleado.	
SELECT DEPART.DNOMBRE, COUNT(EMP_NO) 
FROM DEPART LEFT JOIN EMPLE ON DEPART.DEPT_NO = EMPLE.DEPT_NO
GROUP BY DEPART.DNOMBRE;

-- 30. Obtener la suma de salarios de cada departamento, mostrando las columnas DEPT_NO, SUMA DE SALARIOS y DNOMBRE. 
-- En el resultado también se deben mostrar los departamentos que no tienen asignados empleados.

SELECT DEPART.DNOMBRE, DEPART.DEPT_NO, SUM(SALARIO) AS SUMA_SALARIOS
FROM DEPART LEFT JOIN EMPLE ON DEPART.DEPT_NO = EMPLE.DEPT_NO
GROUP BY DEPART.DNOMBRE, DEPART.DEPT_NO;
					
-- 31. Utilizar la función IFNULL en la consulta anterior para que en el caso de que un departamento no tenga empleados, 
-- aparezca como suma de salarios el valor 0.					

SELECT DEPART.DNOMBRE, DEPART.DEPT_NO, IFNULL(SUM(SALARIO),0.0) AS SUMA_SALARIOS
FROM DEPART LEFT JOIN EMPLE ON DEPART.DEPT_NO = EMPLE.DEPT_NO
GROUP BY DEPART.DNOMBRE, DEPART.DEPT_NO;

-- 32. Obtener el número de médicos que pertenecen a cada hospital, mostrando las columnas COD_HOSPITAL, NOMBRE y NÚMERO DE MÉDICOS. 
-- En el resultado deben aparecer también los datos de los hospitales que no tienen médicos.
SELECT * FROM MEDICOS;
SELECT * FROM HOSPITALES;

SELECT HOSPITALES.COD_HOSPITAL, HOSPITALES.NOMBRE, COUNT(MEDICOS.DNI) AS NUM_MEDICOS
FROM HOSPITALES LEFT JOIN MEDICOS ON HOSPITALES.COD_HOSPITAL = MEDICOS.COD_HOSPITAL
GROUP BY HOSPITALES.COD_HOSPITAL, HOSPITALES.NOMBRE




