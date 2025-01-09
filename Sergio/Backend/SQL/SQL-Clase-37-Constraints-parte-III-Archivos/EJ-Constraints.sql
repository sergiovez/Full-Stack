-- ** EJERCICIOS DE RESTRICCIONES **
-- 1. Crear una tabla llamada “FABRICANTES” que tenga la siguiente estructura
USE RESTRICCIONES;

CREATE TABLE FABRICANTES (
CODIGO INT AUTO_INCREMENT PRIMARY KEY,
NOMBRE VARCHAR(50) NOT NULL,
APELLIDOS VARCHAR(50),
EDAD INT,
FECHA_ALTA DATE
);
-- 2. Hacer un DESC de la tabla para ver sus propiedades y comprobamos que tenemos la Primary Key y el auto_increment

DESC FABRICANTES;

-- 3. Insertar un par de filas en la tabla para comprobar el autoincrement. Debe haber generado un valor a partir de 1
INSERT INTO FABRICANTES(NOMBRE, APELLIDOS, EDAD, FECHA_ALTA) VALUES ('Juan', 'Pérez', 59, CURDATE());
INSERT INTO FABRICANTES(NOMBRE, APELLIDOS, EDAD, FECHA_ALTA) VALUES ('Pedro', 'López', 39, CURDATE());

select * from fabricantes;

-- 4. Modificar el campo AUTOINCREMENT para que comience ahora desde 1000
ALTER TABLE FABRICANTES AUTO_INCREMENT = 1000;

-- 5. Insertar otro par de filas para Comprobar el resultado
INSERT INTO FABRICANTES(NOMBRE, APELLIDOS, EDAD, FECHA_ALTA) VALUES ('María', 'Pérez', 54, CURDATE());
INSERT INTO FABRICANTES(NOMBRE, APELLIDOS, EDAD, FECHA_ALTA) VALUES ('Lucía', 'Martçín', 21, CURDATE());

-- 6. Crear una clave única a nivel de TABLA para las columnas nombre y apellidos. La llamamos nombre_completo. 
ALTER TABLE FABRICANTES ADD CONSTRAINT NOMBRE_COMPLETO UNIQUE KEY (nombre,apellidos);

-- 7. Hacer un DESC para comprobar el resultado. Debe poner MUL para indicar que es una clave múltiple. 
desc fabricantes;

-- 8. Comprobar las constraints de la tabla con “information_schema.table_constraints
SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE TABLE_NAME="FABRICANTES" AND TABLE_SCHEMA="RESTRICCIONES";

-- 9. Crear una tabla llamada “TANQUES” con la siguiente estructura y después comprobar con DESC
CREATE TABLE TANQUES (
CODIGO INT AUTO_INCREMENT PRIMARY KEY,
NOMBRE VARCHAR(50) NOT NULL,
PAIS VARCHAR(50) NOT NULL DEFAULT "desconocido",
LONGITUD INT NOT NULL DEFAULT 0,
PESO INT DEFAULT 5600,
PESO_ARMADO INT
);
DROP TABLE TANQUES;
-- 10. Añadir las siguientes filas y comprobar que se han insertado:
insert into tanques (nombre,pais,longitud,peso,peso_armado) values ('Lepoard A','Alemania',9.67,62000,65000); 
insert into tanques (nombre,pais,longitud,peso,peso_armado) values ('Lepoard E','España',9.67,62000,65000); 
insert into tanques (nombre,pais,longitud,peso,peso_armado) values ('T-90M','Rusia',9.63,46000,48000); 
insert into tanques (nombre,pais,longitud,peso,peso_armado) values ('Leclerc','Francia',10.6,56000,73000); 
insert into tanques (nombre,pais,longitud,peso,peso_armado) values ('Merkava Mk.4','Israel',9.04,65000,73000);

select * FROM TANQUES;

-- 11. Añadir una constraint de tipo UNIQUE en la columna “nombre_tanque”
ALTER TABLE TANQUES ADD CONSTRAINT NOMBRE_TANQUE UNIQUE(NOMBRE);

-- 12. Comprobar que se ha realizado la restricción
SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE TABLE_NAME="TANQUES" AND TABLE_SCHEMA="RESTRICCIONES";
-- 13. Intentar añadir una de las filas anteriores. Debe generar un error porque aunque genera una nueva Primary Key con el increment, la clave única debe fallar.
insert into tanques (nombre,pais,longitud,peso,peso_armado) values ('Merkava Mk.4','Israel',9.04,65000,73000);

-- 14. Insertar una nueva fila dejando los default por defecto
INSERT INTO TANQUES(NOMBRE, PESO_ARMADO) VALUES ("ejercicio14", 300000);

-- 15. Cambiar default value de longitud a 0 e insertar otra fila para comprobarlo
ALTER TABLE TANQUES ALTER LONGITUD SET DEFAULT 0;
INSERT INTO TANQUES(NOMBRE, PESO_ARMADO) VALUES ("EJERCICIO14_PARTE2", 300000);

-- 16. Crear una constraint de tipo CHECK, donde el peso_armado no puede ser inferior al peso del tanque. La llamamos “control_peso” 

ALTER TABLE TANQUES ADD CONSTRAINT CONTROL_PESO CHECK (PESO<PESO_ARMADO);

-- 17. Comprobar las constraints 
SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE TABLE_NAME="TANQUES" AND TABLE_SCHEMA="RESTRICCIONES";

-- 18. Insertar una fila para comprobar que funciona y que no deja insertarlo.
insert into tanques (nombre,pais,longitud,peso,peso_armado) values ('Lepoard Y','España',9.67,67000,65000); 

-- 19. Crea la siguiente tabla:
CREATE TABLE PAISES (
NOMBRE_PAIS VARCHAR(50) PRIMARY KEY,
DESCRIPCION VARCHAR(150)
);

-- 20. Intentar crear una clave ajena entre tanques y países, de forma que el país de Tanques sea foreign key de la columna nombre_pais de la tablas países. ¿Funciona?

ALTER TABLE TANQUES ADD CONSTRAINT FKEY1 FOREIGN KEY (PAIS) references PAISES(NOMBRE_PAIS);


-- 21. Insertar los valores necesarios
INSERT INTO PAISES (NOMBRE_PAIS) VALUES ('Alemania'), ('España'), ('Rusia'), ('Francia'), ('Israel'),('desconocido');

-- 22. Intentar de nuevo crear la foreign key. Ahora debería funcionar 
ALTER TABLE TANQUES ADD CONSTRAINT FKEY1 FOREIGN KEY (PAIS) references PAISES(NOMBRE_PAIS);

-- 23. Insertar una fila con un país que no exista, para que genere un error 
insert into tanques (nombre,pais,longitud,peso,peso_armado) values ('T-60M','Luxemburgo',9.63,46000,48000); 

-- 24. Borrar la restricción de tipo Check que creamos antes, denominada “control_peso” y comprobamos que ha desaparecido. 
alter table tanques drop constraint control_peso;

-- 25. Borrar el default de la columna “longitud” y comprobar que ha desaparecido con un DESC
alter table tanques alter longitud drop default;
SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE TABLE_NAME="TANQUES" AND TABLE_SCHEMA="RESTRICCIONES";
