use library;

create table estudiante(
Num_id int,
nombre varchar(30) not null,
apellidos varchar(30) not null,
direccion varchar(20) not null,
primary key (Num_id));

INSERT INTO estudiante(Num_id,nombre,apellidos,direccion)VALUES(101,'victor','lopez fajardo','Cll5N #15e-60');
INSERT INTO estudiante(Num_id,nombre,apellidos,direccion)VALUES(102,'tatiana','viloria fajardo','Cll17 #12-20');
INSERT INTO estudiante(Num_id,nombre,apellidos,direccion)VALUES(103,'isabel','fajardo ariza','Cll17 #12-20');
INSERT INTO estudiante(Num_id,nombre,apellidos,direccion)VALUES(104,'aura','daza rodrigez','Cll5N #15e-60');
INSERT INTO estudiante(Num_id,nombre,apellidos,direccion)VALUES(105,'edilma','ariza vargas','Cll8 #20-60');

UPDATE estudiante set nombre = 'tatiana' where Num_id = 102;
SELECT * from estudiante where Num_id = 105;
SELECT * from estudiante;


create table libro(
ISBN int,
titulo varchar(30),
editorial varchar(30),
autor varchar(30),
primary key (ISBN));

INSERT INTO libro(ISBN,titulo,editorial,autor)VALUES(1001,'El gato sinverguenza','Babel','Esquizofrenico');
INSERT INTO libro(ISBN,titulo,editorial,autor)VALUES(1002,'Crepusculo abierto','Calixta','Claudia la desubicada');
INSERT INTO libro(ISBN,titulo,editorial,autor)VALUES(1003,'Las cronicas del Carpatia','Babel','Charles Xavier ');
INSERT INTO libro(ISBN,titulo,editorial,autor)VALUES(1004,'Biografia de un drogadicto','Calixta','Sergio el distribuidor');
INSERT INTO libro(ISBN,titulo,editorial,autor)VALUES(1005,'El hobit','Atenea','Johana Tenerife');

select * from libro where ISBN = 1004;



create table prestamo(
id_prestamo int,
Num_id int,
ISBN int,
fecha_prestamo varchar(20),
primary key (id_prestamo));
Alter table prestamo add foreign key(Num_id) references estudiante (Num_id);
Alter table prestamo add foreign key(ISBN) references libro (ISBN);

INSERT INTO prestamo(id_prestamo,Num_id,ISBN,fecha_prestamo)VALUES(111,102,1005,'12-03-2019');
INSERT INTO prestamo(id_prestamo,Num_id,ISBN,fecha_prestamo)VALUES(112,104,1003,'13-03-2019');
INSERT INTO prestamo(id_prestamo,Num_id,ISBN,fecha_prestamo)VALUES(113,105,1004,'14-03-2019');
INSERT INTO prestamo(id_prestamo,Num_id,ISBN,fecha_prestamo)VALUES(114,103,1005,'15-03-2019');
INSERT INTO prestamo(id_prestamo,Num_id,ISBN,fecha_prestamo)VALUES(115,101,1002,'16-03-2019');

DELETE from prestamo where id_prestamo = 115;
SELECT * from prestamo;





