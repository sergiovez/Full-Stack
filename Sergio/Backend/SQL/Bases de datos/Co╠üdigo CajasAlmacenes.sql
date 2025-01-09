-- Crear la tabla ALMACENES
USE EMPRESA;

CREATE TABLE ALMACENES (
    Codigo INT PRIMARY KEY,
    Lugar VARCHAR(255),
    Capacidad INT
);

-- Crear la tabla CAJAS
CREATE TABLE CAJAS (
    NumReferencia INT PRIMARY KEY,
    Contenido VARCHAR(255),
    Valor INT,
    Almacen INT,
    FOREIGN KEY (Almacen) REFERENCES ALMACENES(Codigo)
);

-- Insertar datos en la tabla ALMACENES
INSERT INTO ALMACENES (Codigo, Lugar, Capacidad) VALUES
(1, 'Almacén A', 1000),
(2, 'Almacén B', 800),
(3, 'Almacén C', 1200),
(4, 'Almacén D', 500),
(5, 'Almacén E', 1500),
(6, 'Almacén F', 2000),
(7, 'Almacén G', 600),
(8, 'Almacén H', 900),
(9, 'Almacén I', 1100),
(10, 'Almacén J', 700),
(11, 'Almacén K', 1300),
(12, 'Almacén L', 1800),
(13, 'Almacén M', 950),
(14, 'Almacén N', 1200),
(15, 'Almacén O', 850),
(16, 'Almacén P', 1000),
(17, 'Almacén Q', 1600),
(18, 'Almacén R', 750),
(19, 'Almacén S', 1400),
(20, 'Almacén T', 1100),
(21, 'Almacén U', 900),
(22, 'Almacén V', 1100),
(23, 'Almacén W', 800),
(24, 'Almacén X', 1300),
(25, 'Almacén Y', 700),
(26, 'Almacén Z', 1000),
(27, 'Almacén AA', 1200),
(28, 'Almacén BB', 600),
(29, 'Almacén CC', 1500);


-- Insertar datos en la tabla CAJAS
INSERT INTO CAJAS (NumReferencia, Contenido, Valor, Almacen) VALUES
(101, 'Electrónicos', 500, 6),
(102, 'Ropa de invierno', 300, 12),
(103, 'Juguetes', 200, 4),
(104, 'Herramientas', 150, 1),
(105, 'Artículos de cocina', 800, 9),
(106, 'Libros', 120, 2),
(107, 'Equipos deportivos', 250, 7),
(108, 'Artículos de jardín', 180, 5),
(109, 'Electrodomésticos', 700, 10),
(110, 'Muebles', 400, 18),
(111, 'Productos de limpieza', 100, 3),
(112, 'Suministros de oficina', 350, 8),
(113, 'Instrumentos musicales', 220, 11),
(114, 'Productos para mascotas', 130, 14),
(115, 'Accesorios de moda', 280, 17),
(116, 'Artículos de camping', 180, 13),
(117, 'Productos de belleza', 200, 15),
(118, 'Artículos para bebés', 90, 19),
(119, 'Productos de salud', 160, 16),
(120, 'Suministros para fiestas', 120, 20),
(121, 'Artículos de playa', 90, 15),
(122, 'Instrumentos científicos', 300, 7),
(123, 'Decoraciones navideñas', 180, 4),
(124, 'Equipos de acampada', 250, 16),
(125, 'Suministros para manualidades', 120, 8),
(126, 'Productos electrónicos pequeños', 150, 2),
(127, 'Productos de limpieza del hogar', 200, 13),
(128, 'Ropa deportiva', 130, 11),
(129, 'Herramientas eléctricas', 350, 6),
(130, 'Juguetes educativos', 100, 19),
(131, 'Artículos para el hogar', 280, 10),
(132, 'Suministros de cocina', 220, 12),
(133, 'Productos para mascotas', 120, 9),
(134, 'Equipos de fitness', 180, 18),
(135, 'Accesorios para el cabello', 90, 1),
(136, 'Productos para el cuidado de la piel', 160, 14),
(137, 'Productos de viaje', 200, 5),
(138, 'Suministros de oficina', 150, 3),
(139, 'Ropa de cama', 300, 17),
(140, 'Artículos de picnic', 120, 20),
(141, 'Artículos de arte', 120, 8),
(142, 'Joyería', 500, 15),
(143, 'Productos de tecnología', 300, 6),
(144, 'Instrumentos musicales pequeños', 150, 11),
(145, 'Suministros para bebés', 180, 19),
(146, 'Productos de deportes acuáticos', 250, 13),
(147, 'Productos de papelería', 100, 3),
(148, 'Ropa de verano', 130, 10),
(149, 'Artículos de lujo', 350, 18),
(150, 'Herramientas manuales', 120, 1),
(151, 'Productos de jardinería', 280, 5),
(152, 'Electrodomésticos pequeños', 220, 9),
(153, 'Ropa infantil', 120, 2),
(154, 'Productos de belleza y cuidado personal', 200, 14),
(155, 'Suministros para mascotas', 90, 17),
(156, 'Artículos de camping ligeros', 160, 16),
(157, 'Productos de cocina gourmet', 200, 12),
(158, 'Juguetes para mascotas', 150, 4),
(159, 'Ropa formal', 300, 7),
(160, 'Accesorios de viaje', 120, 20);



