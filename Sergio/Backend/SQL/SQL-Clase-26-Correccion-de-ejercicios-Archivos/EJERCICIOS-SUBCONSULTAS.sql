-- 1. Usar una subconsulta en el FROM para devolver los cursos entre 1 y 5. 
-- Visualizar el número de alumnos de cada uno de ellos 
use academia;

SELECT cursos.nombre, count(alumnos.cod_curso) as num_alumnos FROM (SELECT * FROM CURSOS WHERE COD_CURSO BETWEEN 1 AND 5) AS CURSOS INNER JOIN ALUMNOS 
ON CURSOS.cod_curso = ALUMNOS.cod_curso group by cursos.nombre;

-- 2 Usar una subconsulta en el FROM para devolver los profesores y el número de asignaturas que imparten. 
-- Luego visualiza solo los que tengan más de 3 asignaturas 

SELECT * FROM (
	SELECT PROFESORES.NOMBRE, COUNT(ASIGNATURAS.COD_ASIGNATURA) AS NUM_ASIGNATURAS 
	FROM ASIGNATURAS INNER JOIN PROFESORES ON ASIGNATURAS.COD_PROFESOR = PROFESORES.COD_PROFESOR 
	GROUP BY PROFESORES.NOMBRE) AS T WHERE NUM_ASIGNATURAS >3;
    
-- 3. Indicar el curso más caro
SELECT * FROM CURSOS WHERE PRECIO = (SELECT MAX(PRECIO) FROM CURSOS);

-- 4. Indicar la asignatura o asignaturas que menos duración tienen
SELECT * FROM ASIGNATURAS WHERE DURACION = (SELECT MIN(DURACION) FROM ASIGNATURAS);

-- 5 Indicar las que más y menos duración tienen
SELECT * FROM ASIGNATURAS 
WHERE DURACION = (SELECT MIN(DURACION) FROM ASIGNATURAS) OR DURACION = (SELECT MAX(DURACION) FROM ASIGNATURAS);

-- 6 Alumnos de informática que tengan una nota mayor que la media de la asignatura). 
-- Deberían salir todos los de más de 5.9 que es la nota media

SELECT ALUMNOS.NOMBRE, NOTAS_ALUMNOS.NOTA FROM ALUMNOS INNER JOIN NOTAS_ALUMNOS INNER JOIN ASIGNATURAS
ON ALUMNOS.cod_alumno = NOTAS_ALUMNOS.cod_alumno AND NOTAS_ALUMNOS.cod_asignatura = ASIGNATURAS.cod_asignatura
WHERE ASIGNATURAS.NOMBRE= 'Informática' 
AND NOTAS_ALUMNOS.NOTA > (select AVG(nota) from ASIGNATURAS inner join notas_alumnos on NOTAS_ALUMNOS.cod_asignatura = ASIGNATURAS.cod_asignatura
where ASIGNATURAS.NOMBRE= 'Informática') ;

SELECT * FROM alumnos;
-- 7 Utilizando una subconsulta (no un JOIN) visualiza los nombres de los alumnos que están en el curso ‘CURSO1’
SELECT NOMBRE FROM ALUMNOS WHERE COD_CURSO = (SELECT COD_CURSO FROM CURSOS WHERE NOMBRE ='CURSO1');

-- 8 Visualiza los cursos que cuestan más que CURSO9 
SELECT * FROM CURSOS WHERE PRECIO > (SELECT PRECIO FROM CURSOS WHERE NOMBRE='CURSO9');

-- 9 Nombre de los alumnos que estén en CURSO1 o CURSO2
SELECT NOMBRE FROM ALUMNOS WHERE COD_CURSO IN(SELECT COD_CURSO FROM CURSOS WHERE NOMBRE IN ('CURSO1', 'CURSO2'));

-- 10 Alumnos que están cursando informática, matemáticas o dibujo
SELECT NOMBRE FROM ALUMNOS WHERE COD_CURSO IN (SELECT COD_CURSO FROM ASIGNATURAS WHERE NOMBRE IN ('informática', 'matemáticas' , 'dibujo'));

