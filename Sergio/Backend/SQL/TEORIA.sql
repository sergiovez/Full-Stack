----------------------------- TEORIA ------------------------
----------------- TEMA 3: PRIMERAS CONSULTAS ----------------
-- SINTAXIS BÁSICA
	-- SELECT COLUMNA/S FROM TABLA;
	-- SELECT * FROM TABLA; (* todas las columnas)
	-- SELECT COLUMNA1, COLUMNA2, ..., COLUMNAN FROM TABLA; (seleccionamos que columnas queremos ver) 
	-- LIMIT  100 => Enseña sólo 100 registros
	-- La palabra reservada AS sirve para asignar un ALIAS a una columna o a una expresion 
	-- SELECT DISTINCT => Para consultar diferentes combinaciones que no se repiten
	-- Si se quiere acceder a una tabla de una base de datos en la que no estamos situados, 
	-- se utiliza la siguiente sintaxis: 
	-- SELECT * FROM nombreBD.tabla;

-- OPERACIONES ARITMETICAS
	-- NIVEL 1: *, /, %
    -- NIVEL 2: +, -
	-- Si queremos cambiar el orden de preferencia de las operaciones aritméticas, utilizamos paréntesis
    
-- BETWEEN, LIKE, IN
	-- BETWEEN
		SELECT * FROM SAKILA.DATES WHERE YEAR BETWEEN '2019' AND '2022';
	-- LIKE 
	/*
	select * from tabla where columna like 'patron'
							  columna like 'a%' 
							  columna like 'a_'
							  columna like '%a'
							  columna like 'a_t%'
							  columna like '%as%'
	*/
		SELECT * FROM WORLD.COUNTRY WHERE NAME LIKE 'A_u%';
	-- IN 
		SELECT * FROM WORLD.COUNTRY WHERE INDEPYEAR IN (1941, 1965, 1956);
        
 -- NULL, CASE     
	-- NULL
	/*
		NULL
	*/
		Select * from world.country Where IndepYear IS NOT NULL;
	-- CASE
	/* CASE
		CASE case_valor
			WHEN when_valor THEN x
			WHEN when_valor2 THEN y
			(ELSE Z)
		END CASE
	*/
		Select continent,
			CASE continent 
				when 'Asia' then 'Continente Asiático'
				when 'Europe' then 'Continente Europeo'
				when 'South America' then 'America'
				Else 'Continente desconocido'
			END AS 'Continente en español'
		from world.country;

----------------- TEMA 4: OPERADORES LÓGICOS ----------------        
/*
 OPERADORES LOGICOS
	AND --------> combina varias condiciones logicas y devuelve VERDADERO si todas se cumplen
    OR  --------> combina varias condiciones logicas y devuelve VERDADERO si al menos una se cumple
	NOT --------> niega la operacion logica a la que precede
    
    CONDICION1.       OPERADOR.       CONDICION2        RESULTADO
    Verdadera          	AND             Verdadera		Verdadero
    Verdadera     		AND 			Falsa			Falso
    Falsa 				AND				Verdadera 		Falso
    Falsa 				AND 			Falsa			Falso
    
    
	CONDICION1.       OPERADOR.       CONDICION2        RESULTADO
	Verdadera 			OR 				Verdadera		Verdadero
	Verdadera 			OR 				Falsa			Verdadero
	Falsa				OR 				Verdadera		Verdadero
	Falsa				OR 				Falsa			Falso


    ** CONSEJO ** 
    Utilizar paréntisis siempre con los ooperadores lógicos y las condiciones compuestas
    
*/

-- ORDER BY 
	/*
	1- Sintaxis 
	SELECT FIRST_NAME, LAST_NAME FROM SAKILA.ACTOR WHERE LAST_UPDATE > '2006-02-02' ORDER BY FIRST_NAME
	*/
		SELECT FIRST_NAME, LAST_NAME FROM SAKILA.ACTOR WHERE LAST_UPDATE > '2006-02-02'  ORDER BY FIRST_NAME;
	-- ORDENACION ASCENDENTE Y DESCENDENTE => ASC DESC
	-- En esta query la palabra reseervada DESC se encuentra junto a LAST_NAME, así que la ordenancion descendente
	-- sólo se aplica a LAST_NAME. Se ordena por defecto de forma ascendente usando FIRST_NAME y cuando este se repite, se ordena de
	-- forma descendente por LAST_NAME
		SELECT * FROM SAKILA.ACTOR ORDER BY FIRST_NAME, LAST_NAME DESC;
	-- Si queremos ordenar de forma descendente por el nombre y por el apellido se escribe de esta forma
		SELECT * FROM SAKILA.ACTOR ORDER BY FIRST_NAME DESC, LAST_NAME DESC;
	-- Order by referenciando columnas por numero y ALIAS
		SELECT NAME, CONTINENT, REGION, SURFACEAREA FROM WORLD.COUNTRY ORDER BY 4 DESC;
		SELECT NAME AS NOMBRE, CONTINENT, REGION, SURFACEAREA FROM WORLD.COUNTRY ORDER BY NOMBRE DESC;
	-- order by con enum
		SELECT NAME AS NOMBRE, CONTINENT, REGION, SURFACEAREA FROM WORLD.COUNTRY ORDER BY continent;
		SELECT NAME AS NOMBRE, CONTINENT, REGION, SURFACEAREA FROM WORLD.COUNTRY ORDER BY CAST(continent as char);

----------------- TEMA 5: FUNCIONES ----------------               
-- FUNCIONES NUMERICAS
	/* Nos permiten hacer operaciones y trabajar con números

	FUNCION				DESCRIPCION
	ABS					Devuelve el valor absoluto de un número
	CEIL, CEILING 				Devuelve el valor entero mas cercano que sea superior a un numero
	FLOOR				Devuelve el valor entero mas cercano que sea inferior a un numero
	DIV					Division entera
	MOD (%)				Devuelve el resto de una división
	PI					Devuelve el valor de PI
	POW O POWER			Devuelve un numero elevado a la potencia de otro
	SQRT()				Devuelve la raíz cuadrada de un numero
	RAND 				Devuelve un numero aleatorio entre 0 y 1
	ROUND 				Devuelve un numero N redondeado
	SING 				Devuelve el signo de un numero
		-- Devuelve un 1 si como parámetro metemos un numero positivo
		-- Devuelve un -1 si como parámetro metemos un numero negativo
		-- Devuelve un 0 si como parámetro metemos un cero, porque no tiene signo
	TRUNCATE 			Trunca un numero a partir de N decimales
	*/

-- FUNCIONES DE TIPO STRING
	/*
	Estas funciones nos permieten trabajar con cadenas de caracteres

	Funcion      			Descripcion
	UPPER					Convierte un string a mayúsuclas
	LOWER 					Convierte un string a minúsculas
	LENGTH 					Devuelve la longitud de una cadena en bytes
	CONCAT 					Nos permite unir cadenas de caracteres
	LTRIM 					Eliminar los espacios en blanco a la izquierda (al principio)
	RTRIM					Elimina los espacios en blanco a la derecha (al final)
	LOCATE 					Devuelve la posicion de una cadena dentro de otra cadena
	SUBSTR 					Extraer un string de otro string
	REPEAT 					Repite una cadena de caracteres un numero indicado de veces
	*/

-- FUNCIONES DE CONVERSION
	SELECT CONVERT(1000, CHAR); 
	SELECT CONVERT(69.02, DECIMAL);
	SELECT CONVERT ("2023-01-01", DATE);
	SELECT STR_TO_DATE("01-12-2023", "%d-%m-%Y");
	SELECT CAST(100 AS CHAR);
	SELECT CAST("20:12:00" AS TIME);

-- FUNCIONES PARA TRABAJAR CON NULOS
	-- IFNULL(expresion, valor si es nulo)
		SELECT name, Continent, ifnull(IndepYear, 0) FROM world.country; 
		SELECT name, Continent, ifnull(IndepYear, "no hay!") FROM world.country; 

-- FUNCIONES DE FECHA Y HORA
	/*
	FUNCIONES DE FECHA Y DE TIEMPO/HORA
	Son las funciones que nos van a permitir trabajar con fechas y tiempos. 
	*/
	-- CURRENT_DATE / CURDATE -> Devolver la fecha actual
		SELECT CURDATE(); 
	-- CURRENT_TIME / CURTIME -> Devolver la hora actual
		SELECT CURTIME();
	-- NOW -> Fecha y hora actuales
		SELECT NOW(); 
	-- DATE -> Devolver una fecha dado un parametro de entrada de tipo string
		SELECT DATE('2023-11-01');
	-- DATE -> Devolver una fecha dado un parametro de entrada de tipo string
		SELECT DATE('2023-11-01 10:39:00');
	-- ADDATE -> Añade un intervalo de fecha/hora a otra fecha
		SELECT adddate('2023-04-01', interval 31 day);
		SELECT adddate('2023-04-01', interval 1 year);
		SELECT adddate('2023-04-01', interval 3 month);
	-- ADDTIME -> Añade un intervalo de hora a una fecha o a una hora
		SELECT addtime(NOW(), '21:40:00');
		SELECT addtime(CURTIME(), '21:40:00');
	-- DAY -> día del mes MONTH -> MES YEAR -> AÑO
		SELECT DAY(NOW());
		SELECT MONTH(NOW());
		SELECT YEAR(NOW());
		SELECT DAYNAME(NOW());
		SELECT MONTHNAME(NOW());
		SELECT WEEK(NOW());
		SELECT MINUTE(NOW());
		SELECT HOUR(NOW());
	-- DATEDIFF -> diferencia fechas
		SELECT DATEDIFF("2023-12-31", now());
		SELECT DATEDIFF("2024-12-31", "2020-01-04")/365;
	-- DATE_FORMAT
		SELECT DATE_FORMAT(NOW(), "%d / %m / %y");
		SELECT DATE_FORMAT(NOW(), "%D / %M / %Y");
	-- TIME_FORMAT
		SELECT TIME_FORMAT(CURTIME(), "%h : %i : %s - %p");

