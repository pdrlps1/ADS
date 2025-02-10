create database EMPRESA;
use EMPRESA;

create table DEPARTAMENTO
(
cod_depto int primary key,
nom_depto varchar(80)
);
create table FUNCAO
(
cod_fun int primary key,
des_fun varchar(80)
);
create table EMPREGADO
(
cod_emp int primary key,
cod_depto int,
cod_fun int,
nom_emp varchar (80),
dat_adm_emp date,
sal_fixo decimal(10,2),
foreign key (cod_depto) references DEPARTAMENTO (cod_depto),
foreign key (cod_fun) references FUNCAO (cod_fun)
);
insert into departamento values
(1,'Engenharia'),
(2,'Marketing'),
(3,'Finanças'),
(4,'Diretoria');
insert into FUNCAO values
(1,'Engenheiro'),
(2,'Analista'),
(3,'Secretária'),
(4,'Diretor');
insert into EMPREGADO values
(1,1,1,'João Gonzo','2000/10/01', '10000.00'),
(2,1,1,'Maria Silva','1998/03/01', '5600.00'),
(3,1,2,'Carlos Inácio','1999/06/06', '7200.00'),
(4,4,3,'Cris Vaz','1997/02/23', '2700.00'),
(5,2,1,'Pedro Luz','2003/11/25', '4300.00'),
(6,4,4,'Peter Chen','2005/02/23', '18900.00'),
(7,3,2,'Paulo César','2002/05/17', '6450.00'),
(8,4,3,'Carol Vaz','1996/10/11', '2750.00'),
(9,3,3,'Claudia Silva','2000/12/12', '6950.00'),
(10, 2,4,'Luiz Souza','1997/01/01', '8600.00');

select emp.nom_emp, emp.dat_adm_emp
from empregado emp
order by emp.dat_adm_emp desc
limit 1;

select emp.nom_emp, emp.sal_fixo
from empregado emp
where emp.sal_fixo > (select avg(emp.sal_fixo) from empregado emp)
order by emp.sal_fixo;

select emp.nom_emp, emp.cod_emp, dep.nom_depto
from empregado emp
inner join departamento dep
on emp.cod_depto = dep.cod_depto;

select emp.nom_emp
from empregado emp
inner join departamento dep
on emp.cod_depto = dep.cod_depto
where dep.nom_depto = "Diretoria";

select emp.nom_emp, dep.nom_depto
from empregado emp
inner join departamento dep
on emp.cod_depto = dep.cod_depto
where dep.nom_depto = "Engenharia" and emp.dat_adm_emp >= "1999-01-01";

select emp.nom_emp, dep.nom_depto, fun.des_fun
from empregado emp
inner join departamento dep
on emp.cod_depto = dep.cod_depto
inner join funcao fun
on emp.cod_fun = fun.cod_fun
where dep.nom_depto = "Engenharia"
and emp.dat_adm_emp >= "1999-01-01"
and fun.des_fun = "Analista";

select dep.nom_depto, count(emp.cod_fun) as conta_secretaria
from empregado emp
inner join departamento dep
on emp.cod_depto = dep.cod_depto
inner join funcao fun
on emp.cod_fun = fun.cod_fun
where dep.nom_depto = "Diretoria"
and fun.des_fun = "Secretária";

select emp.nom_emp
from empregado emp
inner join departamento dep
on emp.cod_depto = dep.cod_depto
inner join funcao fun
on emp.cod_fun = fun.cod_fun
where dep.nom_depto = "Diretoria"
and fun.des_fun = "Secretária"
order by emp.nom_emp asc;

SELECT emp.nom_emp, emp.sal_fixo, dep.nom_depto
FROM empregado emp
INNER JOIN departamento dep ON emp.cod_depto = dep.cod_depto
WHERE (dep.nom_depto = "Engenharia" OR dep.nom_depto = "Finanças")
AND emp.sal_fixo < (SELECT AVG(sal_fixo) FROM empregado)
ORDER BY emp.sal_fixo DESC;

SELECT emp.nom_emp, emp.sal_fixo, dep.nom_depto, fun.des_fun
FROM empregado emp
INNER JOIN departamento dep ON emp.cod_depto = dep.cod_depto
INNER JOIN funcao fun ON emp.cod_fun = fun.cod_fun
WHERE (dep.nom_depto = "Engenharia" OR dep.nom_depto = "Finanças")
AND fun.des_fun = "Analista"
AND emp.sal_fixo < (SELECT MAX(emp.sal_fixo) FROM empregado emp)
ORDER BY emp.sal_fixo DESC;

SELECT emp.nom_emp, emp.sal_fixo, dep.nom_depto, fun.des_fun
FROM empregado emp
INNER JOIN departamento dep ON emp.cod_depto = dep.cod_depto
INNER JOIN funcao fun ON emp.cod_fun = fun.cod_fun
WHERE (dep.nom_depto = 'Engenharia' OR dep.nom_depto = 'Finanças')
AND fun.des_fun = 'Analista'
AND emp.sal_fixo < (SELECT MAX(emp2.sal_fixo) 
                    FROM empregado emp2
                    INNER JOIN funcao fun2 ON emp2.cod_fun = fun2.cod_fun
                    WHERE fun2.des_fun = 'Secretária')
ORDER BY emp.sal_fixo DESC;

