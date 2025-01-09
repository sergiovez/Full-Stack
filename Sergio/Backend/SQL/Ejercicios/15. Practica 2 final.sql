/*
PRACTICA 2
*/
use practica_2;

-- 22. Visualizar la especialidad que tenga más médicos.
SELECT *FROM medicos;
SELECT ESPECIALIDAD, COUNT(*) FROM MEDICOS GROUP BY ESPECIALIDAD
	HAVING COUNT(*) = (SELECT COUNT(*) FROM MEDICOS GROUP BY ESPECIALIDAD ORDER BY ESPECIALIDAD DESC LIMIT 1);
    
-- 23. ¿Cuál es el nombre del hospital que tiene mayor número de plazas?	
SELECT *FROM hospitales;
SELECT nombre, num_plazas FROM hospitales WHERE num_plazas = (SELECT MAX(num_plazas) FROM hospitales);

-- 24. Visualizar las diferentes estanterías de la tabla HERRAMIENTAS ordenados descendentemente por estantería.					
SELECT *FROM herramientas;
SELECT DISTINCT estanteria FROM herramientas ORDER BY estanteria DESC;

-- 25. Averiguar cuántas unidades tiene cada estantería.
SELECT estanteria, SUM(unidades) FROM herramientas GROUP BY estanteria;

-- 26. Visualizar las estanterías que tengan más de 15 unidades 
SELECT estanteria, SUM(unidades) FROM herramientas GROUP BY estanteria HAVING SUM(UNIDADES)>15;

-- 27. ¿Cuál es la estantería que tiene más unidades?					
SELECT estanteria, SUM(unidades) FROM herramientas GROUP BY estanteria 
HAVING SUM(UNIDADES)=(SELECT SUM(unidades) FROM herramientas GROUP BY estanteria ORDER BY SUM(unidades) DESC LIMIT 1);

-- 28. A partir de las tablas EMPLE y DEPART mostrar los datos del departamento que no tiene ningún empleado.					
SELECT *FROM emple;
SELECT *FROM depart;
SELECT DNOMBRE, DEPT_NO FROM DEPART 
WHERE DEPT_NO NOT IN (SELECT DISTINCT DEPT_NO FROM EMPLE);

-- 29. Mostrar el número de empleados de cada departamento. En la salida se debe mostrar también los departamentos que no tienen ningún empleado.	
SELECT DEPART.dnombre, COUNT(EMP_NO) FROM DEPART LEFT JOIN EMPLE ON EMPLE.DEPT_NO = DEPART.DEPT_NO GROUP BY DEPART.dnombre;

-- 30. Obtener la suma de salarios de cada departamento, mostrando las columnas DEPT_NO, SUMA DE SALARIOS y DNOMBRE. 
-- En el resultado también se deben mostrar los departamentos que no tienen asignados empleados.
SELECT DEPART.DEPT_NO, SUM(EMPLE.SALARIO), DEPART.dnombre FROM DEPART LEFT JOIN EMPLE ON EMPLE.DEPT_NO = DEPART.DEPT_NO GROUP BY DEPART.dnombre, DEPART.DEPT_NO;

-- 31. Utilizar la función IFNULL en la consulta anterior para que en el caso de que un departamento no tenga empleados, 
-- aparezca como suma de salarios el valor 0.					
SELECT DEPART.DEPT_NO, IFNULL(SUM(SALARIO),0.0), DEPART.dnombre FROM DEPART LEFT JOIN EMPLE ON EMPLE.DEPT_NO = DEPART.DEPT_NO GROUP BY DEPART.dnombre, DEPART.DEPT_NO;

-- 32. Obtener el número de médicos que pertenecen a cada hospital, mostrando las columnas COD_HOSPITAL, NOMBRE y NÚMERO DE MÉDICOS. 
-- En el resultado deben aparecer también los datos de los hospitales que no tienen médicos.
SELECT *FROM medicos;
SELECT *FROM hospitales;
SELECT hospitales.COD_HOSPITAL, hospitales.NOMBRE, COUNT(medicos.DNI) FROM hospitales LEFT JOIN medicos ON hospitales.cod_hospital = medicos.cod_hospital GROUP BY hospitales.COD_HOSPITAL, hospitales.NOMBRE ORDER BY COD_HOSPITAL;