-- AGRUPACIONES GROUP BY
	SELECT PROFESORES, FORMACION FROM CONQUERBLOCKS GROUP BY FORMACION, PROFESORES;
	-- NUMERO DE ALUMNOS POR CADA FORMACION
		SELECT FORMACION, SUM(ALUMNOS) FROM CONQUERBLOCKS GROUP BY FORMACION;
	-- Numero de profesores por cada formacion
		SELECT FORMACION, COUNT(DISTINCT PROFESORES) AS 'NUMERO DE PROFESORES' 
		FROM CONQUERBLOCKS 
		GROUP BY FORMACION;
	-- FUNCIONES TIPICAS DE GRUPO
		-- SUM()
		-- COUNT()
		-- MIN()
		-- MAX()
		-- AVG() ->devuelve el valor promedio de lo que se especifique

-- CLAUSULA HAVING en el GROUP BY (Como el WHERE pero con el GROUP BY y ademas si te permite mencionar alias,
-- el where solo te lo permite si el alias es de una subconsulta)
	SELECT continent, region, max(lifeExpectancy), min(lifeExpectancy)
	FROM country
	group by continent, region HAVING min(lifeExpectancy) > 40
	order by continent, region;

----------------- TEMA 6: JOINS ----------------           
-- INNER JOINS
	SELECT * FROM WORLD.COUNTRY ;  -- PADRE
	SELECT * FROM WORLD.CITY ; -- HIJA
	-- INNER JOIN CON WHERE / JOIN CON WHERE 
		SELECT city.name, country.name
		FROM world.city, world.country
		WHERE city.CountryCode = country.Code;
	-- JOIN CON INNER JOIN
		SELECT city.name, country.name 
		FROM world.city INNER JOIN world.country
		ON city.CountryCode = country.code;
	-- INNER JOIN
		SELECT nombre_ciudad, nombre_pais
		FROM (
			SELECT name as nombre_ciudad, countryCode
			from world.city) city
			INNER JOIN 
			(SELECT name as nombre_pais, code
			from world.country) country
		ON city.CountryCode = country.code;
	-- TRIPLE INNER JOIN
		SELECT TITLE, ACTOR.ACTOR_ID, FIRST_NAME, LAST_NAME
		FROM FILM INNER JOIN FILM_ACTOR 
		ON film.film_id = film_actor.film_id
		INNER JOIN ACTOR
		ON ACTOR.ACTOR_ID=FILM_ACTOR.ACTOR_ID;

-- LEFT JOIN Y RIGHT JOIN
	-- Ayuda a saber qué informacion NO tenemos en alguna de las tablas que estamos cruzando
	SELECT D.nombre, E.nombre, E.apellido
	FROM departamentos AS D INNER JOIN empleados AS E
	ON D.codigo = E.departamento; 

	SELECT D.nombre, E.nombre, E.apellido
	FROM departamentos AS D LEFT JOIN empleados AS E
	ON D.codigo = E.departamento; 

	SELECT D.nombre, E.nombre, E.apellido
	FROM departamentos AS D RIGHT JOIN empleados AS E
	ON D.codigo = E.departamento; 

-- CROSS JOINS
	SELECT D.nombre, E.nombre, E.apellido
	FROM departamentos AS D CROSS JOIN empleados AS E
	ORDER BY D.NOMBRE;

----------------- TEMA 7: SUBCONSULTAS ----------------           
-- SUBCONSULTAS
	-- EN "SELECT" (SE PODRIA HACER CON UN INNER JOIN PERFECTAMENTE)
		SELECT CODE, NAME, (SELECT COUNT(*) FROM CITY WHERE COUNTRYCODE = PAISES.CODE) FROM COUNTRY AS PAISES;
		SELECT CODE, NAME, (SELECT COUNT(*) FROM CITY WHERE COUNTRYCODE = COUNTRY.CODE) FROM COUNTRY;
    -- EN "FROM"
		SELECT NAME, POPULATION AS 'POBLACION_PAIS', TOTAL_POBLACION 
		FROM (SELECT CODE, CONTINENT, SUM(POPULATION) AS 'TOTAL_POBLACION' FROM COUNTRY GROUP BY CODE, CONTINENT) AS T1 
		INNER JOIN city ON COUNTRYCODE = CODE;
    -- EN "WHERE"
		SELECT NAME, POPULATION FROM COUNTRY WHERE POPULATION = (SELECT MAX(POPULATION) FROM COUNTRY);
		SELECT NAME, POPULATION FROM COUNTRY WHERE POPULATION > (SELECT AVG(POPULATION) FROM COUNTRY);
        -- 2 SUBCONSULTAS (sacar los paises del maximo y del minimo)
			SELECT Name, Population FROM country  WHERE Population = (SELECT max(Population) FROM country) 
			OR Population= (SELECT min(Population) FROM country WHERE Population > 0);
        -- COLUMNA REFERENCIADA (sacar el pais del maximo pero de cada continente)
			SELECT Name, Continent, Population 
			FROM country AS paises
			WHERE Population = (SELECT Max(population) FROM country WHERE Continent = paises.Continent AND Population >0);
		-- SUBCONSULTA CON OTRAS TABLAS
			SELECT Name FROM city WHERE CountryCode = (SELECT CODE FROM COUNTRY WHERE NAME ="United States");
    -- EN "HAVING"
			SELECT REGION, sum(Population) FROM country
			GROUP BY REGION
			HAVING sum(Population) > (SELECT sum(Population) FROM country WHERE Continent = "Africa");

-- OPERADORES IN, ANY y ALL
	-- IN
		SELECT Name 
		FROM city
		WHERE CountryCode IN (SELECT Code from country where Continent = 'Africa');
        
        SELECT Name
		FROM city
		WHERE CountryCode IN ( SELECT Code FROM country WHERE Continent IN('Europe', 'Asia'));
    -- ANY
		-- ANY(Valor1, Valor2, Valor3) -> VERDADERO SI CUALQUIERA DE LOS VALORES CUMPLE LA CONDICIÓN
        -- Países que tienen más esperanza de vida que CUALQUIER país de ASIA
			SELECT Name, Continent, LifeExpectancy FROM COUNTRY
			WHERE LifeExpectancy > ANY(SELECT LifeExpectancy FROM country Where Continent = 'Asia')
			ORDER BY LifeExpectancy;
    -- ALL
		-- ALL(Valor1, Valor2, Valor3) -> VERDADERO SI TODOS LOS VALORES CUMPLEN LA CONDICIÓN
        -- Países que tienen más esperanza de vida que TODOS los países de ASIA
			SELECT Name, Continent, LifeExpectancy FROM COUNTRY
			WHERE LifeExpectancy > ALL(SELECT LifeExpectancy FROM country Where Continent = 'Asia')
			ORDER BY LifeExpectancy;

-- EXISTS Y NOT EXISTS
	-- EXISTS: Comprueba la existencia de alguna fila en la subconsulta y devuelve true si la subconsulta devuelve al menos una fila
	-- Ciudades de países con esperanza de vida mayor a 80
		SELECT NAME FROM CITY AS Ciudades
		WHERE EXISTS(SELECT * from Country where LifeExpectancy > 80 AND CODE = ciudades.CountryCode);
	-- Países qque tengan alguna ciudad que supere los 6.000.000 de habitantes
		SELECT NAME FROM COUNTRY as Paises
		WHERE EXISTS(Select* FROM city where Population > 6000000 and CountryCode =  paises.Code);

----------------- TEMA 8: OPERACIONES DE CONJUNTO ----------------       
-- OPERACIONES DE CONJUNTO (UNION, UNION ALL, INTERSECT, EXCEPT)
	-- Son operaciones que  combinar múltiples SELECTs (consultas) para devolver un solo resultado 
    -- Cada bloque de consultas tiene que tener el mismo número de columna
    -- UNION: combina los resultados de las SELECT y devuelve un unico resultado eliminando duplicados
		SELECT * FROM T1
        UNION
        SELECT * FROM T2;
    -- UNION ALL: igual que union pero sin eliminar los duplicados
		SELECT * FROM T1
        UNION ALL
        SELECT * FROM T2;
    -- INTERSECT: combina los resultados de las SELECT y devuelve el resultado solo de las que estén en ambas
 		SELECT * FROM T1
        INTERSECT
        SELECT * FROM T2;
	-- EXCEPT: contrario al intersect donde devuelve solo las que sean unicas en ambas consultas
		SELECT * FROM T1
        EXCEPT
        SELECT * FROM T2;
        
----------------- TEMA 9: TABLAS Y CONSTRAINS ----------------               
/*
		DATA MANIPULATION LANGUAGE (DML)
        - INSERCIONES, MODIFICACIONES Y BORRADOS
        - COMANDOS MÁS COMPLEJOS: REPLACE, MERGE
        - CONCEPTO DE TRANSACCIÓN - conjunto de operaciones que deben hacerse todas juntas
        - Comandos de transacciones
*/
CREATE SCHEMA `DML` ;
USE DML;
CREATE TABLE `dml`.`estudiantes` (
  `CODIGO` INT NOT NULL,
  `NOMBRE` VARCHAR(45) CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_0900_ai_ci' NOT NULL,
  `EDAD` INT NULL DEFAULT 18,
  `FECHA_MATRICULA` DATETIME NOT NULL,
  PRIMARY KEY (`CODIGO`),
  UNIQUE INDEX `CODIGO_UNIQUE` (`CODIGO` ASC) VISIBLE);
  
  -- DESCRIPCION
  DESC ESTUDIANTES;
  
