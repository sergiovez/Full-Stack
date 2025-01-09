-- TRUNCATE
-- Se parece a DELETE => diferencia: DELETE es un comando transaccional
-- TRUCANTE - > primero borra la tabla entera, y despues la vuelve a crear

use DML;
select * from estudiantes;

truncate estudiantes;
rollback;