-- 11 Nombre y precio de los cursos que valgan más que CURSO6 O CURSO7
SELECT NOMBRE, PRECIO FROM CURSOS WHERE PRECIO > ANY (SELECT PRECIO FROM CURSOS WHERE NOMBRE IN ('CURSO6', 'CURSO7'));

-- 12 Nombre y precio de los cursos que valgan más que CURSO6 Y CURSO7
SELECT NOMBRE, PRECIO FROM CURSOS WHERE PRECIO > ALL (SELECT PRECIO FROM CURSOS WHERE NOMBRE IN ('CURSO6', 'CURSO7'));

-- 13 Averiguar si existe algún curso que tenga más de un 6 de nota media. Solo debería salir CURSO3
SELECT NOMBRE FROM CURSOS WHERE 
	EXISTS (SELECT COD_CURSO, AVG(NOTA) FROM NOTAS_ALUMNOS WHERE COD_CURSO = CURSOS.COD_CURSO
    GROUP BY COD_CURSO
    HAVING AVG(NOTA)>6);

-- 14 Cursos que tengan más asignaturas que CURSO9 
SELECT CURSOS.NOMBRE, COUNT(*) FROM CURSOS INNER JOIN ASIGNATURAS ON CURSOS.COD_CURSO = ASIGNATURAS.COD_CURSO
GROUP BY ASIGNATURAS.COD_CURSO 
HAVING COUNT(*) > (select count(*) from asignaturas inner join cursos ON CURSOS.COD_CURSO = ASIGNATURAS.COD_CURSO where CURSOS.nombre = 'CURSO9');

-- 15 Alumnos con nota media mayor que la del alumno llamado Gayle
SELECT NOMBRE, AVG(NOTA) FROM ALUMNOS INNER JOIN NOTAS_ALUMNOS ON ALUMNOS.COD_CURSO = NOTAS_ALUMNOS.COD_CURSO
GROUP BY NOMBRE
HAVING AVG(NOTA) > (
SELECT AVG(NOTA) FROM ALUMNOS INNER JOIN NOTAS_ALUMNOS 
ON ALUMNOS.COD_CURSO = NOTAS_ALUMNOS.COD_CURSO
WHERE ALUMNOS.NOMBRE = 'Gayle');

-- 16 Visualiza el nombre del departamento o departamentos que tienen más alumnos 
SELECT CURSOS.NOMBRE, COUNT(*) FROM CURSOS 
	INNER JOIN ALUMNOS ON ALUMNOS.COD_CURSO = CURSOS.COD_CURSO
    GROUP BY CURSOS.NOMBRE
    HAVING COUNT(*) = (SELECT COUNT(*) FROM ALUMNOS GROUP BY COD_CURSO ORDER BY COUNT(*) DESC LIMIT 1);
    
-- 17. Mostrar el curso o los cursos que tengan más alumnos matriculados en matemáticas

SELECT CURSOS.NOMBRE, COUNT(*) FROM CURSOS INNER JOIN ASIGNATURAS INNER JOIN ALUMNOS 
ON CURSOS.cod_curso = ASIGNATURAS.cod_curso AND ALUMNOS.cod_curso=CURSOS.cod_curso
WHERE ASIGNATURAS.NOMBRE = 'Matemáticas'
GROUP BY CURSOS.NOMBRE
HAVING COUNT(*) = (

SELECT MAX(NUM_ALUMNOS) FROM (
	SELECT CURSOS.NOMBRE, COUNT(*) AS NUM_ALUMNOS FROM CURSOS INNER JOIN ASIGNATURAS INNER JOIN ALUMNOS 
	ON CURSOS.cod_curso = ASIGNATURAS.cod_curso AND ALUMNOS.cod_curso=CURSOS.cod_curso
	WHERE ASIGNATURAS.NOMBRE = 'Matemáticas'
	GROUP BY CURSOS.NOMBRE) AS TABLA
);




    