-- INSERT
	/* INSERT -- INSERTAR FILAS
	INSERT INTO TABLA (C1, C2) VALUES (V1, V2);
	*/  
    INSERT INTO ESTUDIANTES (CODIGO, NOMBRE, EDAD, FECHA_MATRICULA) VALUES (1, 'JUAN', 23, '2024-01-25');
	INSERT INTO ESTUDIANTES (CODIGO, NOMBRE, EDAD, FECHA_MATRICULA) VALUES (2, 'MARIA', 20, '2024-01-26');
    SELECT *FROM ESTUDIANTES;
    -- Si se respeta el orden nativo de las columnas y se rellenan todos los datos, podemos ahorranos indicar el nombre de las columnas
	INSERT INTO ESTUDIANTES VALUES (3, 'PACO', 30, '2024-01-30');
    -- Cambiando el orden de los datos
    INSERT INTO ESTUDIANTES (NOMBRE, FECHA_MATRICULA, CODIGO, EDAD) VALUES ('PEDRO', '2024-01-11', 4, 26);
	-- No meter un dato que SI permite NULL
	INSERT INTO ESTUDIANTES (CODIGO, NOMBRE, FECHA_MATRICULA) VALUES (5, 'ALEJANDRO', '2024-01-27');
    -- No meter un dato que NO permite NULL
    -- INSERT INTO ESTUDIANTES (CODIGO, EDAD, FECHA_MATRICULA) VALUES (6, 35, '2024-01-27');
    INSERT INTO ESTUDIANTES (CODIGO, NOMBRE, EDAD,FECHA_MATRICULA) VALUES (6, 'SERGIO', NULL ,'2024-01-31');
    -- INSERTS MULTIPLES
	INSERT INTO ESTUDIANTES (CODIGO, NOMBRE, EDAD,FECHA_MATRICULA) VALUES 
	(7, 'ROSA', 24 ,'2024-01-12'),
	(8, 'MARIA', 26 ,'2024-01-08'),
	(9, 'LUIS', 30 ,'2024-01-03');
	-- METER LOS DATOS DE UNA TABLA EN OTRA
	INSERT INTO ALUMNOS SELECT * FROM ESTUDIANTES WHERE EDAD IS NOT NULL;

-- UPDATE
	/*
		UPDATE - modificar/actualizar valores de la tabla
		UPDATE TABLA
			SET COL1 = VALOR, COL2 = VALOR ... 
			WHERE CONDICION
	*/
    SELECT * FROM ESTUDIANTES; 
    -- Te deja hacer un update cuando usas en el where el primary key
	UPDATE ESTUDIANTES 
	SET NOMBRE="JUAN LUIS" WHERE CODIGO = 1;
    -- Si usas otra columna (la fecha de matricula en este caso) es necesario quitar el modo seguroç
    -- Edit -> Preferences -> SQL Editor -> Other: Safe Updates (rejects UPDATEs and DELETEs with no restrictions)
	UPDATE ESTUDIANTES 
	SET EDAD = 40 WHERE FECHA_MATRICULA = "2024-01-11";
    
-- DELETE
    /*
		DELETE - borrar filas de una tabla. MUCHO CUIDADO, PORQUE PODÉIS BORRAR LA TABLA ENTERA !!!
        DELETE FROM TABLA WHERE CONDICION; 
    */
    DELETE FROM ESTUDIANTES WHERE CODIGO = 9;
    
-- REPLACE
    /*
    REPLACE - Reemplazar los datos de una fila
    REPLACE INTO TABLE (C1, C2) VALUES (V1, V2);
    */
	REPLACE INTO ESTUDIANTES (CODIGO, NOMBRE, EDAD, FECHA_MATRICULA) 
    VALUES (6, "MANUEL", 33, "2024-01-14");
    -- Si la primary key no existe, el comando se comporta como un INSERT
	REPLACE INTO ESTUDIANTES (CODIGO, NOMBRE, EDAD, FECHA_MATRICULA) 
	VALUES (9, "ISMAEL", 28, "2024-01-30");
    
-- TRANSACCIONES
	-- Unidad logica formada por uno o varios comandos de SQL. Son atómicas, es decir, o se hace todo o no se hace nada.
    -- AUTOCOMMIT: te lo hace automatico pero por seguridad es mejor no usarlo
    -- MECANISMOS MANUALES:
		-- COMMIT: Confirmar una transaccion
        -- ROLLBACK: Deshacer una transaccion
	-- OJO que existen comandos que llevan implicito un COMMIT por lo que no puede deshacerse con un ROLLBACK (Ej: creacion de tablas)
    -- Para comenzar una transaccion
		-- START TRANSACTION, BEGIN
    -- Para terminar una transaccion
		-- COMMIT, ROLLBACK
    -- Tambien soporta comandos como:
		-- SAVEPOINT, ROLLBACK TO SAVEPOINT, RELEASE SAVEPOINT
	
    -- AUTOCOMMIT y ROLLBACK
    -- Ver si tengo activado el autocommit
	SHOW VARIABLES LIKE 'autocommit';
    -- Lo desactivo
    SET AUTOCOMMIT = 0; 
    SHOW VARIABLES LIKE 'autocommit';
    -- Verificar que nuestro motor admite transacciones
    SHOW ENGINES;
    
    SET AUTOCOMMIT = 1; 
	USE ACADEMIA;
	SELECT * FROM ALUMNOS;
    -- Si tengo el autocommit encendido no funciona el rollback
    DELETE FROM NOTAS_ALUMNOS WHERE COD_ALUMNO = 1;
	DELETE FROM ALUMNOS WHERE COD_ALUMNO = 1;
    ROLLBACK; -- No funciona
    SELECT * FROM ALUMNOS;
    -- Si apagao el autocommit
    SET AUTOCOMMIT = 0; 
    DELETE FROM NOTAS_ALUMNOS WHERE COD_ALUMNO = 2;
	DELETE FROM ALUMNOS WHERE COD_ALUMNO = 2;
    ROLLBACK; -- Funciona    
    SELECT * FROM ALUMNOS;
    
    DELETE FROM NOTAS_ALUMNOS WHERE COD_ALUMNO > 4;
	INSERT INTO ALUMNOS VALUES(990, 'xxxxxx','xxxxxx', 'xxxxx@gmail.com',20,2);
	INSERT INTO NOTAS_ALUMNOS VALUES(990, 2, 1,0);
    SELECT * FROM ALUMNOS;
    SELECT * FROM NOTAS_ALUMNOS;
    ROLLBACK;
	SELECT * FROM ALUMNOS;
    SELECT * FROM NOTAS_ALUMNOS;
    
    -- START TRANSACTION
	START TRANSACTION ; -- Indicamos que comienza una transaccion
		DELETE FROM NOTAS_ALUMNOS WHERE COD_ALUMNO > 4;
		INSERT INTO ALUMNOS VALUES(990, 'xxxxxx','xxxxxx', 'xxxxx@gmail.com',20,2);
		INSERT INTO NOTAS_ALUMNOS VALUES(990, 2, 1,0);
	COMMIT; -- Indica el final de la transaccion
	SELECT * FROM NOTAS_ALUMNOS;
	ROLLBACK; -- Si despues de un commit, hago un rollback, no se deshace absolutamente nada    
    
    -- SAVEPOINT
    -- Rollbacks parciales
	START TRANSACTION ;
		DELETE FROM NOTAS_ALUMNOS WHERE COD_ALUMNO = 990;
		INSERT INTO ALUMNOS VALUES(999, 'xxxxxx','xxxxxx', 'xxxxx@gmail.com',20,2);
		INSERT INTO NOTAS_ALUMNOS VALUES(999, 2, 1,0);
		SAVEPOINT PASO2;
		UPDATE ALUMNOS SET APELLIDOS = "PRUEBA";
	SELECT * FROM  ALUMNOS;
    SELECT * FROM NOTAS_ALUMNOS;
	ROLLBACK TO PASO2;
	ROLLBACK;
    
    -- TRUNCATE
    -- Se parece a DELETE => diferencia: DELETE es un comando transaccional. Si lo borras y haces un ROLLBACK recuperas.
	-- TRUCANTE - > primero borra la tabla entera, y despues la vuelve a crear
	USE DML;
	SELECT * FROM estudiantes;
	TRUNCATE estudiantes;
    SELECT * FROM estudiantes;
	ROLLBACK;
    SELECT * FROM estudiantes;
    
-- CREATE
	USE DML;
    CREATE TABLE PROVEEDORES (
    COD_PROV INT,
    NOMBRE VARCHAR(45),
    DIRECCION VARCHAR(100),
    FECHA_ALTA DATE);
    DESC PROVEEDORES;
    -- Para que no de error cuando lo vuelvo ejecutar y ya existe esa tabla añado IF NOT EXISTS
	CREATE TABLE IF NOT EXISTS PROVEEDORES (
    COD_PROV INT,
    NOMBRE VARCHAR(45),
    DIRECCION VARCHAR(100),
    FECHA_ALTA DATE);
    DESC PROVEEDORES;
    
-- ALTER TABLE - Permite añadir nuevas columnas, modificar las existentes, borrarlas y añadir restricciones (constrains)
    /*
		-- AÑADIR COLUMNA
		ALTER TABLE XX ADD columna tipo
        ALTER TABLE XX ADD columna tipo AFTER columna
        ALTER TABLE XX ADD columna tipo FIRST
        -- BORRAR COLUMNA (no se puede borrar la clave primaria)
        ALTER TABLE XX DROP columna
        -- MODIFICAR COLUMNA
        ALTER TABLE XX CHANGE COLUMN columna tipo (solo lo cambia si puede cambiar los datos ya existentes)
        ALTER TABLE XX CHANGE COLUMN columna tipo AFTER columna
        -- CAMBIAR NOMBRE
        ALTER TABLE XX MODIFY columna_nombre_actual columna_nombre_nuevo tipo
    */
    ALTER TABLE PROVEEDORES ADD FECHA_MODIFICACION DATE;
    ALTER TABLE PROVEEDORES ADD FECHA DATE AFTER COD_PROV;
    ALTER TABLE PROVEEDORES ADD FECHA2 DATE FIRST;
    DESC PROVEEDORES;
    ALTER TABLE PROVEEDORES DROP FECHA_MODIFICACION;
    DESC PROVEEDORES;
    ALTER TABLE PROVEEDORES MODIFY NOMBRE VARCHAR(50);
    DESC PROVEEDORES;

-- Columnas autogeneradas
	CREATE TABLE CLIENTES (
    CODIGO_CLIENTE INT,
    NOMBRE VARCHAR(30),
    APELLIDO1 VARCHAR(30),
    APELLIDO2 VARCHAR(30),
    NOMRE_COMPLETO VARCHAR(100) GENERATED ALWAYS AS (CONCAT(NOMBRE, ' ', APELLIDO1, ' ', APELLIDO2)),
    FECHA TIMESTAMP GENERATED ALWAYS AS (NOW()));
    DESC CLIENTES;
    INSERT INTO CLIENTES (CODIGO_CLIENTE, NOMBRE, APELLIDO1, APELLIDO2) VALUES (1, 'Sergio', 'Vez', 'Labrador');
    SELECT *FROM CLIENTES;
    
