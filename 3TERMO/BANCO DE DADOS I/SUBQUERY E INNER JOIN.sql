CREATE DATABASE CONTRATO;
CREATE TABLE DEPARTAMENTO
(
cod_depto int NOT NULL AUTO_INCREMENT Primary Key,
nom_depto varchar(20),
val_orcam_depto decimal(10.2),
des_local_depto varchar(20)
);
CREATE TABLE FUNCAO
(
cod_fun int NOT NULL AUTO_INCREMENT Primary Key,
des_fun varchar(20)
);
CREATE TABLE EMPREGADO
(
cod_emp int NOT NULL AUTO_INCREMENT Primary Key,
cod_depto int,
cod_fun int,
des_nom_emp varchar(80),
des_idade_emp int,
dat_adm_emp date,
des_cargo varchar(20),
val_salar_emp decimal(10.2),
FOREIGN KEY (cod_depto) REFERENCES DEPARTAMENTO(cod_depto),
FOREIGN KEY (cod_fun) REFERENCES FUNCAO (cod_fun )
);
INSERT INTO DEPARTAMENTO
(nom_depto, val_orcam_depto, des_local_depto)
VALUES
('Engenharia','1230000.00','Prédio Engenharia'),
('Marketing','1000000.00','Prédio 1'),
('Finanças','2000000.00','Sala 2'),
('Diretoria','2300000.00','Mesanino');
INSERT INTO FUNCAO
(des_fun)
VALUES
('Engenheiro'),
('Analista'),
('Secretária'),
('Diretor');
INSERT INTO EMPREGADO
(cod_depto, cod_fun, des_nom_emp, des_idade_emp, dat_adm_emp,
des_cargo, val_salar_emp)
VALUES
(1, 1, 'João Gonzo', 35, '2000-10-01','Engenheiro','3500.00'),
(1, 1, 'Marita Silvita', 25, '1998-03-01','Secretária','1000.00'),
(1, 2, 'Inácio Borboleta', 23, '1999-06-06','Engenheiro','3000.00'),
(4, 3, 'Crisóstema Vazia', 34, '1997-02-23','Copeira','500.00'),
(2, 1, 'Saturnino Ponte', 44, '2003-11-23','Continuo','2700.00'),
(4, 4, 'Vera Lama', 18, '2005-02-23','Presidente','8500.00'),
(3, 2, 'Justiniano Limoeiro', 45, '2002-05-17','Contador','3000.00'),
(4, 3, 'Josefina Varsóvia', 31, '1996-10-11','Secretária','1200.00'),
(3, 3, 'Lepeka Tossi', 26, '2000-12-12','Secretária','1100.00'),
(2, 4, 'Pacífico Gerra', 31, '1997-01-01','Vendedor','2500.00');

use contrato;

#EXEMPLO 1
select des_nom_emp, dat_adm_emp
from empregado where dat_adm_emp =
(select max(dat_adm_emp)
from empregado);

#EXEMPLO 2
select des_nom_emp, val_salar_emp
from EMPREGADO where val_salar_emp <(
select avg(val_salar_emp)
from empregado);

# EXEMPLO 1
select emp.des_nom_emp, emp.cod_emp, dep.nom_depto
from empregado emp
inner join departamento dep
on emp.cod_depto = dep.cod_depto;

# EXEMPLO 2
select emp.des_nom_emp
from empregado emp
inner join departamento dep
on emp.cod_depto = dep.cod_depto
where dep.nom_depto = "Diretoria";

#EXEMPLO 3
select emp.des_nom_emp, dep.nom_depto
from empregado emp
inner join departamento dep
on emp.cod_depto = dep.cod_depto
where dep.nom_depto = "Engenharia" and dat_adm_emp > "1999-01-01";

