-- *** FOREIGN KEYS *** --
/*
- Constraint de clave ajena que permite enlazar dos tablas, de manera que se guarda la integridad entre las 
	dos tablas
- Una clave ajena es uno o varios campos que se relacionan con la clave primaria (PRIMARY KEY) de otra tabla
- Relaciones maestro-detalle -> la tabla hija depende de la tabla padre
*/

USE RESTRICCIONES;

CREATE TABLE CLIENTES
(CODIGO INT PRIMARY KEY,
NOMBRE VARCHAR (100));

CREATE TABLE PEDIDOS
(COD_PEDIDO INT PRIMARY KEY, 
PRECIO DECIMAL,
FECHA DATE, 
COD_CLIENTE INT,
foreign key (COD_CLIENTE) references CLIENTES(CODIGO)
);

INSERT INTO CLIENTES values(1, 'juan');
INSERT INTO CLIENTES values(2, 'pepe');
INSERT INTO CLIENTES values(3, 'paco');
INSERT INTO CLIENTES values(4, 'jose');

INSERT INTO PEDIDOS VALUES(1, 3, '2024-01-01', 7); -- No se puede insertar un pedido de un cliente que no existe
INSERT INTO PEDIDOS VALUES(1, 3, '2024-01-01', 1);
INSERT INTO PEDIDOS VALUES(2, 20, '2024-01-30', 1);

DELETE FROM CLIENTES WHERE CODIGO = 1; -- No se puede borrar la fila por que tiene filas hijas asociadas en la tabla pedidos

drop table clientes; -- tampoco se puede borrar la tabla padre