-- Renombrar y mover tablas
	RENAME TABLE COCHES TO COCHES3;
    
-- Borrar tablas
	DROP TABLE IF EXISTS COCHES3;
    -- DROP TABLE IF EXISTS COCHES3 CASCADE (Borra tabla padre y tablas hijas)

-- MOTORES DE ALMACENAMIENTO (ENGINES)
/*
- Son los encargados de guardar, gestionar y mantener los datos de las tablas que 
utilizamos dentro de SQL. Cada motor tiene unas características diferentes que se adaptan a determinadas 
operaciones
- En el caso de MySQL, disponemos de varios motores que se pueden usar a nivel 
de base de datos y también a nivel de tabla. En otras bases de datos esto no pasa, solamente hay un motor
- Por defecto se usa InnoDB. Soporta transaccionalidad completa, control de 
	concurrencia, etc.
*/
	SHOW ENGINES;
	USE WORLD;
	SHOW CREATE TABLE CITY;
	SHOW TABLE STATUS WHERE NAME = "CITY";
    -- Con motor InnoDB
	CREATE SCHEMA MOTORES;
	USE MOTORES;
	CREATE TABLE T1 (ID INT, NOMBRE VARCHAR(100));
	SHOW TABLE STATUS WHERE NAME = "T1";
	-- Con motor CSV
	CREATE TABLE T2 
	(ID INT not null, 
	NOMBRE VARCHAR(100) not null
	) engine=csv;
	SHOW TABLE STATUS WHERE NAME = "T2";
	-- Cambio de motor de almacenamiento
	CREATE TABLE T3
	(ID INT not null, 
	NOMBRE VARCHAR(100) not null);
    SHOW TABLE STATUS WHERE NAME = "T3";
	ALTER TABLE T3 ENGINE=CSV;
	SHOW TABLE STATUS WHERE NAME = "T3";

-- TABLAS TEMPORALES
/*
- Solamente existen mientras dura una sesión y solamente puede verlas el usuario que las crea
- Pueden tener el mismo nombre que una tabla permanente. Si hacemos una consulta, 
vamos a acceder automáticamente a la tabla temporal.
*/
	CREATE TEMPORARY TABLE TEMPORAL1 (ID int, codigo varchar(100));
	DESC TEMPORAL1;
	INSERT INTO TEMPORAL1 VALUES(1, "NOMBRE");
	SELECT * FROM TEMPORAL1;
	-- ¿En que situaciones utilizarla? Consultas pesadas y compleajas que van a ser frecuentes (SUBCONSULTAS, GROUPBY,..)
    -- Con los datos de salida de la QUERY te genera una tabla.

-- CONSTRAINS
/*
	NOT NULL: No permite valores nulos
    UNIQUE: Impide valores duplicados (Dos DNIs iguales)
    PRIMARY-KEY: NOT NULL + UNIQUE
    FOREIGN-KEY: Permite relacionar unas tablas con otras a traves de parámetros comunes que deben existir
				Garantiza integridad referencial.
    CHECK: Verificacion de una condicion de una columna (Ej: mayor de 18 años)
    DEFAULT: Introduce un valor por defecto.
*/
	-- NOT NULL
		CREATE TABLE TABLA1 (
		CODIGO INT NOT NULL,
		NOMBRE VARCHAR(50) );
        
		DESC TABLA1;
		INSERT INTO TABLA1(codigo) values(10); 
		INSERT INTO TABLA1(nombre) values("Juan"); -- Error, porque codigo no puede ser nulo
	
    -- PRIMARY KEY
		CREATE TABLE TABLA2(
		CODIGO INT PRIMARY KEY,
		NOMBRE VARCHAR(50));

		DESC TABLA2;
		INSERT INTO TABLA2(CODIGO, NOMBRE) VALUES(1, "juan");
		INSERT INTO TABLA2(CODIGO, NOMBRE) VALUES(1, "juan"); -- Error, valores duplicados
        
        -- Utilizar el auto-increment para que vaya aumentando la primary key
			CREATE TABLE TABLA3 (
			COD_ALUMNO INT AUTO_INCREMENT PRIMARY KEY,
			NOMBRE_ALUMNO VARCHAR(50) );

			DESC TABLA3;
			INSERT INTO TABLA3(NOMBRE_ALUMNO) VALUES("ALBERTO");
			INSERT INTO TABLA3(NOMBRE_ALUMNO) VALUES("MARIA");
            
            -- Si ademas no quieres que empiece por 1 si no por 100
				CREATE TABLE TABLA4 (
				COD_ALUMNO INT AUTO_INCREMENT PRIMARY KEY,
				NOMBRE_ALUMNO VARCHAR(50) );

				ALTER TABLE TABLA4 auto_increment = 100;

				INSERT INTO TABLA4(NOMBRE_ALUMNO) VALUES("ALBERTO");
				INSERT INTO TABLA4(NOMBRE_ALUMNO) VALUES("SOFIA");
		
        -- Hasta ahora era un primary key a nivel de columna, pero si lo queremos meter a nivel de tabla
			CREATE TABLE TABLA5 (
			CODIGO INT,
			PRODUCTO VARCHAR(50),
			PRIMARY KEY (CODIGO)); -- En este caso esto seria exactamente lo mismo que a nivel de columna
			DESC TABLA5;
			DROP TABLE TABLA5;
			
            -- Pero si por ejemplo podemos tener un codigo 1 para dos productos que vienen de diferentes
			-- proveedores, el meter una primary key a nivel de tabla es necesario donde dices que tendras
            -- una clave unica para cada pareja producto-proveedor
			CREATE TABLE TABLA5 (
			CODIGO INT,
			COD_PROVEEDOR INT,
			PRODUCTO VARCHAR(50),
			PRIMARY KEY (CODIGO, COD_PROVEEDOR)); 
            
            INSERT INTO TABLA5 (CODIGO, COD_PROVEEDOR, PRODUCTO) VALUES (1, 003, "tijeras");
			INSERT INTO TABLA5 (CODIGO, COD_PROVEEDOR, PRODUCTO) VALUES (1, 004, "lapices");
			INSERT INTO TABLA5 (CODIGO, COD_PROVEEDOR, PRODUCTO) VALUES (1, 003, "rotulador"); -- Error
            
    -- UNIQUE
		CREATE TABLE TABLA6 (
		COD_EMPLEADO INT PRIMARY KEY,
		DNI VARCHAR(30) UNIQUE, 
		NOMBRE VARCHAR(50));

		INSERT INTO TABLA6 VALUES(1, "123456A", "JUAN");
		INSERT INTO TABLA6 VALUES(2, "123456A", "MARIA"); -- Error, entrada duplicada por DNI
		INSERT INTO TABLA6 VALUES(3, "678901J", "MARIO");

		-- A diferencia del primary key, unique si te deja que el valor sea nulo
		INSERT INTO TABLA6 VALUES(2,NULL , "MARIA");
		INSERT INTO TABLA6(COD_EMPLEADO, NOMBRE) VALUES(4, "LAURA");
        
        -- Tambien se puede hacer a nivel de tabla
        CREATE TABLE TABLA7 (
		COD_EMPLEADO INT PRIMARY KEY,
		DNI VARCHAR(30), 
		NOMBRE VARCHAR(50), 
		UNIQUE(DNI, NOMBRE));
        
    -- DEFAULT
		CREATE TABLE ALUMNOS_DEFAULT(
		CODIGO INT PRIMARY KEY,
		PAIS VARCHAR(50) NOT NULL DEFAULT "ESPAÑA",
		FECHA_ALTA DATE NOT NULL DEFAULT(current_date()));

		INSERT INTO ALUMNOS_DEFAULT (CODIGO) VALUES (1);
		INSERT INTO ALUMNOS_DEFAULT (CODIGO, PAIS) VALUES (2, "Mexico");
		INSERT INTO ALUMNOS_DEFAULT (CODIGO, FECHA_ALTA) VALUES (3, "2023-11-01");
        
    -- CHECK
		CREATE TABLE CLIENTES_CHECK(
		COD_CLIENTE INT PRIMARY KEY,
		NOMBRE VARCHAR(50),
		EDAD INT, 
		FECHA_ALTA DATE NOT NULL DEFAULT(current_date()),
		CONSTRAINT CHECK(EDAD>18));

		INSERT INTO CLIENTES_CHECK VALUES(1, "PACO", 50, "2023-01-01");
		INSERT INTO CLIENTES_CHECK VALUES(2, "JUAN", 18, "2023-01-01"); -- Error
		
        -- A nivel de columna solo te deja hacer referencia al valor de esa columna
		CREATE TABLE CLIENTES_CHECK(
		COD_CLIENTE INT PRIMARY KEY,
		NOMBRE VARCHAR(50),
		EDAD INT CHECK(EDAD>18), 
		FECHA_ALTA DATE NOT NULL DEFAULT(current_date())
		);

		INSERT INTO CLIENTES_CHECK VALUES(1, "PACO", 50, "2023-01-01");
		INSERT INTO CLIENTES_CHECK VALUES(2, "JUAN", 18, "2023-01-01"); -- Error
		
        -- A nivel de tabla una y de columna otra. A nivel de tabla te deja comparar diferentes campos
		CREATE TABLE COMPRAS_CLIENTES(
		COD_CLIENTE INT PRIMARY KEY,
		NOMBRE VARCHAR(50),
		EDAD INT CHECK(EDAD>18), 
		FECHA_COMPRA DATE NOT NULL DEFAULT(current_date()),
		FECHA_PAGO DATE, 
        CONSTRAINT CHECK(FECHA_PAGO > FECHA_COMPRA)
		);

		INSERT INTO COMPRAS_CLIENTES VALUES (1, "PACO", 40, "2024-3-05", current_date());
		INSERT INTO COMPRAS_CLIENTES VALUES (2, "LUCIA", 40, "2024-03-05", "2024-03-01"); -- Error

    -- FOREIGN KEY
		CREATE TABLE CLIENTES
		(CODIGO INT PRIMARY KEY,
		NOMBRE VARCHAR (100));

		CREATE TABLE PEDIDOS
		(COD_PEDIDO INT PRIMARY KEY, 
		PRECIO DECIMAL,
		FECHA DATE, 
		COD_CLIENTE INT,
		FOREIGN KEY (COD_CLIENTE) REFERENCES CLIENTES(CODIGO)
		);

		INSERT INTO CLIENTES values(1, 'juan');
		INSERT INTO CLIENTES values(2, 'pepe');
		INSERT INTO CLIENTES values(3, 'paco');
		INSERT INTO CLIENTES values(4, 'jose');

		INSERT INTO PEDIDOS VALUES(1, 3, '2024-01-01', 7); -- Error, pedido de un cliente que no existe
		INSERT INTO PEDIDOS VALUES(1, 3, '2024-01-01', 1);
		INSERT INTO PEDIDOS VALUES(2, 20, '2024-01-30', 1);
		
        -- No se puede borrar la fila por que tiene filas hijas asociadas en la tabla pedidos
		DELETE FROM CLIENTES WHERE CODIGO = 1; 

 /** 
INFORMATION_SCHEMA  
**/       
	SHOW DATABASES;
	USE information_schema;
	SHOW TABLES;
	DESC information_schema.TABLES;
	SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA="world" AND TABLE_NAME="country";
	SELECT * FROM information_Schema.table_constraints WHERE table_Schema="RESTRICCIONES" AND TABLE_NAME="PEDIDOS";
    
    -- Importante meterle un nombre, un alias a los check por ejemplo. Para luego visualizarlo mejor
		CREATE TABLE EJEMPLO (
		CODIGO INT PRIMARY KEY,
		PROVINCIA VARCHAR(50),
		FECHA DATE,
		FECHA_PAGO DATE,
		NOMBRE VARCHAR(100) CONSTRAINT CHECK_NOMBRE CHECK(LENGTH(NOMBRE)>2),
		CONSTRAINT CHECK_FECHAS CHECK(FECHA_PAGO>FECHA)
		);

