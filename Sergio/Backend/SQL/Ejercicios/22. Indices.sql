USE academia;
-- 1. Crear un índice llamado i_nombre en la tabla cursos y columna “nombre”
SELECT *FROM CURSOS;
CREATE INDEX i_nombre ON CURSOS(NOMBRE);

-- 2. Mostrar los índices de la tabla “cursos”
SHOW INDEXES FROM CURSOS;

-- 4. Comprobar con EXPLAN qué índice se usa al consultar por “nombre”
EXPLAIN SELECT NOMBRE FROM CURSOS;

-- 5. Borrar el índice
DROP INDEX i_nombre ON CURSOS;
SHOW INDEXES FROM CURSOS;

-- 6. Volver a crearlo pero de tipo único y comprobar que se ha creado. La columna “Non unique” debe ser de tipo 0 (único). 
CREATE UNIQUE INDEX i_nombre ON CURSOS(NOMBRE);
SHOW INDEXES FROM CURSOS;

-- 7. Crear la siguiente tabla. Debemos crear los índices en el momento de creación de la tabla. Después, comprobar la creación de estos índices.
	CREATE TABLE DATOS_ALUMNOS2 (
	CODIGO INT,
	NOMBRE VARCHAR(50),
	APELLIDOS VARCHAR(50),
	constraint PRIMARY KEY (CODIGO),
	constraint unico1 UNIQUE(NOMBRE),
	INDEX i_nombre_apellidos (NOMBRE, APELLIDOS)
	);
    
    SHOW INDEXES FROM DATOS_ALUMNOS2;