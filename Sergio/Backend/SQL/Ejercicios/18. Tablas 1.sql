 -- 1. Dentro de la base de datos ‘academia’ crea la siguiente tabla:
	 USE ACADEMIA;
	 CREATE TABLE PRUEBA (
		COD_SERVIDOR INT,
		NOMBRE VARCHAR(50),
		MARCA VARCHAR(50),
		MEMORIA INT,
		DISCO INT,
		PRECIO DECIMAL(5,2),
		CPUs INT,
		FECHA_COMPRA DATE);
	DESC PRUEBA;
-- 2. Añadir una columna nueva llamada ‘DESCUENTO’ de tipo INT
    ALTER TABLE PRUEBA ADD DESCUENTO INT;
    DESC PRUEBA;
-- 3. Insertar un par de filas en la tabla
	INSERT INTO PRUEBA (COD_SERVIDOR, NOMBRE, MARCA, MEMORIA, DISCO, PRECIO, CPUs, FECHA_COMPRA, DESCUENTO) VALUES 
	(1, 'ORDENADOR', 'ASUS', 250, 8, 5, 8 ,'2024-01-12', 1),
	(2, 'ORDENADOR', 'LENOVO', 200, 16, 1, 16 ,'2024-01-24', 1);
    SELECT *FROM PRUEBA;
-- 4. Modificar DESCUENTO a varchar(2)
    ALTER TABLE PRUEBA MODIFY DESCUENTO VARCHAR(2);
    DESC PRUEBA;
-- 5. Modificar de nuevo a INT
    ALTER TABLE PRUEBA MODIFY DESCUENTO INT;
    DESC PRUEBA;
-- 6. Modificar MARCA para convertirla a INT
    ALTER TABLE PRUEBA MODIFY MARCA INT;
    DESC PRUEBA;
-- 7. Modificar longitud de una columna a un valor menor
    ALTER TABLE PRUEBA MODIFY NOMBRE VARCHAR(30);
    DESC PRUEBA;
-- 8. Cambiar posición de la columna DESCUENTO para que aparezca después de PRECIO
    ALTER TABLE PRUEBA MODIFY DESCUENTO VARCHAR(2) AFTER PRECIO;
    DESC PRUEBA;
-- 9. Modificar al mismo tiempo MARCA y MODELO a VARCHAR(75) y poner MARCA antes que COD_SERVIDOR
	ALTER TABLE PRUEBA MODIFY MARCA VARCHAR(75) FIRST, 
					   MODIFY NOMBRE VARCHAR(75);
     DESC PRUEBA;                         
-- 10.Modificar el nombre de la columna DISCO a ALMACENAMIENTO
	ALTER TABLE PRUEBA CHANGE COLUMN DISCO ALMACENAMIENTO INT;
    DESC PRUEBA;  
-- 11.Borrar columna FECHA_COMPRA
	ALTER TABLE PRUEBA DROP FECHA_COMPRA;
    DESC PRUEBA;  
-- 12.Crear una columna generada llamada “PRECIO_SERVIDOR” que contenga el precio del servidor menos el descuento
	ALTER TABLE PRUEBA ADD PRECIO_SERVIDOR DECIMAL(7,2) GENERATED ALWAYS AS (PRECIO-DESCUENTO);
    SELECT *FROM PRUEBA;
-- 13.Insertar fila para ver el resultado
	INSERT INTO PRUEBA (COD_SERVIDOR, NOMBRE, MARCA, MEMORIA, DISCO, PRECIO, CPUs, FECHA_COMPRA, DESCUENTO) VALUES 
	(3, 'ORDENADOR', 'ASUS', 250, 8, 10, 8 ,'2024-01-12', 1);
    SELECT *FROM PRUEBA;
-- 14.Crear otra columna generada que devuelve el nombre y la marca concatenada y en mayúsculas. Debe llamarse DATOS_SERVIDOR.
	ALTER TABLE PRUEBA ADD DATOS_SERVIDOR VARCHAR(50) GENERATED ALWAYS AS (LOWER(CONCAT(NOMBRE, '-', MARCA))) AFTER NOMBRE;
    DESC PRUEBA;
-- 15.Insertar una fila para ver el resultado
	INSERT INTO PRUEBA (COD_SERVIDOR, NOMBRE, MARCA, MEMORIA, DISCO, PRECIO, CPUs, FECHA_COMPRA, DESCUENTO) VALUES 
	(4, 'ORDENADOR', 'ASUS', 250, 8, 10, 8 ,'2024-01-12', 1);
	SELECT *FROM PRUEBA;
-- 16.Renombra la tabla creada
	RENAME TABLE PRUEBA TO PRUEBA2;
-- 17.Mueve la tabla a otra base de datos y comprueba que ha funcionado
	RENAME TABLE PRUEBA2 TO PRACTICA_2.PRUEBA2;
-- 18.Borra la tabla que acabas de crear
	DROP TABLE PRACTICA_2.PRUEBA2;