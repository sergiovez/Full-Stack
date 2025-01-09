CREATE TABLE DIRECTORES (
    DNI VARCHAR(20) PRIMARY KEY,
    NombreCompleto VARCHAR(100),
    DNIJefe VARCHAR(20),
    Despacho INT
);

-- Insertar datos en la tabla DIRECTORES
INSERT INTO DIRECTORES (DNI, NombreCompleto, DNIJefe, Despacho)
VALUES
    ('367294748A', 'Juan Pérez', '987654321B', 101),
    ('802397572B', 'María Rodríguez', '3468754352D', 102),
    ('893458019C', 'Carlos González', '987654321B', 103),
    ('798345173D', 'Laura Sánchez', '3468754352D', 104),
    ('905248723E', 'Pedro López', '123456789A', 105),
    ('172654930F', 'Ana Martínez', '3468754352D', 101),
    ('648289126G', 'Roberto García', '987654321B', 102),
    ('729384816H', 'Elena Ruiz', '123456789A', 103),
    ('434576535I', 'Javier Jiménez', '987654321B', 104),
    ('278338457J', 'Sara Hernández', '3468754352D', 104),
    ('209374584H', 'Luisa Torres', '987654321B', 103),
    ('730945784Y', 'Miguel Fernández', '123456789A', 101),
    ('430947374R', 'Carmen Castro', '555555555C', 105),
    ('927437547T', 'Antonio Ramírez', '123456789A', 102),
    ('623840432B', 'Isabel Díaz', '555555555C', 102);
    
    
    -- Crear la tabla DESPACHOS
CREATE TABLE DESPACHOS (
    Codigo INT PRIMARY KEY,
    Capacidad INT
);

INSERT INTO DESPACHOS (Codigo, Capacidad)
VALUES
    (101, 3),
    (102, 4),
    (103, 2),
    (104, 3),
    (105, 4),
    (106, 2);



    
    
