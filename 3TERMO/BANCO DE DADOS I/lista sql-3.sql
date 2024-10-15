create database FORNEC;
use FORNEC;

CREATE TABLE FORNECEDOR
(
	cod_forn int primary key auto_increment,
	nom_forn varchar (10),
    sta_forn int,
    qtd_peca int,
    des_cidade_forn varchar(80)
);

insert into FORNECEDOR (nom_forn, sta_forn, qtd_peca, des_cidade_forn)
values
("Smith", 20, 2000, "Londres"),
("Jones", 10, 1000, "Paris"),
("Blake", 30, 3000, "Paris"),
("Clark", 20, 2500, "Londres"),
("Adams", 30, 1000, "Atenas"),
("Ivete", 40, 1000, "Nova York"),
("Mariana", 70, 2500, "Tóquio"),
("Zita", 50, 1000, "São Paulo"),
("Anna", 60, 1500, "Paris"),
("Fausto", 40, 2000, "São Paulo");

select * from FORNECEDOR;

select nom_forn from FORNECEDOR
where des_cidade_forn = "Paris";

select * from FORNECEDOR
where qtd_peca >= 1000;

select nom_forn, sta_forn, qtd_peca from FORNECEDOR
where qtd_peca <= 1500;

select nom_forn, des_cidade_forn, qtd_peca from FORNECEDOR
where qtd_peca = 1000;

select nom_forn, sta_forn, des_cidade_forn from FORNECEDOR
where sta_forn < 30;

select nom_forn, sta_forn from FORNECEDOR
where qtd_peca <> 1000;

select * from FORNECEDOR
where des_cidade_forn <> "São Paulo";