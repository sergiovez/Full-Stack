/*
    1. Crea una función que divida los números de las tarjetas en grupos de 4 dígitos. Para las que son tipo VISA, 
    separaremos estos grupos con ‘-’. Y para las que son tipo MASTERCARD, separaremos con ‘/’. Si el número no 
    tiene 16 dígitos escribe: ‘Número incorrecto’
*/
SELECT *FROM TARJETAS;
DESC TARJETAS;
USE FUNCIONES;
DROP FUNCTION IF EXISTS DIVIDIR_NUMEROS;
	DELIMITER //
	CREATE FUNCTION DIVIDIR_NUMEROS(NUM_TARJETA VARCHAR(50), TIPO VARCHAR(50))
	RETURNS VARCHAR(50) NO SQL
	BEGIN
		DECLARE bloque1 VARCHAR(4);
		DECLARE bloque2 VARCHAR(4);
		DECLARE bloque3 VARCHAR(4);
		DECLARE bloque4 VARCHAR(4);
		
		SET bloque1=' ';
		SET bloque2=' ';
		SET bloque3=' ';
		SET bloque4=' ';
		IF (length(NUM_TARJETA)<>16) THEN
			RETURN 'Número incorrecto';
		END IF;
        IF TIPO = 'visa' THEN
			SET BLOQUE1 = SUBSTRING(NUM_TARJETA, 1, 4);
			SET BLOQUE2 = SUBSTRING(NUM_TARJETA, 5, 4);
			SET BLOQUE3 = SUBSTRING(NUM_TARJETA, 9, 4);
			SET BLOQUE4 = SUBSTRING(NUM_TARJETA, 13, 4);
			RETURN concat(BLOQUE1, '-', BLOQUE2, '-', BLOQUE3, '-', BLOQUE4);
		END IF;
		IF TIPO = 'mastercard' THEN
			SET BLOQUE1 = SUBSTRING(NUM_TARJETA, 1, 4);
			SET BLOQUE2 = SUBSTRING(NUM_TARJETA, 5, 4);
			SET BLOQUE3 = SUBSTRING(NUM_TARJETA, 9, 4);
			SET BLOQUE4 = SUBSTRING(NUM_TARJETA, 13, 4);
			RETURN concat(BLOQUE1, '/', BLOQUE2, '/', BLOQUE3, '/', BLOQUE4);			
        END IF;
	END//
	DELIMITER ;
	SELECT NUM_TARJETA, TIPO, DIVIDIR_NUMEROS(NUM_TARJETA, TIPO) FROM TARJETAS;

/*
	2. Crea una función llamada “datos alumno” que devuelva en un solo valor el nombre, apellidos y correo 
    del alumno. Debe recibir como argumentos los 3 datos del alumno. Lo probamos en una SELECT. 
*/
USE ACADEMIA;
SELECT *FROM ALUMNOS;
DESC ALUMNOS;
DROP FUNCTION IF EXISTS DATOS_ALUMNO;
	DELIMITER //
	CREATE FUNCTION DATOS_ALUMNO(NOMBRE VARCHAR(50), APELLIDOS VARCHAR(50), CORREO VARCHAR(50))
	RETURNS VARCHAR(150) NO SQL
	BEGIN
		RETURN concat(NOMBRE, '-', APELLIDOS, '-', CORREO);
	END//
	DELIMITER ;
	SELECT NOMBRE, APELLIDOS, CORREO, DATOS_ALUMNO(NOMBRE, APELLIDOS, CORREO) FROM ALUMNOS;
    
/*
    3. Crear una función llamada “cursos_num_alumnos” que devuelva el número de alumnos de un curso que 
    se pasa como argumento Lo probamos con una SELECT.
*/
USE ACADEMIA;
SELECT *FROM ALUMNOS;
DESC ALUMNOS;
DROP FUNCTION IF EXISTS CURSOS_NUM_ALUMNOS;
	DELIMITER //
	CREATE FUNCTION CURSOS_NUM_ALUMNOS(P_COD INT)
	RETURNS INT READS SQL DATA
	BEGIN
		DECLARE NUM_ALUMNOS int;
		SET NUM_ALUMNOS = 0;
		SELECT COUNT(*) INTO NUM_ALUMNOS FROM ALUMNOS WHERE COD_CURSO = P_COD;
		RETURN NUM_ALUMNOS;
	END//
	DELIMITER ;
	SELECT NOMBRE, CURSOS_NUM_ALUMNOS(COD_CURSO) FROM CURSOS;
    
/*
	4. Crear una función llamada “nota_media” que pasándole el código del alumno nos indique la nota media de 
    dicho alumno
*/
SELECT *FROM NOTAS_ALUMNOS;
DROP FUNCTION IF EXISTS NOTA_MEDIA;
	DELIMITER //
	CREATE FUNCTION NOTA_MEDIA(P_COD_ALUMNOS INT)
	RETURNS DECIMAL READS SQL DATA
	BEGIN
		DECLARE NOTA_MEDIA DECIMAL;
		SET NOTA_MEDIA = 0;
		SELECT AVG(NOTA) INTO NOTA_MEDIA FROM NOTAS_ALUMNOS WHERE COD_ALUMNO = P_COD_ALUMNOS;
		RETURN NOTA_MEDIA;
	END//
	DELIMITER ;
	SELECT DISTINCT COD_ALUMNO, NOTA_MEDIA(COD_CURSO) FROM NOTAS_ALUMNOS;
    
