/* C - ROLES */
-- 1. Crear dos usuarios (‘Test1’@’%’, ‘Test2’@’%’)con la password de vuestra preferencia y 
-- comprobar que se han creado.

create user 'test1'@'%' identified by 'pass';
create user 'test2'@'%' identified by 'pass';

SELECT USER FROM MYSQL.USER;

-- 2. Abrir una sesión en el terminal con el usuario Test1 e intentar entrar en la base de datos academia
/* Desde test1
USE ACADEMIA;
ERROR 1044 (42000): Access denied for user 'test1'@'%' to database 'academia'
*/

-- 3. Crear un rol llamado: testing
CREATE ROLE testing;

-- 4. Crear el privilegio para hacer SELECT sobre la tabla CURSOS y asignarlo al rol. Visualizar estos permisos.
GRANT SELECT ON ACADEMIA.CURSOS TO testing;

SHOW GRANTS FOR testing;

-- 5. Asignar el rol a los usuarios creados.
GRANT testing to 'test1'@'%';
GRANT testing TO 'test2'@'%';

/*
	SELECT current_role();
	+----------------+
	| current_role() |
	+----------------+
	| NONE           |
	+----------------+
	1 row in set (0,00 sec)
*/

-- 6. Activar los roles y comprobar si se puede acceder a la tabla cursos.

SET DEFAULT ROLE ALL TO 'test1'@'%';
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


SET DEFAULT ROLE ALL TO 'test2'@'%';

-- 7. Ver los roles existentes.

SELECT * FROM MYSQL.USER;

SELECT * FROM MYSQL.USER WHERE authentication_string = '' and password_expired='Y' and account_locked= 'Y';










