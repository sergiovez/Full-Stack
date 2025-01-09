/*  A- USUARIOS */

-- 1. Conectarse desde el usuario root desde el terminal. Crear un usuario llamado “usu1” que pueda conectarse desde cualquier host. 
-- Comprobar después que el usuario se ha creado correctamente. 

CREATE USER 'usu1'@'%' IDENTIFIED BY 'password';

-- COMANDO PARA VER USUARIOS CONECTADOS
show processlist;

-- 3 Crear un usuario llamado “usu2” sin ningún host asociado. Comprobar que se ha creado correctamente. ¿Qué host le ha puesto por defecto?
CREATE USER 'usu2' identified BY 'pass';

SELECT * FROM MYSQL.USER;

-- 4. Cambiar la password de usu1
SET PASSWORD FOR 'usu1'@'%' = 'prueba';

-- 5. Cambia de diferente forma la password al usu2.
ALTER USER 'usu2'@'%' IDENTIFIED BY 'prueba1';

-- 6. Borra el usu2
DROP USER 'usu2'@'%';
SELECT * FROM MYSQL.USER;





