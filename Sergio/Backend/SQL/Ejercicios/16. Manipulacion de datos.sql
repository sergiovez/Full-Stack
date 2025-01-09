-- 1. Lanzar el siguiente CREATE.
	CREATE TABLE `DML`.`coches` ( `matricula` VARCHAR(8) NOT NULL,
	`modelo` VARCHAR(45) NOT NULL, `marca` VARCHAR(45) NOT NULL,
	`precio` DECIMAL NULL, `fecha_compra` DATE NULL, PRIMARY KEY
	(`matricula`));
-- 2. Inserta un par de filas usando las columnas completas.
	USE DML;
	DESC COCHES;
	INSERT INTO COCHES (MATRICULA, MODELO, MARCA, PRECIO, FECHA_COMPRA) VALUES ('MAT', 'OPEL', 'CORSA' ,12000, curdate());
	INSERT INTO COCHES (MATRICULA, MODELO, MARCA, PRECIO, FECHA_COMPRA) VALUES ('MAT1', 'MAZADA', '3' ,15000, curdate());
    SELECT *FROM COCHES;
-- 3. Inserta una fila sin usar columnas, solo values.
	INSERT INTO COCHES VALUES ('MAT2', 'MAZADA', '3', 20000, curdate());
    SELECT *FROM COCHES;
-- 4. Inserta una fila sin poner los campos NULL
	INSERT INTO COCHES (MATRICULA, MODELO, MARCA) VALUES ('MAT5', 'MAZADA', '5');
    SELECT *FROM COCHES;
-- 5. Intenta insertar una fila sin una columna NOT NULL. Debe generar un error.
	INSERT INTO COCHES (MATRICULA, MODELO) VALUES ('MAT5', 'MAZADA');
-- 6. Inserta 2 filas al mismo tiempo.
	INSERT INTO COCHES (MATRICULA, MODELO, MARCA, PRECIO, FECHA_COMPRA) VALUES 
    ('MA6', 'OPEL', 'CORSA' ,12000, curdate()),
	('MAT7', 'MAZADA', '3' ,15000, curdate());
    SELECT *FROM COCHES;
-- 7. Crea una tabla llamada COCHES2 que sea una copia de COCHES.
	CREATE TABLE `DML`.`coches2` ( `matricula` VARCHAR(8) NOT NULL,
	`modelo` VARCHAR(45) NOT NULL, `marca` VARCHAR(45) NOT NULL,
	`precio` DECIMAL NULL, `fecha_compra` DATE NULL, PRIMARY KEY
	(`matricula`));
-- 8. Inserta todas las filas de coches en coches2;
	INSERT INTO COCHES2 SELECT * FROM COCHES;
    SELECT *FROM COCHES2;
-- 9. Modificar todos los coches que valgan más de un precio, por ejemplo 10.000.
	-- (Adaptarlo a vuestros datos). Aumentamos el precio en 1000.
    UPDATE COCHES
    SET PRECIO = PRECIO + 1000 WHERE PRECIO > 14000;
    SELECT *FROM COCHES;
-- 10. Cambiar el nombre de la marca para que aparezca en mayúsculas.
    UPDATE COCHES
    SET MODELO = LOWER(MARCA);
    SELECT *FROM COCHES;
-- 11. Borrar los coches de BMW.
	DELETE FROM COCHES WHERE MODELO = 'BMW';
    SELECT *FROM COCHES;
-- 12. Vamos a hacer un REPLACE de la primera fila por otra cualquiera
	REPLACE INTO COCHES (MATRICULA, MODELO, MARCA, PRECIO, FECHA_COMPRA) 
    VALUES ('MA6', 'MAZADA', '3' ,15000, curdate());
    SELECT *FROM COCHES;