/*
NO se pueden modificar restricciones ya creadas. Pero sí podemos borrar la restricción y después 
añadir una restricción nueva
- Añadir una restriccion -> ALTER TABLE TABLA ADD CONSTRAINT
- Borrar una restricción -> ALTER TABLE TABLA DROP CONSTRAINT
*/
	CREATE TABLE EJEMPLO (
	CODIGO INT,
	PROVINCIA VARCHAR(50),
	FECHA DATE,
	FECHA_PAGO DATE,
	NOMBRE VARCHAR(100)
	);
    
	ALTER TABLE EJEMPLO ADD CONSTRAINT CLAVE PRIMARY KEY(CODIGO);
	ALTER TABLE EJEMPLO ADD CONSTRAINT CHECK1 CHECK (LENGTH(NOMBRE)>2);
	ALTER TABLE EJEMPLO ADD CONSTRAINT CHECK2 CHECK (FECHA_PAGO>FECHA);

	ALTER TABLE EJEMPLO MODIFY PROVINCIA VARCHAR(50) NOT NULL;
	ALTER TABLE EJEMPLO MODIFY PROVINCIA VARCHAR(50) NULL;

	ALTER TABLE EJEMPLO ALTER PROVINCIA SET DEFAULT "CACERES";

	ALTER TABLE EJEMPLO DROP CONSTRAINT CHECK2; -- Importante ponerle nombre a las restricciones
	ALTER TABLE CLIENTES DROP PRIMARY KEY; -- No podemos borrar una primary key de la que dependa una foreign key
	ALTER TABLE EJEMPLO ALTER XXX DROP DEFAULT;

----------------- TEMA 10: VISTAS ----------------             
/**	  VISTAS 	**/
/*
	- Una vista es una SELECT que funciona como una tabla virtual
	- Esta SELECT se ejecuta cada vez que invocamos la vista, por lo tanto las filas y columnas de esta
    tabla virtual, realmente no están guardadas en ningún sitio, solamente se generan en el momento de 
    hacer la consulta
	- Podríamos verlo como guardar una query con un nombre
    SINTAXIS:
    CREATE VIEW NOMBRE AS SELECT...
*/
	USE WORLD;
	SELECT * FROM COUNTRY;
	SELECT * FROM CITY;

	CREATE VIEW VIDA60 AS SELECT * FROM COUNTRY WHERE LIFEEXPECTANCY>=60;
	SELECT * FROM VIDA60;
	SELECT CITY.NAME FROM CITY INNER JOIN VIDA60 ON COUNTRYCODE = CODE WHERE CONTINENT = 'EUROPE';
    
    -- Da error porque a nivel de vista crea dos columnas con nombre NAME
    CREATE VIEW CIUDAD_PAIS AS SELECT COUNTRY.NAME, CITY.NAME FROM CITY INNER JOIN COUNTRY ON COUNTRYCODE = CODE;
	
    -- Solucion 1: Introducir un alias
	CREATE VIEW CIUDAD_PAIS AS SELECT COUNTRY.NAME AS COUNTRYNAME, CITY.NAME AS CITYNAME FROM CITY INNER JOIN COUNTRY ON COUNTRYCODE = CODE;
	
    -- Solucion 2: La mejor a nivel de vistas
	CREATE VIEW CIUDAD_PAIS(PAIS, CIUDAD) AS SELECT COUNTRY.NAME, CITY.NAME FROM CITY JOIN COUNTRY ON COUNTRYCODE = CODE;
	
    -- En la vista te deja crearla o reemplazarla si ya existe
	CREATE OR REPLACE VIEW CIUDAD_PAIS(NOMBRE_PAIS, NOMBRE_CIUDAD) AS SELECT COUNTRY.NAME, CITY.NAME FROM CITY JOIN COUNTRY ON COUNTRYCODE = CODE;

/* UPDATABLES VIEWS */
/*
	Permiten insertar, actualizar y borrar datos en las tablas que hay bajo la vista
    No podemos tener:
    - funciones de agregacion Min, Max ect
    - Group by
    - distinct
    - uniones
    - left join 
    - subconsultas
*/
	CREATE TABLE TABLA_VISTA
	(CODIGO INT PRIMARY KEY,
	NOMBRE VARCHAR(100) NOT NULL);

	CREATE OR REPLACE VIEW VISTA AS SELECT * FROM TABLA_VISTA;

	-- Inserción a través de la tabla
	INSERT INTO TABLA_VISTA VALUES (1, 'paco');
	INSERT INTO TABLA_VISTA VALUES (2, 'maria');
    SELECT *FROM TABLA_VISTA;
    SELECT *FROM VISTA; -- Aunque la he creado antes de meter datos, como se ejecuta siempre, veo actualizaciones

	-- Inserción a través de la vista
	INSERT INTO VISTA VALUES(3, 'laura');
	SELECT *FROM TABLA_VISTA; -- Tambien lo veo en la tabla ademas de la vista
    SELECT *FROM VISTA;   

	-- Borrar a través de la vista
	DELETE FROM VISTA WHERE CODIGO = 3; -- En la tabla_vista se me quedan como NULL mientras que en la vista
										-- si que se borra el registro

	-- Modificar a través de la vista
	UPDATE VISTA SET NOMBRE="CONQUER" WHERE CODIGO = 1;

-- VISTAS NO UPDATABLES
	-- No tengo suficientes columnas definidas
	CREATE OR REPLACE VIEW VISTA1 AS SELECT NOMBRE FROM TABLA_VISTA;
	SELECT *FROM VISTA1; -- 1 columna
	SELECT *FROM TABLA_VISTA; -- 2 columnas
	INSERT INTO VISTA1 VALUES("alberto"); -- Error por diferencia de columnas

	CREATE OR REPLACE VIEW VISTA2 AS SELECT NOMBRE, COUNT(*) FROM TABLA_VISTA GROUP BY NOMBRE;
	SELECT *FROM VISTA2; -- 2 columnas
	SELECT *FROM TABLA_VISTA; -- 2 columnas
    INSERT INTO VISTA2 VALUES('raul', 20); -- Error por updates con un GROUP BY
    
-- CHECK OPTION
	SELECT * FROM VISTA;
	INSERT INTO VISTA VALUES (23, 'XXXXX');
	INSERT INTO VISTA VALUES (43, 'YYYY');
	CREATE OR REPLACE VIEW VISTA_CHECK AS SELECT * FROM TABLA_VISTA WHERE CODIGO > 4;
    INSERT INTO VISTA_CHECK VALUES (3, 'VISTA');
	SELECT * FROM VISTA_CHECK;
	SELECT * FROM TABLA_VISTA;
    -- El dato no entra en vista_check por que el codigo es menor que 4 pero si entra en tabla_vista,
    -- lo cual es un poco incongruente. Para corregirlo:
		CREATE OR REPLACE VIEW VISTA_CHECK AS SELECT * FROM TABLA_VISTA WHERE CODIGO > 4 WITH CHECK OPTION;
		INSERT INTO VISTA_CHECK VALUES (3, 'VISTA'); -- Directamente no te deja insertarla porque no cumple con filtro

-- RENOMBRADO Y EL BORRADO DE VISTAS
	RENAME TABLE VISTA TO VISTA_NUEVA;
	SELECT * FROM VISTA_NUEVA;
	DROP VIEW IF EXISTS VISTA_NUEVA;		
    
