USE sakila;
-- 1. Extrae la dirección (address) y dirección2 (address2) donde la dirección2 sea nula de la tabla es address
SELECT address AS 'Direccion', address2 AS 'Direccion 2' FROM address WHERE address2 IS NULL;
-- 2. Extrae el rental_id, rental_date y return_date para aquellos alquileres que ya tienen fecha de devolución de la tabla rental
SELECT rental_id, rental_date, return_date FROM rental WHERE return_date IS NOT NULL;
-- 3. Vamos a usar la tabla “category”. Con un case vamos a traducir alguna de las categorías, no hace falta todas.
SELECT *,
CASE name
	when 'Action' THEN 'Accion'
    when 'Animation' THEN 'Animación'
    when 'Children' THEN 'Niños'
END AS 'Nombre en español'
FROM category;
-- 4. Vamos a usar la tabla payment y la columna amount según las siguientes condiciones:
	-- a. amount<= 0.99 'Barato'
	-- b. amount entre 1 y 4.99 'Medio'
	-- c. amount >= 4.99 'Caro'
	-- d. Para cualquier otra cosa ponemos 'Otros valores
SELECT payment_id, amount,
CASE
	WHEN amount <= '0.99' THEN 'Barato'
    WHEN amount BETWEEN '1' AND '4.99' THEN 'Medio'
    WHEN amount >= '4.99' THEN 'Caro'
    ELSE 'Otros valores'
END AS 'Texto'
FROM payment