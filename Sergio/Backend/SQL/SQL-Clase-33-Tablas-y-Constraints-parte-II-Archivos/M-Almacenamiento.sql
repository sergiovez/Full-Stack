-- MOTORES DE ALMACENAMIENTO (ENGINES)
/*
- Son los encargados de guardar, gestionar y mantener los datos de las tablas que 
	utilizamos
    
- Cada motor tiene unas características diferentes que se adaptan a determinadas 
	operaciones
    
- En el caso de MySQL, disponemos de varios motores que se pueden usar a nivel 
	de base de datos y también a nivel de tabla
    
- En otras bases de datos esto no pasa, solamente hay un motor

- Por defecto se usa InnoDB. Soporta transaccionalidad completa, control de 
	concurrencia, etc.
*/

SHOW ENGINES;

USE WORLD;
SHOW CREATE TABLE CITY;
SHOW TABLE STATUS WHERE NAME = "CITY";


CREATE SCHEMA MOTORES;
USE MOTORES;
CREATE TABLE T1 (ID INT, NOMBRE VARCHAR(100));
SHOW TABLE STATUS WHERE NAME = "T1";

CREATE TABLE T2 
(ID INT not null, 
NOMBRE VARCHAR(100) not null
) engine=csv;

SHOW TABLE STATUS WHERE NAME = "T3";

SHOW VARIABLES LIKE "%datadir%";

-- Para dar permisos de lectura
-- sudo chmod 755 /usr/local/mysql/data/

-- cambio de motor de almacenamiento
alter table t3 engine=csv;

CREATE TABLE T3 
(ID INT not null, 
NOMBRE VARCHAR(100) not null
);

-- TABLAS TEMPORALES
-- Solamente existen mientras dura una sesión y solamente puede verlas el usuario que las crea
-- Pueden tener el mismo nombre que una tabla permanente. Si hacemos una consulta, vamos a acceder automáticamente a la tabla temporal.

CREATE TEMPORARY TABLE TEMPORAL1 (ID int, codigo varchar(100));
DESC TEMPORAL1;

INSERT INTO TEMPORAL1 VALUES(1, "NOMBRE");
SELECT * FROM TEMPORAL1;

USE WORLD;

CREATE TEMPORARY TABLE DATOS 
SELECT CONTINENT, COUNT(*) FROM COUNTRY GROUP BY CONTINENT;

SELECT * FROM DATOS;









