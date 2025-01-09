-- 1. Visualizar la fecha y hora actual, con 2 funciones diferentes
SELECT CURDATE();
SELECT CURTIME();
-- 2. Visualizar la fecha y hora con una sola función.
SELECT NOW();
-- 3. Añade 25 minutos a la hora actual.
SELECT ADDTIME(CURTIME(), '00:25:00');
-- 4. Añade 24 horas a la fecha actual.
SELECT ADDDATE(NOW(), INTERVAL 24 HOUR);
-- 5. Vamosahora a usar la tabla “rental”.
USE sakila;
SELECT *FROM rental;
	-- a. Visualizar rental_date, pero solo la parte de la fecha, quitando la hora
    SELECT rental_date, DATE(rental_date) FROM rental;
	-- b. Hacer la misma operación pero visualizando el nombre del mes, pero solo para Enero y Mayo de 2005
    SELECT rental_date, monthname(rental_date) FROM rental WHERE (monthname(rental_date) IN ('Janurary', 'May')) AND (year(rental_date) = 2005);
	-- c. Visualizar el nombre del mes, pero traducido al español, usando CASE.
    SELECT rental_date, 
		CASE 
			WHEN monthname(rental_date) = 'June' THEN 'Junio'
            WHEN monthname(rental_date) = 'May' THEN 'Mayo'
            WHEN monthname(rental_date) = 'July' THEN 'Julio'
		END AS 'Mes en español'
	FROM rental;
	-- d. Visualizar los alquileres que se hayan hecho los sábados y domingos del mes de mayo de 2005
    SELECT rental_date FROM rental WHERE month(rental_date) = 5 AND year(rental_date) = 2005 AND dayname(rental_date) IN ('Saturday', 'Sunday');
	-- e. Averiguar cuantos días llevas viviendo
    SELECT DATEDIFF(CURDATE(),'1994-05-13');
    -- f. Si la devolución de una película, tiene que hacerse en 48 horas,
		-- calcula cual sería la fecha de devolución prevista de los alquileres
	SELECT rental_date, ADDTIME(rental_date, '48:00:00') AS 'Hora de devolucion' FROM rental;
	-- g. Poner el siguiente formato a la fecha y hora actual. Esto es un ejemplo, debe salir la fecha real o 
		-- Fecha de factura: Friday, dia 06 del mes de January del año 2023
	SELECT rental_date, CONCAT('Fecha de factura: ',DAYNAME(rental_date), ', dia ', DAY(rental_date), ' del mes de ', MONTHNAME(rental_date), ' del año ', YEAR(rental_date)) AS 'Formateado' FROM rental;
    SELECT rental_date, DATE_FORMAT(rental_date,'Fecha de factura: %W, dia %d del mes de %M del año %Y') FROM rental;
        