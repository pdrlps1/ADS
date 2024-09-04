CREATE DATABASE AULA;
USE AULA;

CREATE TABLE FORNECEDOR
(
cod_forn int PRIMARY KEY,
nom_forn varchar(10),
sta_forn int,
qtd_peca int,
des_cidade_forn varchar(80)
);

DROP TABLE FORNECEDOR;

CREATE TABLE FORNECEDOR
(
cod_forn int PRIMARY KEY,
nom_forn varchar(10),
sta_forn int,
qtd_peca int,
des_cidade_forn varchar(80)
);

ALTER TABLE FORNECEDOR
ADD COLUMN dat_cadastro_fornecedor datetime;

ALTER TABLE FORNECEDOR 
ADD COLUMN val_peca_forn float,
MODIFY des_cidade_forn varchar(40),
MODIFY sta_forn char(2),
CHANGE dat_cadastro_fornecedor dat_cadast_forn datetime;

ALTER TABLE FORNECEDOR
DROP val_peca_forn;

RENAME TABLE fornecedor TO FORNECEDOR_TOTAL;

CREATE TABLE FORNECEDOR_PARCIAL
(
cod_forn int,
nom_forn varchar(10),
qtd_peca int
)
AS SELECT cod_forn, nom_forn, qtd_peca FROM FORNECEDOR_TOTAL;

ALTER TABLE FORNECEDOR_PARCIAL
MODIFY cod_forn int PRIMARY KEY;




