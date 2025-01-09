/* EJERCICIOS PROCEDIMIENTOS: 
Dentro de la base de datos academia:
1. Crea un procedimiento llamado “cursos_asignaturas”para visualizar los cursos y sus asignaturas respectivamente. Ordénalo por cursos. 
2. Crea un procedimiento llamado “actualizar_precio”, que reciba como parámetro el código del curso y el precio que se le va a asignar a ese curso. Se debe controlar que el precio sea mayor que 100. Si no se cumple, se fija el precio a 100. 
3. Crea un procedimiento llamado “profesores_cursos” para visualizar los cursos de cada profesor. Debe recibir un parámetro que sea el nombre del profesor para ver las asignaturas.
4. Crea un procedimiento llamado “nombre_completo” que devuelva una SELECT con el nombre y el apellido de un alumno. Debe recibir el parámetro de entrada del código del alumno.
5. Modificar el procedimiento anterior (crea uno nuevo con otro nombre) para que el resultado se almacene en una variable de tipo OUT. Para ver que ha funcionado, visualiza la variable.
6. Crea un procedimiento llamado “devolver_mayus” con un argumento de tipo INOUT. El parámetro debe ser una cadena de texto que se devuelva en mayúsculas.
7. Crea un procedimiento llamado “devolver_datos” que reciba como parámetro de entrada el código del curso, y que devuelva en dos variables de tipo OUT el nombre y el precio. Visualiza el resultado para ver que ha salido correctamente.
*/

-- 1. 
use academia;

DROP procedure IF EXISTS cursos_asignaturas;


DELIMITER // 

CREATE PROCEDURE CURSOS_ASIGNATURAS() 
BEGIN
	SELECT CURSOS.NOMBRE, ASIGNATURAS.NOMBRE FROM CURSOS INNER JOIN ASIGNATURAS 
    ON ASIGNATURAS.COD_CURSO = CURSOS.COD_CURSO
    ORDER BY CURSOS.NOMBRE;
END //

CALL CURSOS_ASIGNATURAS() //

-- 2. 

DELIMITER //
DROP PROCEDURE IF EXISTS ACTUALIZAR_PRECIO//

CREATE PROCEDURE ACTUALIZAR_PRECIO(p_codigo int, p_precio decimal)
BEGIN
	IF p_precio < 100 then
		set p_precio = 100;
	END IF;
    
    UPDATE CURSOS SET PRECIO = p_precio WHERE cod_curso = p_codigo;
    
END //

CALL ACTUALIZAR_PRECIO(4, 50)//
CALL ACTUALIZAR_PRECIO(8, 200)//

SELECT * FROM CURSOS//

-- 3. 
SELECT * FROM PROFESORES//

DROP PROCEDURE IF EXISTS PROFESORES_CURSOS//

CREATE PROCEDURE PROFESORES_CURSOS(p_nombre varchar(50))
BEGIN
	SELECT profesores.nombre, cursos.nombre FROM CURSOS INNER JOIN ASIGNATURAS 
		ON CURSOS.COD_CURSO = asignaturas.COD_CURSO
		INNER JOIN PROFESORES 
            ON ASIGNATURAS.COD_PROFESOR = PROFESORES.COD_PROFESOR
			WHERE PROFESORES.NOMBRE = p_nombre;
END //

call profesores_cursos("Dreddy")//
call profesores_cursos("Andi")//

-- 4. 

DROP PROCEDURE IF EXISTS NOMBRE_COMPLETO//

CREATE PROCEDURE NOMBRE_COMPLETO(p_codigo_alumno int)
BEGIN
	SELECT CONCAT(NOMBRE, " ", APELLIDOS) FROM ALUMNOS 
    WHERE COD_ALUMNO = p_codigo_alumno;
END//

CALL NOMBRE_COMPLETO(1)//
CALL NOMBRE_COMPLETO(8)//

-- 5. 

SET @RESULTADO = ""//

DROP PROCEDURE IF EXISTS NOMBRE_COMPLETOVAR//

CREATE PROCEDURE NOMBRE_COMPLETOVAR (p_codigo int, out salida varchar(100))
begin
	select concat (nombre, " ", apellidos) into salida
    from alumnos
    where cod_alumno = p_codigo;
end //


call nombre_completovar(1,  @resultado)//

select @resultado //

-- 6.

drop procedure if exists devolver_mayus//

set @mayus = "soy alumno de conquer blocks"//

CREATE PROCEDURE DEVOLVER_MAYUS ( INOUT p_texto varchar(150))
begin
	SELECT concat('El texto ', p_texto, ' en mayusculas es: ', upper(p_texto)) into p_texto;
end //

call devolver_mayus(@mayus)//

select @mayus//


-- 7. 

drop procedure if exists devolver_datos//

set @nombre_curso = ""//
set @precio_curso = 0 //

CREATE PROCEDURE devolver_datos (p_codigo int, OUT p_nombre varchar(50), OUT p_precio decimal)
BEGIN
	SELECT NOMBRE, PRECIO INTO p_nombre, p_precio
    FROM CURSOS 
    WHERE COD_CURSO = p_codigo;
END //


CALL DEVOLVER_DATOS(8, @nombre_curso, @precio_curso)//

SELECT @NOMBRE_CURSO, @PRECIO_CURSO//

DELIMITER ;














