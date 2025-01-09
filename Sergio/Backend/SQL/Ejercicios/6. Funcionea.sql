USE sakila;
-- 1. Enla tabla empleados, visualizar los siguientes datos:
	-- a. Visualizar los nombres de los empleados que tengan más de 10 letras
    SELECT *FROM staff;
    SELECT first_name FROM staff WHERE (length(first_name)>3);
	-- b. Visualizar el nombre y apellido1 de los empleados que tengan la misma longitud
    SELECT first_name, last_name FROM staff WHERE (length(first_name)+3 = length(last_name)); 
	-- c. Visualizar el nombre y los apellidos en un único campo
    SELECT CONCAT(first_name, ' ', last_name) AS 'Nombre Completo' FROM staff;
	-- d. Visualizar las iniciales del nombre y los apellidos. Por ejemplo: Yolanda López Guillén debe aparecer como Y.L.G
    SELECT first_name, last_name, CONCAT(SUBSTR(first_name, 1, 1), '.', SUBSTR(last_name,1,1)) FROM staff;
	-- e. Visualizar el nombre de los empleados que tengan una ‘a’ sin usar LIKE. Utiliza la función LOCATE.
    SELECT first_name FROM staff WHERE LOCATE('o', first_name)!=0;
	-- f. Visualiza el nombre y la última letra del nombre
    SELECT first_name, SUBSTR(first_name, length(first_name), 1) AS 'Ultima letra' FROM staff;
	-- g. Visualiza el nombre y la última letra del nombre, pero sólo si esta última letra es una vocal
    SELECT first_name, SUBSTR(first_name, length(first_name), 1) AS 'Ultima letra' FROM staff WHERE SUBSTR(first_name, length(first_name), 1) IN ('a','e','i','o','u');
	-- h. Extraer del correo del empleado solo una parte del nombre. Elimina lo que hay desde el ‘@’ hasta el final.
    SELECT first_name, email, SUBSTR(email, 1, LOCATE('@',email)-1) FROM staff;
-- 2. También en la tabla empleados, visualiza los siguientes datos:
	-- a. Visualizar el salario y decir si es impar o par.
    SELECT customer_id, first_name,
		CASE
			WHEN (customer_id MOD 2) = 0 THEN 'Par'
            ELSE 'Impar'
		END AS 'Par o Impar'
	FROM customer;
-- 3. Enla tabla payment:
	-- a. Visualiza el numero entero inferior y el posterior de la columna amount
    SELECT payment_id, amount, FLOOR(amount) AS 'Inferior', CEIL(amount) AS 'Superior' FROM payment;