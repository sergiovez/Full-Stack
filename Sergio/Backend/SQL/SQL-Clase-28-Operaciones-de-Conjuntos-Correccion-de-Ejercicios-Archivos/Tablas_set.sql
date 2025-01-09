CREATE SCHEMA OP_CONJUNTOS;
USE OP_CONJUNTOS;

create table T1 (
	c1 VARCHAR(50),
	c2 VARCHAR(1)
);
insert into T1 (c1, c2) values (1, 'a');
insert into T1 (c1, c2) values (1, 'b');
insert into T1 (c1, c2) values (1, 'c');
insert into T1 (c1, c2) values (2, 'd');


create table T2 (
	c1 VARCHAR(50),
	c2 VARCHAR(1)
);
insert into T2 (c1, c2) values (1, 'a');
insert into T2 (c1, c2) values (2, 'a');
insert into T2 (c1, c2) values (2, 'c');
insert into T2 (c1, c2) values (2, 'd');

