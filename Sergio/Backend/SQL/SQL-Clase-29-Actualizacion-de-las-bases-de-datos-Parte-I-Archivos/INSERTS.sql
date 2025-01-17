/*
		DATA MANIPULATION LANGUAGE (DML)
        
        - INSERCIONES, MODIFICACIONES Y BORRADOS
        - COMANDOS MÁS COMPLEJOS: REPLACE, MERGE
        - CONCEPTO DE TRANSACCIÓN - conjunto de operaciones que deben hacerse todas juntas
        - Comandos de transacciones

*/

/* INSERT -- INSERTAR FILAS

INSERT INTO TABLA (C1, C2) VALUES (V1, V2);
*/

INSERT INTO ESTUDIANTES (CODIGO, NOMBRE, EDAD, FECHA_MATRICULA) VALUES (1, 'JUAN', 23, '2024-01-25');
INSERT INTO ESTUDIANTES (CODIGO, NOMBRE, EDAD, FECHA_MATRICULA) VALUES (2, 'MARIA', 20, '2024-01-26');

-- Si se respeta el orden nativo de las columnas y se rellenan todos los datos, podemos ahorranos indicar el nombre de las columnas
INSERT INTO ESTUDIANTES VALUES (3, 'PACO', 30, '2024-01-30');

INSERT INTO ESTUDIANTES (NOMBRE, FECHA_MATRICULA, CODIGO, EDAD) VALUES ('PEDRO', '2024-01-11', 4, 26);

INSERT INTO ESTUDIANTES (CODIGO, NOMBRE, FECHA_MATRICULA) VALUES (5, 'ALEJANDRO', '2024-01-27');

-- INSERT INTO ESTUDIANTES (CODIGO, EDAD, FECHA_MATRICULA) VALUES (6, 35, '2024-01-27');

INSERT INTO ESTUDIANTES (CODIGO, NOMBRE, EDAD,FECHA_MATRICULA) VALUES (6, 'SERGIO', NULL ,'2024-01-31');


-- INSERTS MULTIPLES
INSERT INTO ESTUDIANTES (CODIGO, NOMBRE, EDAD,FECHA_MATRICULA) VALUES 
(7, 'ROSA', 24 ,'2024-01-12'),
(8, 'MARIA', 26 ,'2024-01-08'),
(9, 'LUIS', 30 ,'2024-01-03');

INSERT INTO ALUMNOS SELECT * FROM ESTUDIANTES WHERE EDAD IS NOT NULL;
SELECT * FROM ALUMNOS;








				