----------------- TEMA 11: INDICES ----------------  
/*
ÍNDICES
	- Funcionalidad que sirve para poder buscar filas de una forma mucho más rápida
	- Los índices permiten organizar los datos de forma que podamos buscarlos por la clave del índice
	- Similar a un diccionario. Guardamos la clave y la posición de la fina que posee esa clave o valor
	- Hay que actualizarlos cada vez que modificamos la tabla
	- Tipos de índice:
		*PRIMARY
		*UNIQUE
		*INDEX NORMAL
		*FULLTEXT
	- El tipo de almacenamiento depende del tipo de índice:
		* B-TREE es el más habitual. Se suele usar para índices Primary, Unique, Fulltext...
		* R-TREE se utiliza para datos espaciales
		* HASH para índices de tablas en memoria
*/
	CREATE SCHEMA INDICES;
	USE INDICES;

	CREATE TABLE DATOS_ALUMNO (
	CODIGO INT,
	NOMBRE VARCHAR(50),
	APELLIDOS VARCHAR(100),
	FECHA DATE);
    
    CREATE INDEX i_apellidos ON DATOS_ALUMNO(APELLIDOS); -- No se ve nada porque es algo interno
    CREATE INDEX i_nombre_completo ON DATOS_ALUMNO(APELLIDOS, NOMBRE); -- Importa el orden porque es el orden que sigue
	SHOW INDEXES FROM DATOS_ALUMNO;
    
    -- Para saber como hace las cosas SQL
	EXPLAIN SELECT * FROM DATOS_ALUMNO WHERE APELLIDOS ="GOMEZ";
	EXPLAIN SELECT * FROM DATOS_ALUMNO WHERE NOMBRE ="NOMBRE" AND APELLIDOS = "GOMEZ";
    
	CREATE TABLE DATOS_ALUMNOS2 (
	CODIGO INT,
	NOMBRE VARCHAR(50),
	DNI VARCHAR(50),
	constraint PRIMARY KEY (CODIGO),
	constraint unico1 UNIQUE(DNI),
	INDEX i_nombre (nombre)
	);
	-- Me muestra 3 indices: el creado y los 2 de primary key y unique
	SHOW INDEXES FROM DATOS_ALUMNOS2;
    -- Crear un index unico
    CREATE UNIQUE INDEX i_dni ON DATOS3(DNI);
    -- No se puede crear de una primary key
    -- Crear con los primeros 15 caracteres de nombre
    CREATE INDEX i_nombre ON DATOS4(NOMBRE(15));
    -- Borrarlos
    DROP INDEX UNICO1 ON DATOS_ALUMNOS2;

----------------- TEMA 12: USUARIOS ----------------  
-- NIVEL DE SEGURIDAD
/*
	CREACIÓN DE USUARIO
		usuario@host
        'usuario'@'host'
        'usuario1'@'190.168.10.1'
        'usuario1'@'190.168.10.12'
        'usuario'@'%' -- permite conectar desde cualquier maquina
        'usuario'@'190.168.10.%' -- Permite conectar con un rango de direcciones IP
        CREATE USER USUARIO IDENTIFIED BY 'PASSWORD';
*/
	CREATE USER 'USER1'@'%' IDENTIFIED BY 'prueba';
	CREATE USER 'USER2'@'190.168.10.12' IDENTIFIED BY 'prueba';
	SELECT * FROM MYSQL.USER;
	SET PASSWORD FOR 'USER1'@'%' = 'password';
	ALTER USER 'USER'@'%' IDENTIFIED BY 'prueba2';
	DROP USER 'USER'@'%';
    
/*
	PRIVILEGIOS Y PERMISOS
		Un privilegio es un permiso que se le puede asignar a un rol o usuario para llevar a cabo algunas operaciones
			- GLOBALES 
			- BASE DE DATOS 
			- TABLA
			- COLUMNA
			- PROCEDIMIENTOS Y FUNCIONES ALMACENADAS 
		COMANDOS BÁSICOS
		- GRANT: permite dar permisos a usuarios y roles
		- REVOKE: elimina permisos
		ROLES
		Conjunto de permisos
		Facilitar la gestión de permisos
*/
-- Privilegios a nivel de tabla
	GRANT SELECT ON ACADEMIA.CURSOS TO 'usuario1'@'%'; -- Da permisos de hacer queries
	GRANT UPDATE, INSERT ON ACADEMIA.CURSOS TO 'usuario1'@'%'; -- Da permisos de hacer update o insertar

-- Privilegios a nivel global y de base de datos
	GRANT ALL ON *.* TO 'usuario1'@'%'; -- Global
	GRANT ALL ON academia.* TO 'usuario1'@'%'; -- Base de datos

-- Privilegios a nivel de columna
	-- GRANT PRIVILEGIO(COL1), PRIVILEGIO(COL1, COL2) ON TABLA TO USUARIO;
	GRANT SELECT(NOMBRE, DURACION) ON ACADEMIA.ASIGNATURAS TO 'usuario2'@'%';
	DESC ALUMNOS;
	GRANT INSERT(COD_ALUMNO, NOMBRE, APELLIDOS) ON ACADEMIA.ALUMNOS TO 'usuario2'@'%';
	SELECT * FROM ACADEMIA.ALUMNOS;
	GRANT INSERT(COD_ALUMNO, NOMBRE) ON ACADEMIA.ALUMNOS TO 'usuario1'@'%';
	SHOW GRANTS FOR 'usuario1'@'%';
	SHOW GRANTS FOR 'usuario2'@'%';
	SELECT * FROM information_schema.table_privileges WHERE TABLE_NAME = 'asignaturas' and table_schema='academia';
	SELECT * FROM information_schema.column_privileges WHERE TABLE_NAME = 'asignaturas' and table_schema='academia';

/*REVOKE - Quitar privilegios
	REVOKE PRIVILEGIO ON OBJETO FROM USUARIO;
	REVOKE ALL, GRANT OPTION FROM USUARIO;
*/
	REVOKE SELECT ON ACADEMIA.CURSOS FROM 'usuario1'@'%'; -- Ojo que si tenemos permisos totales de la academia esto no hace nada
	REVOKE SELECT(DURACION) ON ACADEMIA.ASIGNATURAS FROM 'usuario2'@'%';

/*
ROLES 
	- Crear el rol
	- dar permisos al rol
	- Asignar el rol a los usuarios
*/
	CREATE USER 'desa1'@'%' IDENTIFIED BY 'password';
	CREATE USER 'desa2'@'%' IDENTIFIED BY 'password';
	CREATE USER 'desa3'@'%' IDENTIFIED BY 'password';
	CREATE ROLE DEVELOPMENT;
	GRANT SELECT ON ACADEMIA.NOTAS_ALUMNOS TO DEVELOPMENT;
	GRANT DEVELOPMENT TO 'desa1'@'%';
	SELECT * FROM MYSQL.USER ;
    -- Los que sean roles tendran los siguientes valores predeterminados diferentes a los usuarios
	SELECT * FROM MYSQL.USER WHERE authentication_string = '' and password_expired='Y' and account_locked= 'Y';
    
-- Activar los roles
	SET DEFAULT ROLE ALL TO 'Test1'@'%';
    
-- Designar y borrar roles
	REVOKE SELECT ON  ACADEMIA.NOTAS_ALUMNOS FROM DEVELOPMENT;
	SHOW GRANTS FOR DEVELOPMENT;
    -- Quitarle permisos development a un usuario
	REVOKE DEVELOPMENT FROM 'desa1'@'%';
    -- Eliminar el rol development
	DROP ROLE DEVELOPMENT;
    
    ----------------- TEMA 13: PROCEDIMIENTOS ----------------  
 /* PROCEDIMIENTOS *
- SQL no es un lenguaje procedural, por lo tanto tiene limitaciones para hacer algunas operaciones.
- Los procedimientos solucionan este problema ya que son objetos que contienen código SQL, se almacenan dentro de la base de datos 
y permiten el uso de comandos procedurales:
	* Condicionales
	* Bucles
	* Variables
Hay 3:
	* PROCEDIMIENTOS:
		- Es un fragmento de código que realiza una tarea concreta
		- Es posible recibir parámetros (de entrada) y también devolver parámetros (de retorno)
		- Pueden manejar tablas ejecutando operaciones e iteraciones de lectura y escritura
		- Se almacenan en la base de datos en la que se crean (no dentro de MySQL)
		- Aceptan recursividad
    * FUNCIONES:
		- Similares a los procedimientos, pero pueden devolver valores así que podemos utilizarlas en Sentencias SQL
		- UPPER(), LENGTH() son ejemplos de funciones que hemos usado durante el curso
    * TRIGGERS:
		- Son programas que se activa ante un suceso determinado
		- Este suceso se corresponde con alguna instrucción de tipo DML (UPDATE, INSERT, DELETE)
		- Permiten salvaguardar la seguridad y la integridad de los datos de las tablas
*/
 /*
DELIMITER -> indicar el símbolo para que mysql sepa que el procedimiento ha terminado
DELIMITER //
	CREATE PROCEDURE NOMBRE(PARAMETROS DE ENTRADA)
		BEGIN
			LINEAS DE CODIGO;
        END//
*/
USE ACADEMIA;
DELIMITER //
	CREATE PROCEDURE VER_CURSOS()
    BEGIN
		SELECT * FROM ACADEMIA.CURSOS;
    END //
    
CALL VER_CURSOS(); -- Llamada al procedimiento
    
/*
Parametros:
    IN -> Entrada
    OUT -> Salida
    INOUT -> Ambos
*/
	-- PARÁMETROS DE ENTRADA (IN)
		DELIMITER //
			CREATE PROCEDURE CONSULTA_CURSO_PRECIO(IN P_PRECIO DECIMAL)
			BEGIN 
				SELECT * FROM CURSOS WHERE PRECIO<=P_PRECIO;
			END //
		DELIMITER ; -- Lo tengo que poner para volver a la normalidad
		CALL CONSULTA_CURSO_PRECIO(220);
		
		DROP PROCEDURE IF EXISTS INSERTA_CURSO;
		DELIMITER //
			CREATE PROCEDURE INSERTA_CURSOS(IN P_CODIGO INT, P_NOMBRE VARCHAR(50), P_PRECIO INT)
				BEGIN 
				INSERT INTO CURSOS VALUES(P_CODIGO, P_NOMBRE, P_PRECIO);
				END //
		DELIMITER ;
		CALL INSERTA_CURSOS(8888, 'CURSO8888', 800);

	-- PARÁMETROS DE SALIDA (OUT)
		SET @RESULTADO = 0; -- Inicializado el resultado
		DELIMITER //
		CREATE PROCEDURE CALCULAR_ALUMNOS(IN P_CODIGO INT, OUT RES DECIMAL)
		BEGIN
			SELECT COUNT(*) INTO RES FROM ALUMNOS WHERE COD_CURSO = P_CODIGO;
		END//
		DELIMITER ;
		CALL CALCULAR_ALUMNOS(10, @RESULTADO);
		SELECT @RESULTADO;
        
        -- ** Con el INTO se pueden hacer mas cosas aparte de los procedimientos
			SELECT 23 INTO @VAR;
			SELECT 45, 'CONQUER' INTO @VAR, @VAR2;
            
	-- PARÁMETROS DE ENTRADA/SALIDA (INOUT)
		SET @VAR3 = 3;
		DELIMITER //
		CREATE PROCEDURE CALCULAR_ASIGNATURAS(INOUT PAR DECIMAL)
		BEGIN
			SELECT COUNT(*) INTO PAR FROM ASIGNATURAS WHERE COD_CURSO = PAR;
		END //
		DELIMITER ;
		CALL CALCULAR_ASIGNATURAS(@VAR3);
		SELECT @VAR3;
        CALL CALCULAR_ASIGNATURAS(5); -- Error, ya que no encuentra una variable @ donde almacenar la salida
        
