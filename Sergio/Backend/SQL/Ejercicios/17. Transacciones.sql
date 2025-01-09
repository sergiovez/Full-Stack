 -- Utilizando la base de datos academia:
 USE academia;
  -- 1. Quitar el autocommit. Comprobar que ha funcionado
  	SHOW VARIABLES LIKE 'autocommit';
    SET AUTOCOMMIT = 0; 
    SHOW VARIABLES LIKE 'autocommit';
  -- 2. Vemos las filas existentes
	SELECT *FROM ALUMNOS;
  -- 3. Insertamos un par de filas usando las columnas completas
  	INSERT INTO ALUMNOS (COD_ALUMNO, NOMBRE, APELLIDOS, CORREO, EDAD, COD_CURSO) VALUES 
	(101, 'ROSA', 'GARCIA', 'rosa@gmail.com', 24 , 2),
	(102, 'MARIA', 'PASTOR', 'maria@gmail.com', 26 , 3);
  -- 4. Comprobamos que están
  	SELECT *FROM ALUMNOS;
  -- 5. Hacemos un ROLLBACK y comprobamos de nuevo
	ROLLBACK;
	SELECT *FROM ALUMNOS;
  -- 6. Volvemos a insertarlas y hacemos un COMMIT
  	START TRANSACTION ; -- Indicamos que comienza una transaccion
		INSERT INTO ALUMNOS (COD_ALUMNO, NOMBRE, APELLIDOS, CORREO, EDAD, COD_CURSO) VALUES 
		(101, 'ROSA', 'GARCIA', 'rosa@gmail.com', 24 , 2),
		(102, 'MARIA', 'PASTOR', 'maria@gmail.com', 26 , 3);
	COMMIT; -- Indica el final de la transaccion
    SELECT *FROM ALUMNOS;
  -- 7. Intentar hacer un ROLLBACK. ¿funciona?
  	ROLLBACK;
	SELECT *FROM ALUMNOS;
  -- 8. Ahora vamos a hacer una transacción con START TRANSACTION.
	  -- a. Insertamos una fila
	  -- b. Borramos otra
	  -- c. Modificamos otra
	START TRANSACTION ; 
		INSERT INTO ALUMNOS (COD_ALUMNO, NOMBRE, APELLIDOS, CORREO, EDAD, COD_CURSO) VALUES 
			(103, 'ROSA', 'GARCIA', 'rosa@gmail.com', 24 , 2),
			(104, 'MARIA', 'PASTOR', 'maria@gmail.com', 26 , 3);
		DELETE FROM ALUMNOS WHERE COD_ALUMNO = 102; 
		UPDATE ALUMNOS 
		SET NOMBRE = 'SERGIO' WHERE COD_ALUMNO = 101;
    SELECT *FROM ALUMNOS;
  -- 9. Hacemos un Rollback y comprobamos que se ha deshecho la transacción
	ROLLBACK;
    SELECT *FROM ALUMNOS;
  -- 10. Volvemos a lanzar la transacción pero con COMMIT y comprobamos que ha funcionado
  	START TRANSACTION ;
		INSERT INTO ALUMNOS (COD_ALUMNO, NOMBRE, APELLIDOS, CORREO, EDAD, COD_CURSO) VALUES 
			(103, 'ROSA', 'GARCIA', 'rosa@gmail.com', 24 , 2),
			(104, 'MARIA', 'PASTOR', 'maria@gmail.com', 26 , 3);
		DELETE FROM ALUMNOS WHERE COD_ALUMNO = 102; 
		UPDATE ALUMNOS 
		SET NOMBRE = 'SERGIO' WHERE COD_ALUMNO = 101;
	COMMIT;
    SELECT *FROM ALUMNOS;
  -- 11. Vamos a hacer ahora un Rollback parcial
	  -- a. Insertamos una fila
	  -- b. Ponemos un SAVEPOINT
	  -- c. Borramos otra
	  -- d. Modificamos otra
		START TRANSACTION ;
			INSERT INTO ALUMNOS (COD_ALUMNO, NOMBRE, APELLIDOS, CORREO, EDAD, COD_CURSO) VALUES 
				(105, 'ROSA', 'GARCIA', 'rosa@gmail.com', 24 , 2),
				(106, 'MARIA', 'PASTOR', 'maria@gmail.com', 26 , 3);
			SAVEPOINT PASO1;
			DELETE FROM ALUMNOS WHERE COD_ALUMNO = 104; 
			UPDATE ALUMNOS 
			SET NOMBRE = 'SERGIO' WHERE COD_ALUMNO = 105;
		SELECT *FROM ALUMNOS;
		ROLLBACK TO PASO1;
        SELECT *FROM ALUMNOS;
  -- 12. Truncamos la tabla coches para que quede vacía
	USE PRACTICA_2;
	SELECT *FROM DEPART;
	TRUNCATE DEPART;
	SELECT *FROM DEPART;
  -- 13. Volvemos a poner el autocommit
	SET AUTOCOMMIT = 1; 