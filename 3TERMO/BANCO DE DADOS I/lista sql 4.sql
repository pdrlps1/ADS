create database fornecedor;
use fornecedor;

create table fornecedor
(
	cod_forn int primary key auto_increment,
    nom_forn varchar(10),
    sta_forn int,
    qtd_peca int,
    des_cidade_forn varchar(80)
);

insert into fornecedor (nom_forn, sta_forn, qtd_peca, des_cidade_forn)
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

select * from fornecedor;

select nom_forn from fornecedor
where (des_cidade_forn = "Paris" or des_cidade_forn = "Londres");

select * from fornecedor
where (qtd_peca >= 1000)
and not (des_cidade_forn = "Londres");

select nom_forn, sta_forn, qtd_peca from fornecedor
where (qtd_peca = 1000 or sta_forn = 10);

select nom_forn, des_cidade_forn, qtd_peca from fornecedor
where (qtd_peca = 1000 or qtd_peca = 2500);

select nom_forn, sta_forn, des_cidade_forn from fornecedor
where (sta_forn < 30 and nom_forn = "Ivete" and des_cidade_forn = "Nova York");

select nom_forn, sta_forn from fornecedor
where (qtd_peca <> 1000)
and not (sta_forn = 10);

select * from fornecedor
where not (des_cidade_forn = "São Paulo" or sta_forn = 60)
and (qtd_peca > 900);