/*
	EJERCICIOS CONTROL DE ERRORES
    5. Crea una tabla con únicamente dos columnas: Código y Texto. Después, crea un procedimiento llamado 
    “handler1” que lea la tabla. Debe tener un handler que controle si la tabla existe. Código 1146. 
    ¿Qué pasa si eliminamos la tabla?
*/
CREATE TABLE TABLA_CE (
	CODIGO INT,
    TEXTO TEXT );
    
INSERT INTO TABLA_CE VALUES (1, 'TEXTO1');
INSERT INTO TABLA_CE VALUES (2, 'TEXTO2');
INSERT INTO TABLA_CE VALUES (3, 'TEXTO3');

		DELIMITER //
		DROP PROCEDURE IF EXISTS HANDLER2//
		CREATE PROCEDURE HANDLER2()
		BEGIN
			DECLARE CONTINUE HANDLER FOR 1146
			SELECT CONCAT('La tabla no existe');
			SELECT * FROM TABLA_CE;
		END //
		CALL HANDLER2()//
        DELIMITER ;
        DROP TABLE TABLA_CE;
        CALL HANDLER2();

/*
	6. Hacer un procedimiento denominado “insert_curso_error” que intente insertar una fila en la tabla cursos. 
    Si la clave primaria está duplicada (código 1062), en vez de generar un error, recalculamos la clave 
    indicando el valor más alto más uno.
*/
DELIMITER //
DROP PROCEDURE IF EXISTS INSERT_CURSO_ERROR//
CREATE PROCEDURE INSERT_CURSO_ERROR(P_CODIGO INT, P_NOMBRE VARCHAR(50), P_PRECIO DECIMAL)
BEGIN
	DECLARE CONTINUE HANDLER FOR 1062
    BEGIN
	SELECT MAX(COD_CURSO)+1 INTO P_CODIGO FROM CURSOS;
	INSERT INTO CURSOS VALUES(P_CODIGO, P_NOMBRE, P_PRECIO);
    END;
    
	INSERT INTO CURSOS VALUES(P_CODIGO, P_NOMBRE, P_PRECIO);   
END //
CALL INSERT_CURSO_ERROR(4, 'CURSO_CE', 300)//
SELECT * FROM CURSOS//

/*
	7. Hacer un procedimiento llamado “error_generico” que intente modificar la columna nombre de un curso, 
    pasando el código y el nuevo nombre. Con una SQLEXCEPTION debemos controlar si hay algún error y luego pintar
    el número de error usando DIAGNOSTIC. Luego probamos con algún error, como por ejemplo pasándole un nulo al 
    campo o un nombre duplicado, lo que sea.
*/
DROP PROCEDURE IF EXISTS error_generico//
CREATE PROCEDURE error_generico(P_CODIGO INT, P_NOMBRE VARCHAR(50))
BEGIN
	DECLARE MENSAJE TEXT;
    DECLARE COD_ERROR INT;
    
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION 
    BEGIN
		GET DIAGNOSTICS CONDITION 1
        COD_ERROR = mysql_errno, MENSAJE=message_text;
        
        SELECT CONCAT("ERROR: ", COD_ERROR, " MENSAJE: ", MENSAJE);
    
    END;
	
	UPDATE CURSOS SET NOMBRE = P_NOMBRE WHERE COD_CURSO = P_CODIGO;
END//

CALL ERROR_GENERICO(2, "CURSO3")//
CALL ERROR_GENERICO(2, null)//

/*
	8. Crear un procedimiento llamado “error_condition”. Usando el ejercicio anterior, hacemos un update, 
    aunque en este caso creamos 2 Condition, una para el nombre duplicado y el otro para el NULL. 
*/
DROP PROCEDURE IF EXISTS error_condition//
CREATE PROCEDURE error_condition(P_CODIGO INT, P_NOMBRE VARCHAR(50))
BEGIN
	DECLARE MENSAJE TEXT;
    DECLARE COD_ERROR INT;
    
	DECLARE NOMBRE_DUPLICADO CONDITION FOR 1062;
    DECLARE NOMBRE_NULO CONDITION FOR 1048;
    
    DECLARE EXIT HANDLER FOR NOMBRE_DUPLICADO
		SELECT CONCAT('EL NOMBRE ', P_NOMBRE, ' YA EXISTE');
	
    DECLARE EXIT HANDLER FOR NOMBRE_NULO
		SELECT CONCAT('EL NOMBRE NO PUEDE SER NULO');
    
	UPDATE CURSOS SET NOMBRE = P_NOMBRE WHERE COD_CURSO = P_CODIGO;
END//

CALL ERROR_CONDITION(1, NULL)//