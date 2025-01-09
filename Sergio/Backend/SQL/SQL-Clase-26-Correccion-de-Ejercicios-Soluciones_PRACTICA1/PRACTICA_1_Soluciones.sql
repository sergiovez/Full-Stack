 -- 1. Averigua el DNI de todos los clientes.
 select dni from cliente;
-- 2. Consulta todos los datos de todos los programas.
 select * from programa;
-- 3.  Obtén un listado con los nombres de todos los programas.
 select nombre from programa;
-- 4.  Genera una lista con todos los comercios.
 select * from comercio;
-- 5. Genera una lista de las ciudades con establecimientos donde se venden programas, sin que aparezcan valores duplicados (utiliza DISTINCT).
 select distinct ciudad from comercio;
-- 6. Obtén una lista con los nombres de programas, sin que aparezcan valores duplicados (utiliza DISTINCT).
 select distinct nombre from programa;
-- 7. Obtén el DNI más 4 de todos los clientes.
 select dni+4 from cliente;
-- 8. Haz un listado con los códigos de los programas multiplicados por 7. 
 select codigo*7 from programa;
-- 9. ¿Cuáles son los programas cuyo código es inferior o igual a 10?
 select * from programa where codigo<=10;
-- 10. ¿Cuál es el programa cuyo código es 11?
 select * from programa where codigo=11;
-- 11. ¿Qué fabricantes son de Estados Unidos?	
 select * from fabricante where pais='Estados Unidos';
-- 12.  ¿Cuáles son los fabricantes no españoles? Utilizar el operador IN.		
 select * from fabricante where pais not in('España');
-- 13. Obtén un listado con los códigos de las distintas versiones de Windows.	
 select * from programa where nombre='Windows';
-- 14.  ¿En qué ciudades comercializa programas El Corte Inglés			
 select ciudad from comercio where nombre='El corte inglés';
-- 15. ¿Qué otros comercios hay, además de El Corte Inglés? Utilizar el operador IN.
 select * from comercio where nombre not in('El corte inglés');
-- 16. Genera una lista con los códigos de las distintas versiones de Windows y Access. Utilizar el operador IN.
 select codigo from programa where nombre in('Windows','Access');
-- 17. Obtén un listado que incluya los nombres de los clientes de edades comprendidas entre 10 y 25 y de los mayores de 50 años. Da una solución con BETWEEN y otra sin BETWEEN.	
 select * from cliente where edad between 10 and 25 or edad>50;
-- 18.  Saca un listado con los comercios de Sevilla y Madrid. No se admiten valores duplicados.
 select distinct nombre from comercio where ciudad in('Madrid','Sevilla');
-- 19. ¿Qué clientes terminan su nombre en la letra “o”?
 select * from cliente where nombre like '%o';
-- 20. ¿Qué clientes terminan su nombre en la letra “o” y, además, son mayores de 30 años?
 select * from cliente where nombre like '%o' and edad>30;
-- 21. Obtén un listado en el que aparezcan los programas cuya versión finalice por una letra i, o cuyo nombre comience por una A o por una W.
 select * from programa where version like '%i' or nombre like 'a%' or nombre like 'w%';
-- 22. Obtén un listado en el que aparezcan los programas cuya versión finalice por una letra i, o cuyo nombre comience por una A y termine por una S
 select * from programa where version like '%i' or (nombre like 'a%' and nombre like '%s');
-- 23. Obtén un listado en el que aparezcan los programas cuya versión finalice por una letra i, y cuyo nombre no comience por una A.
 select * from programa where version like '%i' and nombre not like 'a%';
-- 24. Obtén una lista de empresas por orden alfabético ascendente.
 select * from fabricante order by nombre asc;
-- 25.  Genera un listado de empresas por orden alfabético descendente.
 select * from fabricante order by nombre desc;
-- 26. Obtén un listado de programas por orden de versión
 select * from programa order by version;
-- 27.  Genera un listado de los programas que desarrolla Oracle.
 select programa.nombre from fabricante, programa, desarrolla
where fabricante.id_fab=desarrolla.id_fab and programa.codigo=desarrolla.codigo 
and fabricante.nombre='Oracle';
-- 28.  ¿Qué comercios distribuyen Windows?
 select comercio.nombre 
from comercio,programa,distribuye
where comercio.cif=distribuye.cif and programa.codigo=distribuye.codigo and programa.nombre='Windows';
-- 29.  Genera un listado de los programas y cantidades que se han distribuido a El Corte Inglés de Madrid
 select programa.nombre,cantidad
from programa,comercio,distribuye
where programa.codigo=distribuye.codigo and comercio.cif=distribuye.cif and comercio.nombre='El corte inglés';
-- 30. ¿Qué fabricante ha desarrollado Freddy Hardest?
 select fabricante.nombre
   from fabricante,programa,desarrolla
   where programa.codigo=desarrolla.codigo and desarrolla.id_fab=fabricante.id_fab and programa.nombre='Freddy Hardest';
-- 31. Selecciona el nombre de los programas que se registran por Internet.
 select programa.nombre
   from programa,registra
   where programa.codigo=registra.codigo and medio='Internet';
-- 32. Selecciona el nombre de las personas que se registran por Internet
 select cliente.nombre
   from cliente,registra
   where cliente.dni=registra.dni and medio='Internet';
-- 33. ¿Qué medios ha utilizado para registrarse Pepe Pérez?
select medio
   from cliente,registra
   where cliente.dni=registra.dni and cliente.nombre='Pepe Pérez';