/*
1. VARIABLES DE SESION
	set @nombreVariable = valor;
2. VARIABLES DENTRO DE UN PROCEDIMIENTO, FUNCION O TRIGGER
    DECLARE nombre TIPO;
    SET VARIABLE = VALOR;
*/
	-- VARIABLES DE SESION
		USE ACADEMIA;
		SET @V1 = 10;
		SELECT @V1;
		SELECT * FROM ACADEMIA.CURSOS WHERE COD_CURSO = @V1;
		
		SET @COLUMNA = "NOMBRE";
		SELECT @COLUMNA FROM ACADEMIA.CURSOS; -- No es lo que queremos. Las variable solo sirven para DATOS
		
		DELIMITER //
		CREATE PROCEDURE PROCED1()
		BEGIN
		 SELECT * FROM CURSOS WHERE COD_CURSO = @V1;
		 END// 
		DELIMITER ;
		CALL PROCED1();
 
	-- VARIABLES DE PROCEDIMIENTO
		DELIMITER //
		CREATE PROCEDURE CALCULA_BENEFICIO(P_CODIGO INT)
		BEGIN
			DECLARE NUM_ALUMNOS INT;
			DECLARE PRECIO_CURSO DECIMAL;
			DECLARE BENEFICIO DECIMAL;
			SELECT COUNT(*) INTO NUM_ALUMNOS FROM ALUMNOS WHERE COD_CURSO = P_CODIGO;
			SELECT PRECIO INTO PRECIO_CURSO FROM CURSOS WHERE COD_CURSO = P_CODIGO;
			SET BENEFICIO = NUM_ALUMNOS * PRECIO_CURSO;
			SELECT CONCAT("La ganancia del curso ", P_CODIGO, " es ", BENEFICIO);
		END//
		DELIMITER ;	
        CALL CALCULA_BENEFICIO(10);

-- Mostrar procedimientos
SHOW PROCEDURE STATUS;  

 /* CONTROL DE FLUJO *
-- CONDICIONES
	- IF
    - CASE
-- BUCLES
	- LOOP
    - WHILE
    - REPEAT
*/

-- CONDICIONES CON IF 
	/*
		IF condicion 
			THEN instrucciones 
		END IF;
		
		IF condicion
			THEN instrucciones
		ELSEIF condiciones
			THEN intrucciones
		ELSE intrucciones
		END IF;
	*/
	DROP PROCEDURE INSERT_CURSO;
	DELIMITER //
	CREATE PROCEDURE INSERT_CURSO(P_CODIGO INT, P_NOMBRE VARCHAR(50), P_PRECIO decimal)
		BEGIN
			IF P_PRECIO < 100 THEN
				SELECT "El precio no puede ser menor que 100";
			ELSEIF P_PRECIO > 300 THEN
				SELECT "El precio no puede ser mayor que 300";
			ELSE 
				INSERT INTO CURSOS VALUES(P_CODIGO, P_NOMBRE, P_PRECIO);
			END IF;
		END//
	DELIMITER ; 
	CALL INSERT_CURSO(30000, "CURSO30000", 9);
	CALL INSERT_CURSO(40000, "CURSO40000", 900);
	CALL INSERT_CURSO(40000, "CURSO40000", 200);
	SELECT * FROM CURSOS;
    
-- CONDICIONES CON CASE
	/*
		CASE expresion
			WHEN valor1 THEN instrucciones;
			WHEN valor2 THEN instrucciones;
			WHEN valor3 THEN instrucciones;
			ELSE instrucciones;
		END;
		CASE
			WHEN expresion1 THEN instrucciones;
			WHEN expresion2 THEN instrucciones;alter
			 ELSE instrucciones;
		END;
	*/
	DROP PROCEDURE INSERT_CURSO;
	DELIMITER //
		CREATE PROCEDURE insert_curso(p_codigo int, p_nombre varchar(50), p_precio decimal)
		BEGIN
			CASE 
			WHEN p_precio < 100 THEN
				SELECT "El precio no puede ser menor que 100";
			WHEN p_precio > 300 THEN
				SELECT "El precio no puede ser mayor que 300";
			ELSE 
				INSERT INTO CURSOS VALUES(p_codigo, p_nombre, p_precio);
			END CASE;
		END//
	DELIMITER ; 
	CALL INSERT_CURSO(555555, "CURSO555555", 150);
	SELECT * FROM CURSOS;

-- BUCLES CON LOOP
	/*
		etiqueta:LOOP
			instrucciones;
			LEAVE etiqueta; -- para salir del bucle si no seria infinito
			ITERATE etiqueta; -- para volver al principio del bucle
		END LOOP;
	*/

	DROP PROCEDURE BUCLE;
	DELIMITER //
	CREATE PROCEDURE BUCLE()
		BEGIN
			DECLARE COUNTER INT;
			DECLARE RESULTADO VARCHAR(50);
			SET COUNTER = 1;
			SET RESULTADO = '';
			BUCLE1:LOOP
				SET COUNTER = COUNTER +1;
				SET RESULTADO = CONCAT(RESULTADO, '-', COUNTER);
				IF COUNTER > 10 THEN
					LEAVE BUCLE1;
				END IF;
			END LOOP;
			SELECT RESULTADO;
		END //
	DELIMITER ;
	CALL BUCLE();

-- BUCLES CON WHILE
/*
	WHILE condicion DO
		INSTRUCCIONES;
    END WHILE;
*/
	DROP PROCEDURE BUCLE_WHILE;
	DELIMITER // 
	 CREATE PROCEDURE BUCLE_WHILE() 
	 BEGIN
		DECLARE COUNTER INT;
		DECLARE RESULTADO VARCHAR(50);
		SET COUNTER = 0;
		SET RESULTADO = '';
		WHILE COUNTER <= 10 DO
			SET RESULTADO = CONCAT(RESULTADO, '-', COUNTER);
			SET COUNTER = COUNTER +1;
		END WHILE;
		SELECT RESULTADO;
	 END//
	 DELIMITER ; 
	 CALL BUCLE_WHILE();
     
-- BUCLES CON REPEAT
	/*
		REPEAT
			instrucciones;
		UNTIL condicion;
		END REPEAT;
	*/
	DROP PROCEDURE BUCLE_REPEAT;
	DELIMITER //
	CREATE PROCEDURE BUCLE_REPEAT()
	BEGIN
		DECLARE COUNTER INT;
		DECLARE RESULTADO VARCHAR(50);
		SET COUNTER = 0;
		SET RESULTADO = '';
		REPEAT
			SET RESULTADO = CONCAT(RESULTADO, '-', COUNTER);
			SET COUNTER = COUNTER +1;
		UNTIL COUNTER = 11
		END REPEAT;
		SELECT RESULTADO;
	END//
	DELIMITER ;
	CALL BUCLE_REPEAT();

/*
 /* FUNCIONES *
	-- Siempre SIEMPRE devuelven un valor 
	-- Podemos utilizarlas en consultas
    
CREATE FUNCTION nombre_funcion()
		RETURNS tipo_de_dato
			CARACTERISTICAS
            BEGIN
				instrucciones
                RETURN valor
			END
            
	CREATE FUNCTION suma(num1 int, num2 int)
    RETURN int
    BEGIN
		DECLARE RESULTADO INT;
        SET RESULTADO = num1+ num2;
		RETURN RESULTADO;
    END   

CARACTERISTICAS
	- DETERMINISTIC : mismo resultado con mismos parámetros de entrada
    - NOT DETERMINISTIC: no devuelve el mismo resultado aunque se utilicen los mismos parametros de entrada
	- CONTAINS SQL: que la funcion tiene sentencias SQL, pero no sentencias de manipulacion de datos.
    - NO SQL: no tiene sentencias SQL
    - READS SQL DATA: sentencias SQL de lectura
    - MODIFIES SQL DATA: insert, update o delete
*/
	USE ACADEMIA;
	DROP FUNCTION IF EXISTS CALCULA_IVA;
	DELIMITER //
	 CREATE FUNCTION CALCULA_IVA(P_CODIGO INT)
	 RETURNS DECIMAL READS SQL DATA
	 BEGIN
		DECLARE PRECIO_TOTAL DECIMAL;
		SELECT PRECIO+(PRECIO*0.21) INTO PRECIO_TOTAL FROM CURSOS WHERE COD_CURSO = P_CODIGO;
		RETURN PRECIO_TOTAL;
	 END//
	DELIMITER ;
	SELECT CALCULA_IVA(1);
	SELECT *, CALCULA_IVA (COD_CURSO) AS PRECIO_FINAL FROM CURSOS;
    
