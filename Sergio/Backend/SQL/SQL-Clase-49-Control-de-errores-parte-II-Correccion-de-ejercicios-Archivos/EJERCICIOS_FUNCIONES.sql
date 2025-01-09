/*
	EJERCICIOS FUNCIONES
    
    1. Crea una función que divida los números de las tarjetas en grupos de 4 dígitos. Para las que son tipo VISA, 
    separaremos estos grupos con ‘-’. Y para las que son tipo MASTERCARD, separaremos con ‘/’. Si el número no 
    tiene 16 dígitos escribe: ‘Número incorrecto’
*/

Delimiter //
DROP FUNCTION IF EXISTS DIVIDIR_TARJETAS//

CREATE FUNCTION DIVIDIR_TARJETAS(num_tarjeta VARCHAR(16), TIPO VARCHAR(10))RETURNS VARCHAR(50) NO SQL
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
    
    IF (TIPO = 'visa') THEN
		-- SUBSTRING ( expression, start, length )
		SET BLOQUE1 = SUBSTRING(NUM_TARJETA, 1, 4);
        SET BLOQUE2 = SUBSTRING(NUM_TARJETA, 5, 4);
        SET BLOQUE3 = SUBSTRING(NUM_TARJETA, 9, 4);
        SET BLOQUE4 = SUBSTRING(NUM_TARJETA, 13, 4);
        
        RETURN concat(BLOQUE1, '-', BLOQUE2, '-', BLOQUE3, '-', BLOQUE4);
    END IF;
    
     IF (TIPO = 'mastercard') THEN
		-- SUBSTRING ( expression, start, length )
		SET BLOQUE1 = SUBSTRING(NUM_TARJETA, 1, 4);
        SET BLOQUE2 = SUBSTRING(NUM_TARJETA, 5, 4);
        SET BLOQUE3 = SUBSTRING(NUM_TARJETA, 9, 4);
        SET BLOQUE4 = SUBSTRING(NUM_TARJETA, 13, 4);
        
        RETURN concat(BLOQUE1, '/', BLOQUE2, '/', BLOQUE3, '/', BLOQUE4);
    END IF;

END //

SELECT NUM_TARJETA, TIPO, DIVIDIR_TARJETAS(NUM_TARJETA, TIPO) FROM TARJETAS//


/*
	2. Crea una función llamada “datos alumno” que devuelva en un solo valor el nombre, apellidos y correo 
    del alumno. Debe recibir como argumentos los 3 datos del alumno. Lo probamos en una SELECT. 

*/

DROP FUNCTION IF EXISTS datos_alumno//

CREATE FUNCTION datos_alumno(nombre VARCHAR(50), apellidos VARCHAR(50), correo VARCHAR(50))
RETURNS VARCHAR (200) NO SQL
BEGIN 

	RETURN CONCAT(NOMBRE, ' | ', APELLIDOS, ' | ', CORREO);

END//

SELECT NOMBRE, APELLIDOS, CORREO, datos_alumno(nombre, apellidos, correo) from alumnos//


/*
    3. Crear una función llamada “cursos_num_alumnos” que devuelva el número de alumnos de un curso que 
    se pasa como argumento Lo probamos con una SELECT.
*/

DROP FUNCTION IF EXISTS cursos_num_alumnos //

CREATE FUNCTION cursos_num_alumnos(P_COD INT)
RETURNS INT READS SQL DATA
BEGIN
	DECLARE num_alumnos int;
	set num_alumnos = 0;
    
    SELECT COUNT(*) INTO num_alumnos FROM ALUMNOS WHERE COD_CURSO = P_COD;
    
    return num_alumnos;

END//


SELECT NOMBRE, CURSOS_NUM_ALUMNOS(COD_CURSO) FROM CURSOS//

/*
	4. Crear una función llamada “nota_media” que pasándole el código del alumno nos indique la nota media de 
    dicho alumno
*/

DROP FUNCTION IF EXISTS nota_media//

CREATE FUNCTION nota_media(p_cod_alumno int)
	returns decimal
    READS SQL DATA 
    BEGIN
    DECLARE NOTA_ALUMNO DECIMAL;
    SET NOTA_ALUMNO = 0;
    
    SELECT AVG(NOTA) INTO NOTA_ALUMNO FROM NOTAS_ALUMNOS WHERE cod_alumno = p_cod_alumno;
    RETURN NOTA_ALUMNO;
    
    END//

SELECT DISTINCT NOMBRE, NOTA_MEDIA(COD_ALUMNO) FROM ALUMNOS //
