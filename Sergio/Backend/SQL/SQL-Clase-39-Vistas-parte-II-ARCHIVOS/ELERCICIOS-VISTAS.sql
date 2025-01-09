/*
Dentro de la base de datos academia
1. Crea una vista llamada ‘cursos_precio_alto’ con los cursos cuyo precio sea superior a 150

2. Crea una vista llamada ‘cursos_alumno’ que tengan las columnas nombre del curso y nombre del alumno. 
Tiene que aparecer el alumno y sus cursos

3. Crea una vista llamada ‘asignaturas_curso’ en la que aparezcan los cursos con las asignaturas que tienen. 
En este caso las columnas se llamarán “Asignatura” y “curso”. Los nombres de las columnas deben ser creadas en 
la declaración de la vista. También debe estar ordenado por el nombre del curso.

4. Intenta insertar un nuevo curso a través de la vista ‘cursos_precio_alto’

5. Intenta hacer lo mismo con ‘asignaturas_curso’

6. ¿Y si le ponemos todas las columnas de las tablas asignaturas y cursos?

7. Vamos ahora a probar el Check Option. Vamos a insertar una fila en la vista “cursos_precio_alto” que sea 
de un curso que no cumpla la condición (precio > 150) ¿funciona?

8. Introduce un check option ahora

9. Intenta insertar una fila que no cumpla las condiciones

*/

use academia;
-- EJERCICIO 1
CREATE OR REPLACE VIEW cursos_precio_alto AS SELECT* FROM CURSOS WHERE PRECIO>150;
SELECT * FROM cursos_precio_alto;

-- EJERCICIO 2
CREATE OR REPLACE VIEW CURSOS_ALUMNO(ALUMNO, CURSO) AS 
SELECT ALUMNOS.NOMBRE, CURSOS.NOMBRE FROM ALUMNOS 
INNER JOIN CURSOS 
ON ALUMNOS.cod_curso = CURSOS.cod_curso;

SELECT * FROM CURSOS_ALUMNO;

-- EJERCICIO 3
CREATE OR REPLACE VIEW asignaturas_curso(CURSO, ASIGNATURA) AS 
SELECT CURSOS.NOMBRE, ASIGNATURAS.NOMBRE FROM CURSOS
INNER JOIN ASIGNATURAS ON CURSOS.COD_CURSO = ASIGNATURAS.COD_CURSO
ORDER BY CURSOS.NOMBRE;

SELECT * FROM asignaturas_curso;

-- EJERCICIO 4
INSERT INTO cursos_precio_alto VALUES (99,'CURSO99', 170);

-- EJERCICIO 5
INSERT INTO asignaturas_curso values ('CURSO99', 'ASIGNATURA_1');

-- EJERCICIO 6
INSERT INTO asignaturas_curso(CURSOS.COD_CURSO, CURSOS.NOMBRE, CURSOS.PRECIO, ASIGNATURAS.cod_asignatura, 
ASIGNATURAS.nombre, ASIGNATURAS.cod_curso, ASIGNATURAS.cod_profesor, ASIGNATURAS.duracion) 
VALUES (100, 'CURSO100', 200, 100, 'ASIGNATURA100', 100, 4, 10);

-- EJERCICIO 7
INSERT INTO CURSOS_PRECIO_ALTO VALUES(100, 'CURSO100', 130);
SELECT * FROM CURSOS_PRECIO_ALTO;
SELECT * FROM CURSOS;

-- EJERCICIO 8
CREATE OR REPLACE VIEW CURSOS_PRECIO_ALTO AS SELECT * FROM CURSOS WHERE PRECIO>150 WITH CHECK OPTION;

-- EJERCICIO 9
INSERT INTO CURSOS_PRECIO_ALTO VALUES(101, 'CURSO101', 100);
SELECT * FROM CURSOS_PRECIO_ALTO;
SELECT * FROM CURSOS;

INSERT INTO CURSOS_PRECIO_ALTO VALUES(101, 'CURSO101', 190);
SELECT * FROM CURSOS_PRECIO_ALTO;
SELECT * FROM CURSOS;




