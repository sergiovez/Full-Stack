-- Dentro de la base de datos academia:
USE ACADEMIA;
-- 1. Crea un procedimiento llamado “cursos_asignaturas”para visualizar los cursos y sus asignaturas respectivamente. Ordénalo por cursos. 
DELIMITER //
DROP PROCEDURE IF EXISTS CURSOS_ASIGNATURAS//
CREATE PROCEDURE CURSOS_ASIGNATURAS()
	BEGIN
		SELECT CURSOS.NOMBRE AS CURSO, ASIGNATURAS.NOMBRE AS ASIGNATURA FROM ACADEMIA.CURSOS INNER JOIN ACADEMIA.ASIGNATURAS
        ON CURSOS.COD_CURSO = ASIGNATURAS.COD_CURSO ORDER BY CURSO;
    END //
DELIMITER ;
CALL CURSOS_ASIGNATURAS();

-- 2. Crea un procedimiento llamado “actualizar_precio”, que reciba como parámetro el código del curso y el precio que se le va a asignar a ese curso. 
	-- Se debe controlar que el precio sea mayor que 100. Si no se cumple, se fija el precio a 100. 
DELIMITER //
DROP PROCEDURE IF EXISTS ACTUALIZAR_PRECIO//
CREATE PROCEDURE ACTUALIZAR_PRECIO(IN P_CODIGO INT, P_PRECIO INT)
	BEGIN
		IF P_PRECIO < 100 THEN
			SET P_PRECIO = 100;
		END IF;
		UPDATE CURSOS SET PRECIO = P_PRECIO WHERE COD_CURSO = P_CODIGO;
    END //
DELIMITER ;
CALL ACTUALIZAR_PRECIO(4, 50);
CALL ACTUALIZAR_PRECIO(8, 200);
SELECT * FROM CURSOS;

-- 3. Crea un procedimiento llamado “profesores_cursos” para visualizar los cursos de cada profesor. 
	-- Debe recibir un parámetro que sea el nombre del profesor para ver las asignaturas.
DELIMITER //
DROP PROCEDURE IF EXISTS PROFESORES_CURSOS//
CREATE PROCEDURE PROFESORES_CURSOS(IN P_NOMBRE VARCHAR(50))
	BEGIN
		SELECT PROFESORES.NOMBRE, CURSOS.NOMBRE FROM ACADEMIA.ASIGNATURAS INNER JOIN ACADEMIA.PROFESORES
        ON ASIGNATURAS.COD_PROFESOR = PROFESORES.COD_PROFESOR
        INNER JOIN ACADEMIA.CURSOS
        ON ASIGNATURAS.COD_CURSO = CURSOS.COD_CURSO
        WHERE PROFESORES.NOMBRE = P_NOMBRE;
    END //
DELIMITER ;
CALL PROFESORES_CURSOS("Dreddy");
CALL PROFESORES_CURSOS("Andi");

-- 4. Crea un procedimiento llamado “nombre_completo” que devuelva una SELECT con el nombre y el apellido de un alumno. 
	-- Debe recibir el parámetro de entrada del código del alumno.
DELIMITER //
DROP PROCEDURE IF EXISTS NOMBRE_COMPLETO//
CREATE PROCEDURE NOMBRE_COMPLETO(IN P_CODIGO INT)
	BEGIN
		SELECT NOMBRE, APELLIDOS FROM ALUMNOS WHERE COD_ALUMNO = P_CODIGO;
    END //
DELIMITER ;
CALL NOMBRE_COMPLETO(1);
CALL NOMBRE_COMPLETO(8);

-- 5. Modificar el procedimiento anterior (crea uno nuevo con otro nombre) para que el resultado se almacene en una variable de tipo OUT. 
	-- Para ver que ha funcionado, visualiza la variable.
DELIMITER //
SET @RESULTADO = ' '//
DROP PROCEDURE IF EXISTS NOMBRE_COMPLETO//
CREATE PROCEDURE NOMBRE_COMPLETO(IN P_CODIGO INT, OUT RES VARCHAR(50))
	BEGIN
		SELECT CONCAT(NOMBRE,' ', APELLIDOS) INTO RES FROM ALUMNOS WHERE COD_ALUMNO = P_CODIGO;
    END //
DELIMITER ;
CALL NOMBRE_COMPLETO(8, @RESULTADO);
SELECT @RESULTADO;

-- 6. Crea un procedimiento llamado “devolver_mayus” con un argumento de tipo INOUT. El parámetro debe ser una cadena de texto que se devuelva en mayúsculas.
SET @RESULTADO = 'sergio';
DELIMITER //
CREATE PROCEDURE DEVOLVER_MAYUS(INOUT TEXTO VARCHAR(50))
BEGIN
	SELECT CONCAT('El texto ', TEXTO, ' en mayusculas es: ', UPPER(TEXTO)) INTO TEXTO;
END //
DELIMITER ;
CALL DEVOLVER_MAYUS(@RESULTADO);
SELECT @RESULTADO;
