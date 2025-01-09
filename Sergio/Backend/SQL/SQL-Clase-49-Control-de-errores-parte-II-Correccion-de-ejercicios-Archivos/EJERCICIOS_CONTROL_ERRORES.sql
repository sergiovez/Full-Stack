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

DROP PROCEDURE IF EXISTS LEER_TABLA_CE//
CREATE PROCEDURE LEER_TABLA_CE()
BEGIN
	DECLARE EXIT HANDLER FOR 1146
		SELECT 'esa tabla no existe';
        
    select * from TABLA_CE;
END //


CALL LEER_TABLA_CE()//

DROP TABLE TABLA_CE//

/*
	6. Hacer un procedimiento denominado “insert_curso_error” que intente insertar una fila en la tabla cursos. 
    Si la clave primaria está duplicada (código 1062), en vez de generar un error, recalculamos la clave 
    indicando el valor más alto más uno.
*/

DROP PROCEDURE IF EXISTS insert_curso_error//

create procedure insert_curso_error(P_CODIGO INT, P_NOMBRE VARCHAR(50), P_PRECIO DECIMAL)
BEGIN
	DECLARE CONTINUE HANDLER FOR 1062
    BEGIN 
		SELECT MAX(COD_CURSO)+1 INTO P_CODIGO FROM CURSOS;
        INSERT INTO CURSOS VALUES(P_CODIGO, P_NOMBRE, P_PRECIO);
	END;
    
    INSERT INTO CURSOS VALUES(P_CODIGO, P_NOMBRE, P_PRECIO);
END//


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









