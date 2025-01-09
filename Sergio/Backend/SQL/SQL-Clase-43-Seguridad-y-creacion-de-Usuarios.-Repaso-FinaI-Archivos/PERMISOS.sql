/*B- PERMISOS*/

-- 1. Trabajamos con el usuario “usu1” que hemos creado en el apartado anterior y vamos a tener 2 sesiones 
-- abiertas, una como usuario de tipo root y el otro con el usuario “usu1”.  Desde “usu1”, intentar leer la 
-- tabla cursos de la base de datos “academia”.  

/* Desde usu1
	SELECT * FROM academia.CURSOS;
	ERROR 1142 (42000): SELECT command denied to user 'usu1'@'localhost' for table 'cursos'
*/

-- 2. Dar permisos de SELECT sobre la tabla al usu1. Comprobar que ahora puede hacer una SELECT.
GRANT SELECT ON academia.CURSOS TO 'usu1'@'%';

-- 3. Intentar hacer un delete del curso12 desde usu1 
/*
DELETE FROM academia.CURSOS where COD_CURSO=12;
ERROR 1142 (42000): DELETE command denied to user 'usu1'@'localhost' for table 'cursos'
*/

-- 4. Dar permisos para que lo pueda hacer.
GRANT DELETE ON academia.CURSOS TO 'usu1'@'%';

-- 5. Dar permisos de SELECT sobre las columnas nombre y apellidos de la tabla ALUMNOS al usuario “usu1” . 
-- Comprobar que solo puede leer esas columnas.

GRANT SELECT(NOMBRE, APELLIDOS) ON ACADEMIA.ALUMNOS TO 'usu1'@'%';
/*
SELECT * FROM ACADEMIA.ALUMNOS;
ERROR 1143 (42000): SELECT command denied to user 'usu1'@'localhost' for column 'cod_alumno' in table 'alumnos
*/

-- 6. Comprobar los permisos que tiene usu1.
SHOW GRANTS For 'usu1'@'%';

-- 7. Dar todos los permisos sobre la base de datos academia a “usu1”. Comprobar los permisos.

GRANT ALL ON ACADEMIA.* TO 'usu1'@'%';
SHOW GRANTS For 'usu1'@'%';

-- 8. Ahora, quitar solo el permiso de SELECT sobre la columna nombre de la tabla ALUMNOS. ¿Qué ocurre?
REVOKE SELECT(NOMBRE) ON academia.alumnos from 'usu1'@'%';
SHOW GRANTS For 'usu1'@'%';
-- podemos consultar la tabla y esa columna porque tenemos all privileges sobre academia

-- quitamos all privileges
REVOKE ALL PRIVILEGES ON ACADEMIA.* FROM 'usu1'@'%';
/*
SELECT NOMBRE FROM ACADEMIA.ALUMNOS;
ERROR 1143 (42000): SELECT command denied to user 'usu1'@'localhost' for column 'NOMBRE' in table 'alumnos
*/