-- 34. ¿Qué usuarios han optado por Internet como medio de registro?	
 select cliente.nombre
   from cliente,registra
   where cliente.dni=registra.dni and medio='Internet';
-- 35. ¿Qué programas han recibido registros por tarjeta postal?
 select programa.nombre
   from programa,registra
   where programa.codigo=registra.codigo and medio='Tarjeta postal';

-- 36.  ¿En qué localidades se han vendido productos que se han registrado por Internet?
 select distinct ciudad
   from comercio,distribuye,registra
   where comercio.cif=distribuye.cif and registra.cif=comercio.cif and medio='Internet';
   
-- 37.  Obtén un listado de los nombres de las personas que se han registrado por Internet, junto al nombre de los programas para los que ha efectuado el registro.
 select programa.nombre,cliente.nombre
   from programa,cliente,registra
   where programa.codigo=registra.codigo and cliente.dni=registra.dni and medio='Internet';
-- 38. Genera un listado en el que aparezca cada cliente junto al programa que ha registrado, el medio con el que lo ha hecho y el comercio en el que lo ha adquirido
 select cliente.nombre,programa.nombre,medio,comercio.nombre
   from programa,cliente,registra,comercio
   where programa.codigo=registra.codigo and cliente.dni=registra.dni and comercio.cif=registra.cif;

-- 39.  Genera un listado con las ciudades en las que se pueden obtener los productos de Oracle.
select distinct comercio.ciudad from fabricante inner join desarrolla inner join programa inner join distribuye inner join comercio
ON fabricante.id_fab = desarrolla.id_fab AND programa.codigo = desarrolla.codigo AND distribuye.codigo = programa.codigo AND comercio.cif = distribuye.cif
WHERE fabricante.nombre = 'Oracle';


-- 40.  Obtén el nombre de los usuarios que han registrado Access XP.						
 select cliente.nombre
   from cliente,programa,registra
   where cliente.dni=registra.dni and programa.codigo=registra.codigo and programa.nombre='Access' and version='XP';

-- 41.  Nombre de aquellos fabricantes cuyo país es el mismo que ʻOracleʼ. (Subconsulta).
 select nombre
   from fabricante
   where pais=(select pais from fabricante where nombre='Oracle');
   
-- 42. Nombre de aquellos clientes que tienen la misma edad que Pepe Pérez. (Subconsulta).
 select *
   from cliente
   where edad=(select edad from cliente where nombre='Pepe Pérez');
   
-- 43. Genera un listado con los comercios que tienen su sede en la misma ciudad que tiene el comercio ʻFNACʼ. (Subconsulta).
 select * from comercio
   where ciudad in (select ciudad from comercio where nombre='FNAC');
-- 44.  Nombre de aquellos clientes que han registrado un producto de la misma forma que el cliente ʻPepe Pérezʼ. (Subconsulta).
 SELECT CLIENTE.nombre FROM CLIENTE, REGISTRA
WHERE CLIENTE.DNI = REGISTRA.DNI 
AND MEDIO IN (SELECT MEDIO FROM REGISTRA, CLIENTE WHERE REGISTRA.DNI = CLIENTE.DNI AND cliente.NOMBRE='Pepe Pérez');

-- 45.  Obtener el número de programas que hay en la tabla programas. 
 select count(*) from programas;
-- 46. Calcula el número de clientes cuya edad es mayor de 40 años.					
 select count(*) from clientes where edad>40;
-- 47. Calcula el número de productos que ha vendido el establecimiento cuyo CIF es 1
 select sum(cantidad)
   from comercio,distribuye
   where comercio.cif=distribuye.cif and comercio.cif=1;
-- 48.  Calcula la media de programas que se venden cuyo código es 7.
 select avg(cantidad)
   from distribuye
   where codigo=7;
-- 49.  Calcula la mínima cantidad de programas de código 7 que se ha vendido	
 select min(cantidad)
   from distribuye
   where codigo=7;
-- 50.  Calcula la máxima cantidad de programas de código 7 que se ha vendido.
 select max(cantidad)
   from distribuye
   where codigo=7;
-- 51.  ¿En cuántos establecimientos se vende el programa cuyo código es 7?
 select count(*)
   from comercio,distribuye
   where comercio.cif=distribuye.cif and codigo=7;
-- 52. Calcular el número de registros que se han realizado por Internet.
 select count(*)
   from registra
   where medio='Internet';
-- 53. Obtener el número total de programas que se han vendido en ʻSevillaʼ.	
 select count(*)
   from comercio,distribuye
   where comercio.cif=distribuye.cif and ciudad='Sevilla';
-- 54. Calcular el número total de programas que han desarrollado los fabricantes cuyo país es ʻEstados Unidosʼ.
 select count(*)
   from fabricante,desarrolla
   where fabricante.id_fab=desarrolla.id_fab and pais='Estados Unidos';

-- 55. Visualiza el nombre de todos los clientes en mayúscula. En el resultado de la consulta debe aparecer también la longitud de la cadena nombre.
SELECT UPPER(NOMBRE) AS NOMBRE_MAYUSCULAS, LENGTH(NOMBRE) AS LONGITUD_NOMBRE FROM CLIENTE;
-- 56. Con una consulta concatena los campos nombre y versión de la tabla PROGRAMA. 
SELECT CONCAT(NOMBRE, VERSION)AS NOMBRE_VERSION FROM PROGRAMA;
