CREATE SCHEMA CENTRO_INVESTIGACION;

USE CENTRO_INVESTIGACION;

CREATE TABLE CIENTIFICOS (
    DNI VARCHAR(20) PRIMARY KEY,
    NombreApellidos VARCHAR(100)
);


CREATE TABLE ASIGNADO_A (
    Cientifico VARCHAR(20),
    Proyecto VARCHAR(100),
    PRIMARY KEY (Cientifico, Proyecto),
    FOREIGN KEY (Cientifico) REFERENCES CIENTIFICOS(DNI)
);

-- Crear la tabla PROYECTO
CREATE TABLE PROYECTO (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100),
    Horas INT
);


INSERT INTO CIENTIFICOS (DNI, NombreApellidos)
VALUES
    ('111111111A', 'Carlos López'),
    ('222222222B', 'Ana García'),
    ('333333333C', 'David Martínez'),
    ('444444444D', 'Elena Rodríguez'),
    ('555555555E', 'Francisco Sánchez'),
    ('666666666F', 'Isabel Pérez'),
    ('777777777G', 'Javier González'),
    ('888888888H', 'Laura López'),
    ('999999999I', 'Miguel Fernández'),
    ('123456789J', 'Natalia Ramírez');

-- Insertar datos en la tabla PROYECTO
INSERT INTO PROYECTO (ID, Nombre, Horas)
VALUES
    (1, 'Desarrollo de Software', 50),
    (2, 'Investigación en Inteligencia Artificial', 80),
    (3, 'Estudio de Sostenibilidad Ambiental', 60),
    (4, 'Proyecto de Energías Renovables', 120),
    (5, 'Diseño de Redes de Comunicación', 90),
    (6, 'Investigación Médica Avanzada', 70),
    (7, 'Desarrollo de Aplicaciones Móviles', 100),
    (8, 'Análisis de Datos Climáticos', 110),
    (9, 'Proyecto de Robótica', 75),
    (10, 'Investigación en Biología Molecular', 95),
    (11, 'Desarrollo de Sistemas Autónomos', 85),
    (12, 'Proyecto de Ciencias del Espacio', 130),
    (13, 'Investigación en Neurociencia', 55),
    (14, 'Desarrollo de Tecnologías Educativas', 105),
    (15, 'Proyecto de Realidad Virtual', 65);

-- Insertar datos en la tabla ASIGNADO_A referenciando el ID de la tabla PROYECTO
INSERT INTO ASIGNADO_A (Cientifico, Proyecto)
VALUES
    ('111111111A', 1),  -- 'Desarrollo de Software'
    ('222222222B', 1),  -- 'Desarrollo de Software'
    ('333333333C', 2),  -- 'Investigación en Inteligencia Artificial'
    ('444444444D', 4),  -- 'Proyecto de Energías Renovables'
    ('555555555E', 5),  -- 'Diseño de Redes de Comunicación'
    ('666666666F', 6),  -- 'Investigación Médica Avanzada'
    ('777777777G', 7),  -- 'Desarrollo de Aplicaciones Móviles'
    ('888888888H', 8),  -- 'Análisis de Datos Climáticos'
    ('999999999I', 9),  -- 'Proyecto de Robótica'
    ('123456789J', 10), -- 'Investigación en Biología Molecular'
    ('111111111A', 11), -- 'Proyecto de Ciencias del Espacio'
    ('222222222B', 12), -- 'Investigación en Neurociencia'
    ('333333333C', 13), -- 'Desarrollo de Tecnologías Educativas'
    ('444444444D', 14), -- 'Proyecto de Realidad Virtual'
    ('555555555E', 3),  -- 'Estudio de Sostenibilidad Ambiental'
    ('666666666F', 15);


