/*  A- USUARIOS */
-- 1. Conectarse desde el usuario root desde el terminal. Crear un usuario llamado “usu1” que pueda conectarse desde cualquier host. 
-- Comprobar después que el usuario se ha creado correctamente. 
CREATE USER 'usu1'@'%' IDENTIFIED BY 'pass';
SELECT USER FROM MYSQL.USER;
-- COMANDO PARA VER USUARIOS CONECTADOS

-- 3 Crear un usuario llamado “usu2” sin ningún host asociado. Comprobar que se ha creado correctamente. ¿Qué host le ha puesto por defecto?
CREATE USER 'usu2' IDENTIFIED BY 'pass';
SELECT * FROM MYSQL.USER;

-- 4. Cambiar la password de usu1
SET PASSWORD FOR 'usu1'@'%' = 'password';
    
-- 5. Cambia de diferente forma la password al usu2.
ALTER USER 'usu2'@'%' IDENTIFIED BY 'prueba1';

-- 6. Borra el usu2
DROP USER 'usu2'@'%' ;
SELECT * FROM MYSQL.USER;

/*B- PERMISOS*/
-- 1. Trabajamos con el usuario “usu1” que hemos creado en el apartado anterior y vamos a tener 2 sesiones 
-- abiertas, una como usuario de tipo root y el otro con el usuario “usu1”.  Desde “usu1”, intentar leer la 
-- tabla cursos de la base de datos “academia”.  
/* Desde usu1
	SELECT * FROM academia.CURSOS;
	ERROR 1142 (42000): SELECT command denied to user 'usu1'@'localhost' for table 'cursos'
*/
-- 2. Dar permisos de SELECT sobre la tabla al usu1. Comprobar que ahora puede hacer una SELECT.
GRANT SELECT ON ACADEMIA.CURSOS TO 'usu1'@'%';

-- 3. Intentar hacer un delete del curso12 desde usu1 
/*
DELETE FROM academia.CURSOS where COD_CURSO=10;
ERROR 1142 (42000): DELETE command denied to user 'usu1'@'localhost' for table 'cursos'
*/
-- 4. Dar permisos para que lo pueda hacer.
GRANT DELETE ON ACADEMIA.CURSOS TO 'usu1'@'%';

-- 5. Dar permisos de SELECT sobre las columnas nombre y apellidos de la tabla ALUMNOS al usuario “usu1” . 
-- Comprobar que solo puede leer esas columnas.
/*
SELECT * FROM ACADEMIA.ALUMNOS;
ERROR 1143 (42000): SELECT command denied to user 'usu1'@'localhost' for column 'cod_alumno' in table 'alumnos
*/
GRANT SELECT(NOMBRE, APELLIDOS) ON ACADEMIA.ALUMNOS TO 'usu1'@'%';

-- 6. Comprobar los permisos que tiene usu1.
SHOW GRANTS FOR 'usu1'@'%';

-- 7. Dar todos los permisos sobre la base de datos academia a “usu1”. Comprobar los permisos.
GRANT ALL ON academia.* TO 'usu1'@'%'; 

-- 8. Ahora, quitar solo el permiso de SELECT sobre la columna nombre de la tabla ALUMNOS. ¿Qué ocurre?
REVOKE SELECT ON ACADEMIA.ALUMNOS FROM 'usu1'@'%';

/* C - ROLES */
-- 1. Crear dos usuarios (‘Test1’@’%’, ‘Test2’@’%’)con la password de vuestra preferencia y 
-- comprobar que se han creado.
CREATE USER 'Test1'@'%' IDENTIFIED BY 'pass1';
CREATE USER 'Test2'@'%' IDENTIFIED BY 'pass2';
SELECT USER FROM MYSQL.USER;

-- 2. Abrir una sesión en el terminal con el usuario Test1 e intentar entrar en la base de datos academia
/* Desde test1
USE ACADEMIA;
ERROR 1044 (42000): Access denied for user 'test1'@'%' to database 'academia'
*/
-- 3. Crear un rol llamado: testing
	CREATE ROLE TESTING;
    
-- 4. Crear el privilegio para hacer SELECT sobre la tabla CURSOS y asignarlo al rol. Visualizar estos permisos.
	GRANT SELECT ON ACADEMIA.CURSOS TO TESTING;
	SHOW GRANTS FOR TESTING;
    
-- 5. Asignar el rol a los usuarios creados.
/*
	SELECT current_role();
	+----------------+
	| current_role() |
	+----------------+
	| NONE           |
	+----------------+
	1 row in set (0,00 sec)
*/
	GRANT TESTING TO 'Test1'@'%';
    GRANT TESTING TO 'Test2'@'%';
    
-- 6. Activar los roles y comprobar si se puede acceder a la tabla cursos.
	SET DEFAULT ROLE ALL TO 'Test1'@'%';
    
-- después de salir y volver a entrar en test1
/*
SELECT current_role();
+----------------+
| current_role() |
+----------------+
| `testing`@`%`  |
+----------------+
1 row in set (0,00 sec)

USE ACADEMIA;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
*/

-- 7. Ver los roles existentes.
SELECT * FROM MYSQL.USER;