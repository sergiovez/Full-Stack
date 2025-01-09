-- EJERCICIOS SOBRE ÍNDICES

/*
1. Crear un índice llamado i_nombre en la tabla cursos y columna “nombre”
2. Mostrar los índices de la tabla “cursos”
3. ¿Por qué aparecen dos? 
4. Comprobar con EXPLAN qué índice se usa al consultar por “nombre”
5. Borrar el índice
6. Volver a crearlo pero de tipo único y comprobar que se ha creado. La columna “Non unique” debe ser de tipo 0 (único). 
7. Crear la siguiente tabla. Debemos crear los índices en el momento de creación de la tabla. Después, comprobar la creación de estos índices.
*/

USE ACADEMIA;
CREATE INDEX i_nombre ON CURSOS(nombre);

SHOW INDEXES FROM CURSOS;

EXPLAIN SELECT * FROM CURSOS WHERE NOMBRE="CURSO10";

DROP INDEX i_nombre ON CURSOS;

CREATE UNIQUE INDEX i_nombre ON CURSOS(NOMBRE);

CREATE TABLE TABLA_INDICES (
CODIGO INT PRIMARY KEY,
NOMBRE VARCHAR(50) UNIQUE,
APELLIDOS VARCHAR (100),
INDEX NOMBRE_COMPLETO(NOMBRE, APELLIDOS)
);


SHOW INDEXES FROM TABLA_INDICES;


