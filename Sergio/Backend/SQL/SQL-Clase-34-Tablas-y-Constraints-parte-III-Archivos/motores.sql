-- MOTORES DE ALMACENAMIENTO
-- 1. Comprobar los motores de almacenamiento que tenemos disponibles 
SHOW ENGINES;

-- 2. Comprobar el motor que está usando la tabla CURSOS. Debe ser InnoDB. También podemos probar con SHOW status. 
SHOW CREATE TABLE CURSOS;

/*
CREATE TABLE `CURSOS` (
  `cod_curso` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `precio` int NOT NULL,
  PRIMARY KEY (`cod_curso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
*/

-- 3. Averiguar en qué directorio tenemos los datos de las Bases de datos y nos posicionamos en ese directorio.
SHOW VARIABLES LIKE "%datadir";

-- 6. Crear una tabla llamada “isam1” de tipo MYISAM con la siguiente estructura
CREATE TABLE isam1(codigo int, nombre varchar(50), apellidos varchar(50)) engine=myisam;

desc isam1;


-- 8. Crear otra tabla denomina csv1 con la misma estructura que “isam1” con el motor CSV
CREATE TABLE csv1(
codigo int not null, 
nombre varchar(50) not null, 
apellidos varchar(50)not null
) engine=csv;

desc csv1;

-- 10. Insertamos un par de filas en la tabla.
insert into csv1 values (1, 'juan', 'gomez');
insert into csv1 values (2, 'pepe', 'lopez');

select * from csv1;

-- 13. Cambiar el motor de la tabla a InnoDB. Comprobamos que se ha modificado
ALTER TABLE CSV1 ENGINE = InnoDB;
SHOW CREATE TABLE CSV1;
/*CREATE TABLE `CSV1` (
  `codigo` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci*/

-- 15. Convertirlo a un motor de tipo ARCHIVE y comprobar el resultado del directorio.
ALTER TABLE CSV1 ENGINE = ARCHIVE;
SHOW CREATE TABLE CSV1;
/*CREATE TABLE `CSV1` (
  `codigo` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL
) ENGINE=ARCHIVE DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci*/

-- 16. Probar ahora el motor BLACKHOLE,que es para poder probar cosas. Permite comandos de tipo INSERT pero realmente no almacena nada. • Cambiamos el motor a BLACKHOLE. 
ALTER TABLE CSV1 ENGINE= BLACKHOLE;

SELECT * FROM CSV1;

INSERT INTO CSV1 VALUES(3, 'paco', 'ruiz');

