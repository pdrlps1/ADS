create database contrato;
use contrato;

create table depto
(
	cod_depto integer primary key auto_increment,
    nom_depto varchar (80),
    val_orcam_depto decimal (10,2),
    des_local_depto varchar (20)
);

create table empregado
(
	cod_emp integer primary key auto_increment,
    cod_depto integer,
    des_nom_emp varchar (80),
    des_idade_emp int,
    dat_adm_emp date,
    des_cargo varchar (20),
    val_salar_emp decimal(10,2),
    foreign key (cod_depto) references depto(cod_depto)
);

insert into depto (nom_depto, val_orcam_depto, des_local_depto)
values
("Engenharia", 1230000.00, "Prédio Engenharia"),
("Marketing", 1000000.00, "Prédio 1"),
("Finanças", 2000000.00, "Sala 2"),
("Diretoria", 2300000.00, "Mezanino");

insert into empregado (des_nom_emp, des_idade_emp,
dat_adm_emp, des_cargo, val_salar_emp, cod_depto)
values
("João Gonzo", 35, "2000-01-10", "Engenheiro", 3500.00, 1),
("Marita Silvita", 25, "1998-03-01", "Secretária", 1000.00, 1),
("Inácio Borboleta", 23, "1999-06-06","Engenheiro", 3000.00, 1),
("Crisóstema Vazia", 34, "1997-02-23","Copeira",500.00,4),
("Saturnino Ponte", 44,"2003-11-25","Continuo",2700.00,2),
("Vera Lama",18,"2005-02-23","Presidente",50000.00,4),
("Justiniano Limoeiro",45,"2002-05-17","Contador",3000.00,3),
("Josefina Varsóvia",31,"1996-10-11","Secretária",1200.00,4),
("Lepeka Tossi",26,"2000-12-12","Secretária",1100.00,3),
("Pacífico Gerra",31,"1997-01-01","Vendedor",2500.00,2);

update empregado
set des_cargo = "Engenheiro Mestre"
where des_nom_emp = "João Gonzo";

update empregado
set val_salar_emp = 3200.00
where des_idade_emp >= 40;

update empregado
set val_salar_emp = 2300.00
where des_cargo = "Copeira";

update empregado
set des_nom_emp = "João Gonzzo"
where des_nom_emp = "João Gonzo";

update empregado
set des_idade_emp = 37
where des_nom_emp = "João Gonzzo";

update depto
set val_orcam_depto = 2500000.00
where val_orcam_depto >= 2000000.00;

update empregado
set val_salar_emp = 2100.00
where dat_adm_emp = "2000-12-12";

update depto
set des_local_depto = "Prédio Central"
where nom_depto = "Diretoria";

update empregado
set des_idade_emp = 27
where dat_adm_emp = "2000-12-12";

alter table empregado
change des_cargo des_cargo_emp varchar (20);

alter table empregado
modify des_nom_emp varchar(60);