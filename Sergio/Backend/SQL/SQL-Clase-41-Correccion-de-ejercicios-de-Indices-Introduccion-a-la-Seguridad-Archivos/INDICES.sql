/*
		ÍNDICES
    - Funcionalidad que sirve para poder buscar filas de una forma mucho más rápida
    - Los índices permiten organizar los datos de forma que podamos buscarlos por la clave del índice
    - Similar a un diccionario. Guardamos la clave y la posición de la fina que posee esa clave o valor
    - Hay que actualizarlos cada vez que modificamos la tabla
    - Tipos de índice:
		*PRIMARY
        *UNIQUE
        *INDEX NORMAL
        *FULLTEXT
        
	- El tipo de almacenamiento depende del tipo de índice:
		* B-TREE es el más habitual. Se suele usar para índices Primary, Unique, Fulltext...
        * R-TREE se utiliza para datos espaciales
        * HASH para índices de tablas en memoria
*/

CREATE SCHEMA INDICES;
USE INDICES;

CREATE TABLE DATOS_ALUMNO (
CODIGO INT,
NOMBRE VARCHAR(50),
APELLIDOS VARCHAR(100),
FECHA DATE);


CREATE INDEX i_apellidos ON DATOS_ALUMNO(APELLIDOS);

SHOW INDEXES FROM DATOS_ALUMNO;

CREATE INDEX i_nombre_completo ON DATOS_ALUMNO(APELLIDOS, NOMBRE);


EXPLAIN SELECT * FROM DATOS_ALUMNO;

EXPLAIN SELECT * FROM DATOS_ALUMNO WHERE APELLIDOS ="GOMEZ";

EXPLAIN SELECT * FROM DATOS_ALUMNO WHERE NOMBRE ="NOMBRE" AND APELLIDOS = "GOMEZ";

CREATE TABLE DATOS_ALUMNOS2 (
CODIGO INT,
NOMBRE VARCHAR(50),
DNI VARCHAR(50),
constraint PRIMARY KEY (CODIGO),
constraint unico1 UNIQUE(DNI),
INDEX i_nombre (nombre)
);

Show indexes from DATOS_ALUMNOS2;


CREATE TABLE DATOS3(
CODIGO INT,
NOMBRE VARCHAR(50),
DNI VARCHAR (50));

CREATE UNIQUE INDEX i_dni ON DATOS3(DNI);
SHOW INDEXES FROM DATOS3;

SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE TABLE_NAME = "DATOS3";

-- CREATE primary INDEX I_CODIGO ON DATOS3(codigo); -> no se puede crear 

CREATE TABLE DATOS4(
CODIGO INT,
NOMBRE VARCHAR(50),
DNI VARCHAR(20)
);

CREATE INDEX i_nombre ON DATOS4(NOMBRE(15));
EXPLAIN SELECT * FROM DATOS4 WHERE NOMBRE="NOMBRE";

SHOW INDEXES FROM DATOS_ALUMNOS2;

DROP INDEX UNICO1 ON DATOS_ALUMNOS2;


























