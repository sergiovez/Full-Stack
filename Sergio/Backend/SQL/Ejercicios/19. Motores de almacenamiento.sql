-- Dentro de la base de datos ‘academia’...
-- 1. Comprobar los motores de almacenamiento que tenemos disponibles
	SHOW ENGINES;
-- 2. Comprobar el motor que está usando la tabla CURSOS. Debe ser InnoDB. También podemos probar con SHOW status.
	USE ACADEMIA;
    SHOW TABLE STATUS WHERE NAME = "CURSOS";
-- 3. Averiguar en qué directorio tenemos los datos de las Bases de datos y nos posicionamos en ese directorio.
	SHOW VARIABLES LIKE "%datadir";
-- 6. Crear una tabla llamada “isam1” de tipo MYISAM con la siguiente estructura:
	CREATE TABLE ISAM1 (
		Código INT,
		Nombre VARCHAR(50),
		Apellido1 VARCHAR(50),
		Apellido2 VARCHAR(50))
        ENGINE=MyISAM;
	DESC ISAM1;
    SHOW TABLE STATUS WHERE NAME = "ISAM1";
-- 8. Crear otra tabla denomina csv1 con la misma estructura que “isam1” con el motor CSV
	CREATE TABLE csv1 (
		Código INT NOT NULL,
		Nombre VARCHAR(50) NOT NULL,
		Apellido1 VARCHAR(50) NOT NULL,
		Apellido2 VARCHAR(50) NOT NULL)
        ENGINE=CSV;
	DESC csv1;
    SHOW TABLE STATUS WHERE NAME = "csv1";
-- 10. Insertamos un par de filas en la tabla.
	INSERT INTO csv1 (CÓDIGO, NOMBRE, APELLIDO1,APELLIDO2) VALUES 
	(1, 'ROSA', 'GARCIA' ,'LOPEZ'),
	(2, 'MARIA', 'PEREZ' ,'MARTINEZ');
    SELECT *FROM csv1;
-- 13. Cambiar el motor de la tabla a InnoDB. Comprobamos que se ha modificado
	ALTER TABLE csv1 ENGINE=InnoDB;
    SHOW TABLE STATUS WHERE NAME = "csv1";
-- 15. Convertirlo a un motor de tipo ARCHIVE y comprobar el resultado del directorio.
	ALTER TABLE csv1 ENGINE=ARCHIVE;
    SHOW TABLE STATUS WHERE NAME = "csv1";	
-- 16. Probar ahora el motor BLACKHOLE,que es para poder probar cosas. Permite comandos de tipo INSERT
	-- pero realmente no almacena nada. Cambiamos el motor a BLACKHOLE.
 	ALTER TABLE csv1 ENGINE=BLACKHOLE;
    SHOW TABLE STATUS WHERE NAME = "csv1";   
-- 18. Si hacemos una SELECT vemos que no sale nada.
	SELECT *FROM csv1;
-- 19. Prueba con algún Insert y comprueba si en realidad los almacena
		INSERT INTO csv1 (CÓDIGO, NOMBRE, APELLIDO1,APELLIDO2) VALUES 
	(3, 'ROSA', 'GARCIA' ,'LOPEZ');