-- Dentro de la base de datos academia
USE ACADEMIA;
-- 1. Crea una vista llamada ‘cursos_precio_alto’ con los cursos cuyo precio sea superior a 150
SELECT *FROM CURSOS;
CREATE VIEW CURSOS_PRECIO_ALTO AS SELECT * FROM CURSOS WHERE PRECIO>=150;
SELECT *FROM CURSOS_PRECIO_ALTO;

-- 2. Crea una vista llamada ‘cursos_alumno’ que tengan las columnas nombre del curso y nombre del alumno. 
	-- Tiene que aparecer el alumno y sus cursos
SELECT *FROM CURSOS;
SELECT *FROM ALUMNOS;
CREATE VIEW CURSOS_ALUMNOS (NOMBRE_CURSO, NOMBRE_ALUMNO) AS SELECT CURSOS.NOMBRE, ALUMNOS.NOMBRE FROM CURSOS
INNER JOIN ALUMNOS ON CURSOS.COD_CURSO = ALUMNOS.COD_CURSO;
SELECT *FROM CURSOS_ALUMNOS;

-- 3. Crea una vista llamada ‘asignaturas_curso’ en la que aparezcan los cursos con las asignaturas que tienen. 
	-- En este caso las columnas se llamarán “Asignatura” y “curso”. Los nombres de las columnas deben ser creadas en 
	-- la declaración de la vista. También debe estar ordenado por el nombre del curso.
SELECT *FROM ASIGNATURAS;
SELECT *FROM CURSOS;
CREATE VIEW ASIGNATURAS_CURSO AS SELECT ASIGNATURAS.NOMBRE AS ASIGNATURA, CURSOS.NOMBRE AS CURSO FROM ASIGNATURAS
INNER JOIN CURSOS ON ASIGNATURAS.COD_CURSO = CURSOS.COD_CURSO ORDER BY CURSOS.NOMBRE;
SELECT *FROM ASIGNATURAS_CURSO;

-- 4. Intenta insertar un nuevo curso a través de la vista ‘cursos_precio_alto’
INSERT INTO CURSOS_PRECIO_ALTO VALUES (99,'CURSO99', 170);
SELECT *FROM CURSOS_PRECIO_ALTO;

-- 5. Intenta hacer lo mismo con ‘asignaturas_curso’
INSERT INTO ASIGNATURAS_CURSO values ('CURSO99', 'ASIGNATURA_1');

-- 6. ¿Y si le ponemos todas las columnas de las tablas asignaturas y cursos?
INSERT INTO asignaturas_curso(CURSOS.COD_CURSO, CURSOS.NOMBRE, CURSOS.PRECIO, ASIGNATURAS.cod_asignatura, 
ASIGNATURAS.nombre, ASIGNATURAS.cod_curso, ASIGNATURAS.cod_profesor, ASIGNATURAS.duracion) 
VALUES (100, 'CURSO100', 200, 100, 'ASIGNATURA100', 100, 4, 10);

-- 7. Vamos ahora a probar el Check Option. Vamos a insertar una fila en la vista “cursos_precio_alto” que sea 
	-- de un curso que no cumpla la condición (precio > 150) ¿funciona?
INSERT INTO CURSOS_PRECIO_ALTO VALUES (100,'CURSO99', 100);
SELECT *FROM CURSOS_PRECIO_ALTO;
SELECT *FROM CURSOS;

-- 8. Introduce un check option ahora
CREATE OR REPLACE VIEW CURSOS_PRECIO_ALTO AS SELECT * FROM CURSOS WHERE PRECIO>150 WITH CHECK OPTION;

-- 9. Intenta insertar una fila que no cumpla las condiciones
INSERT INTO CURSOS_PRECIO_ALTO VALUES (101,'CURSO99', 100);