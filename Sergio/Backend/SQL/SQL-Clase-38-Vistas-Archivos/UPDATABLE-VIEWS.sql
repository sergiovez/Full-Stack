/* UPDATABLES VIEWS */
/*
	Permiten insertar, actualizar y borrar datos en las tablas que hay bajo la vista
    
    No podemos tener:
    - funciones de agregacion Min, Max ect
    - Group by
    - distinct
    - uniones
    - left join 
    - subconsultas
*/

create table tabla_vista
(codigo int primary key,
nombre varchar(100) not null);

create or replace view vista as select * from tabla_vista;

select * from vista;
select * from tabla_vista;

-- Inserción a través de la tabla
insert into tabla_vista values (1, 'paco');
insert into tabla_vista values (2, 'maria');

-- Inserción a través de la vista
insert into vista values(3, 'laura');

-- Borrar a través de la vista
delete from vista where codigo = 3;

-- Modificar a través de la vista
update vista set nombre="CONQUER" WHERE codigo = 1;

-- VISTAS NO UPDATABLES
-- No tengo suficientes columnas definidas

create or replace view vista1 as
select nombre from tabla_vista;

select * from vista1;

insert into vista1 values("alberto");


create or replace view vista2
as select nombre, count(*) from tabla_vista
group by nombre;

select * from vista2;

insert into vista2 values('raul', 20);