/*	CONTROL DE ERRORES
DECLARE 
	OPCION (CONTINUE-EXIT-UNDO)
    HANDLER FOR
		CONDICION ( Codigo SQLSTATE - Codigo Error MySQL - SQL WARNING - NOT FOUND -EXCEPTION)
        Instrucciones 
	
CONDICIONES
	Error MySQL: codigo numerico (int) que es un error de MySQL (1051 -> tabla no existente)
	SQLSTATE: código de 5 caracteres que indica un error generado por el servidor
    Condicion: Una expresion asociada a un error de MySQL
    SQL WARNING: SQL STATE que empiezan por '01'
    NOT FOUND: SQL STATE que empiezan por '02'
    SQL EXCEPTION: SQLSTATEs que no empiezan por '00', '01' o '02'
    
https://dev.mysql.com/doc/mysql-errors/8.0/en/error-reference-introduction.html
*/    
	-- Errores mas personalizados
		DELIMITER //
		DROP PROCEDURE IF EXISTS ERRORES2//
		CREATE PROCEDURE ERRORES2(P_CODIGO INT, P_NOMBRE VARCHAR(50), P_PRECIO DECIMAL)
		BEGIN
			DECLARE NOMBRE_NULO BOOL;
			DECLARE CONTINUE HANDLER FOR 1062
			SELECT CONCAT('El codigo ', P_CODIGO, ' ya existe');
			
			DECLARE CONTINUE HANDLER FOR 1048
			SET NOMBRE_NULO = TRUE;
			
			INSERT INTO CURSOS VALUES (P_CODIGO, P_NOMBRE, P_PRECIO);
			IF NOMBRE_NULO THEN
				INSERT INTO CURSOS VALUES (P_CODIGO, "desconocido", P_PRECIO);
			END IF;
			SELECT 'He pasado por aqui';
		END //
		CALL ERRORES2(2000, NULL, 999)//
		SELECT * FROM CURSOS//
        
    -- Errores generales
		DROP PROCEDURE IF EXISTS ERRORES3//
		CREATE PROCEDURE ERRORES3(P_CODIGO INT, P_NOMBRE VARCHAR(50), P_PRECIO DECIMAL)
		BEGIN
			DECLARE CONTINUE HANDLER FOR sqlexception
			SELECT 'CUIDADO! SE HA PRODUCIDO UN ERROR';
			
			DECLARE CONTINUE HANDLER FOR sqlwarning
				SELECT 'CUIDADO! SE HA PRODUCIDO UN WARNING';

			INSERT INTO CURSOS VALUES (P_CODIGO, P_NOMBRE, P_PRECIO);
			SELECT 'He pasado por aqui';
		END //
		CALL ERRORES3(2000, NULL, 999)//    
        
	-- Diagnosticos
    /*
	GET DIAGNOSTICS CONDITION 1
		- RETURNED_SQLSTATE:  indica el estado de la condicion
        - MESSAGE_TEXT
        - MYSQL_ERRNO: error code
	- Se obtiene un mejor mensaje de error con mas informacion
	*/
		DELIMITER //
		DROP PROCEDURE IF EXISTS ERRORES4//
		CREATE PROCEDURE ERRORES4(P_CODIGO INT, P_NOMBRE VARCHAR(50), P_PRECIO DECIMAL)
		BEGIN
			DECLARE MENSAJE TEXT;
			DECLARE CODIGO INT;
			DECLARE CONTINUE HANDLER FOR sqlexception
			BEGIN 
				GET DIAGNOSTICS CONDITION 1
				CODIGO = mysql_errno, MENSAJE = message_text;
				
				SELECT 'SE HA PRODUCIDO EL ERROR ', CODIGO, ' con el mensaje ', MENSAJE;
			END;
			
			DECLARE CONTINUE HANDLER FOR sqlwarning
				SELECT 'CUIDADO! SE HA PRODUCIDO UN WARNING';

			INSERT INTO CURSOS VALUES (P_CODIGO, P_NOMBRE, P_PRECIO);
			SELECT 'He pasado por aqui';
		END //
		CALL ERRORES4(2000, NULL, 999)//
        
	-- ---------------- TEMA 14: CURSORES ----------------  
/*
CURSORES: Estructuras de datos que alamacenan el resultado de una SELECT y
		  que se pueden recorrer de forma secuencial
	-- Propiedades básicas:
		- ASENSITIVE / INSENSITIVE (esta ultima la mas comun): el servidor puede
		hacer o no una copia de los datos resultantes. En ASENSITIVE se apunta a
        los datos reales (lo complica si justo alguien hace una modificacion), y
        en INSENSITIVE se usa una copia temporal del dato.
        - READ-ONLY: no se pueden modificar las tablas asociadas a través del cursor
        - NON-SCROLLABLE: solo pueden recorrerse de forma secuencial
	-- Comandos:
		- DECLARE: se declara el cursor con la SELECT asociada
        - OPEN: para abrir el cursor
        - FECTH: se recuperan las filas una a una de forma secuencial
        - CLOSE: para cerrar el cursor
	** Los cursores se declaran siempre despues de la declaracion de variables locales
    y antes que las declaraciones de los Handlers.
*/
	USE ACADEMIA;
    DROP PROCEDURE IF EXISTS leer_cursos;
	DELIMITER //
	CREATE PROCEDURE LEER_CURSOS()
	BEGIN
	-- Variables
		DECLARE FIN BOOL;
		DECLARE RESULTADO TEXT;
		DECLARE COD_CURSO INT;
		DECLARE NOMBRE_CURSO VARCHAR(50);
		DECLARE PRECIO_CURSO DECIMAL;
		
		-- CURSOR Y HANDLER
		DECLARE CURSOR_CURSOS CURSOR FOR SELECT * FROM CURSOS;
		
		-- HANDLER que es el que hace que el booleano sea TRUE cuando el cursor deje de encontrarse lineas
		DECLARE CONTINUE HANDLER FOR NOT FOUND
			SET FIN = TRUE;
		
		SET RESULTADO = " ";
		OPEN CURSOR_CURSOS;
		BUCLE: LOOP
			FETCH CURSOR_CURSOS INTO  COD_CURSO, NOMBRE_CURSO, PRECIO_CURSO;
			IF FIN THEN
				LEAVE BUCLE;
			END IF;
			SET RESULTADO = CONCAT(RESULTADO, "\n", NOMBRE_CURSO);
		END LOOP;
		SELECT RESULTADO;
	END//
	CALL LEER_CURSOS()//

/*
TRIGGERS: Son procedimientos almacenados que se ejecutan de forma automática cuando
		  ocurre algun evento específico dentro de una base de datos. Disparadores.
		- Estos eventos se corresponden con instrucciones:
			- DML
            - INSERT
            - UPDATE
            - DELETE
		- Se utilizan con motivos de seguridad para salvaguardar la integridad de los
        datos y para configurar valores por defecto o hacer cálculos predifinidos.
		- Momentos en el que se lanza un trigger:
			- BEFORE: antes de hacer una operación
            - AFTER: despues de hacer una operación
		- Evento que lo dispara:
            - INSERT
            - UPDATE
            - DELETE
		- For Each Row: se activa el trigger para cada fila
*/
	DROP TABLE IF EXISTS AUDIT;
	CREATE TABLE AUDIT (
		CODIGO INT AUTO_INCREMENT PRIMARY KEY,
		TABLA VARCHAR (50),
		OPERACION VARCHAR(50),
		USUARIO VARCHAR(50)
	);
	DELIMITER //
	DROP TRIGGER IF EXISTS AUDIT_CURSOS//

	-- Creas un trigger para que meta datos en la tabla AUDIT cuando introduzcamos nosotros datos en CURSOS
	CREATE TRIGGER AUDIT_CURSOS BEFORE INSERT ON CURSOS FOR EACH ROW
	BEGIN
		INSERT INTO AUDIT(TABLA, OPERACION, USUARIO) VALUES ('CURSOS', 'INSERT', CURRENT_USER());
	END //

	INSERT INTO CURSOS VALUES(3333333, 'CURSO-3333333', 100)//
	INSERT INTO CURSOS VALUES(88888, 'CURSO-88888', 100)//
	SELECT * FROM AUDIT//
    
    /*
				 OLD      NEW
	INSERT ---->  -        X
	UPDATE----->  X        X
	DELETE ---->  X        -
	NEW.campo
	OLD.campo
	*/
	DELIMITER //

	DROP TRIGGER IF EXISTS update_cursos//
	CREATE TRIGGER UPDATE_CURSOS BEFORE UPDATE ON CURSOS FOR EACH ROW
	precedes UPDATE_CURSOS2 -- Hace que se ejecute siempre antes que el 2, lo cual lo veremos en AUDIT
	BEGIN
		IF NEW.PRECIO < 100 THEN
			SET NEW.PRECIO = 100;
		END IF;
		INSERT INTO AUDIT(TABLA, OPERACION, USUARIO) VALUES ('CURSOS', 'UPDATE', CURRENT_USER());
	END //
	UPDATE CURSOS SET PRECIO = 10 WHERE COD_CURSO=3//
	UPDATE CURSOS SET PRECIO = 10 WHERE COD_CURSO=6//
	SELECT * FROM CURSOS//

	DROP TRIGGER IF EXISTS UPDATE_CURSOS2//
	CREATE TRIGGER UPDATE_CURSOS2 BEFORE UPDATE ON CURSOS FOR EACH ROW
	BEGIN
		INSERT INTO AUDIT(TABLA, OPERACION, USUARIO) VALUES ('CURSOS', 'UPDATE 2', CURRENT_USER());
	END //
	UPDATE CURSOS SET PRECIO = 900 WHERE COD_CURSO=5//
	UPDATE CURSOS SET PRECIO = 700 WHERE COD_CURSO=6//
	SELECT * FROM AUDIT;

	/*
	SIGNAL 45000 -> PERMITE PARAR EL PROCESO DE UN TRIGGER
	 */
	DELIMITER //
	CREATE TRIGGER DELETE_CURSOS BEFORE DELETE ON CURSOS FOR EACH ROW
	BEGIN
		IF CURRENT_USER() <> 'PEPE@%' THEN
			signal sqlstate '45000'; -- Para el trigger
		END IF;
		INSERT INTO AUDIT(TABLA, OPERACION, USUARIO) VALUES ('CURSOS', 'DELETE', CURRENT_USER());
	END //
	SELECT * FROM CURSOS//
	DELETE FROM CURSOS WHERE COD_CURSO = 555//