/*
TABLAS
1. Dentro de la base de datos ‘academia’ crea la siguiente tabla:
*/

USE ACADEMIA;

CREATE TABLE SERVIDORES 
(COD_SERVIDOR INT,
NOMBRE VARCHAR(50),
MARCA VARCHAR(50),
MEMORIA INT,
DISCO INT,
PRECIO DECIMAL(7,2),
CPUS INT,
FECHA_ENTRADA DATE
);

-- 2. Añadir una columna nueva llamada ‘DESCUENTO’ de tipo INT

ALTER TABLE SERVIDORES ADD DESCUENTO INT;

SELECT * FROM SERVIDORES;

-- 3. Insertar un par de filas en la tabla

INSERT INTO SERVIDORES VALUES(
1, "SERVER 1", "HP", 1000, 12000, 500.5, 2, curdate(), 20);

INSERT INTO SERVIDORES VALUES(
1, "SERVER 2", "HP", 1200, 1000, 600.5, 2, curdate(), 15);

-- 4. Modificar DESCUENTO a varchar(2)
ALTER TABLE SERVIDORES MODIFY DESCUENTO VARCHAR(2);
-- 5. Modificar de nuevo a INT
ALTER TABLE SERVIDORES MODIFY DESCUENTO int;

-- 6. Modificar MARCA para convertirla a INT
ALTER TABLE SERVIDORES MODIFY MARCA int;

-- 7. Modificar longitud de una columna a un valor menor
ALTER TABLE SERVIDORES MODIFY MARCA VARCHAR(30); -- podemos cambiarlo a 30 porque no hay valores almacenados que ocupen más de 30. Si los hubiera, no se podría

-- 8. Cambiar posición de la columna DESCUENTO para que aparezca después de PRECIO
ALTER TABLE SERVIDORES MODIFY DESCUENTO INT AFTER PRECIO;

-- 9. Modificar al mismo tiempo MARCA y NOMBRE a VARCHAR(75) y poner MARCA antes que COD_SERVIDOR
ALTER TABLE SERVIDORES MODIFY NOMBRE VARCHAR (75), MODIFY MARCA VARCHAR(75) AFTER COD_SERVIDOR;

DESC SERVIDORES;

-- 10. Modificar el nombre de la columna DISCO a ALMACENAMIENTO.
ALTER TABLE SERVIDORES CHANGE COLUMN DISCO ALMACENAMIENTO INT;

-- 11. Borrar columna FECHA_COMPRA
ALTER TABLE SERVIDORES DROP FECHA_ENTRADA;

-- 12. Crear una columna generada llamada “PRECIO_SERVIDOR” que contenga el precio del servidor menos el descuento
ALTER TABLE SERVIDORES ADD PRECIO_SERVIDOR DECIMAL(7,2) GENERATED ALWAYS AS (PRECIO-(PRECIO*DESCUENTO/100));

SELECT * FROM SERVIDORES;

-- 13 Insertar fila para ver el resultado
INSERT INTO SERVIDORES(COD_SERVIDOR, MARCA, NOMBRE, MEMORIA, ALMACENAMIENTO, PRECIO, DESCUENTO, CPUS) VALUES(1, "HP", "SERVER 3", 1000, 14000, 700, 30, 4);
DESC SERVIDORES;

-- 14. Crear otra columna generada que devuelve el nombre y la marca concatenada y en mayúsculas. Debe llamarse DATOS_SERVIDOR. 
ALTER TABLE SERVIDORES ADD DATOS_SERVIDOR VARCHAR(150) GENERATED ALWAYS AS (UPPER(CONCAT(NOMBRE, '-', MARCA))) AFTER NOMBRE;
-- 15. Insertar una fila para ver el resultado

-- 16. Renombra la tabla creada
RENAME TABLE SERVIDORES TO SERVIDOR;
SHOW TABLES;

-- 17. Mueve la tabla a otra base de datos y comprueba que ha funcionado
RENAME TABLE SERVIDOR TO DML.SERVIDOR;


DROP TABLE  DML.SERVIDOR;
