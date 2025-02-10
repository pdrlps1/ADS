create database fornecimento;
use fornecimento;

CREATE TABLE FORNECEDOR (
    cod_forn INT PRIMARY KEY,
    nom_forn VARCHAR(20) NOT NULL,
    sta_forn CHAR(1) NOT NULL,
    qtd_peca INT,
    des_cidade_forn VARCHAR(20)
);

CREATE TABLE PROJETO (
    cod_proj INT PRIMARY KEY,
    nom_proj VARCHAR(20) NOT NULL,
    des_cidade_proj VARCHAR(20)
);

CREATE TABLE PECA (
    cod_peca INT PRIMARY KEY,
    des_peca VARCHAR(20) NOT NULL,
    des_cor_peca VARCHAR(20),
    qtd_peso_peca INT,
    des_cidade_peca VARCHAR(20)
);

CREATE TABLE FORNECIMENTO (
    cod_fornec INT PRIMARY KEY,
    cod_forn INT NOT NULL,
    cod_peca INT NOT NULL,
    cod_proj INT NOT NULL,
    qtd_fornec INT,
    FOREIGN KEY (cod_forn) REFERENCES FORNECEDOR(cod_forn),
    FOREIGN KEY (cod_peca) REFERENCES PECA(cod_peca),
    FOREIGN KEY (cod_proj) REFERENCES PROJETO(cod_proj)
);

INSERT INTO FORNECEDOR (cod_forn, nom_forn, sta_forn, qtd_peca, des_cidade_forn) VALUES
(1, 'Smith', 'A', 20, 'Londres'),
(2, 'Jones', 'A', 10, 'Paris'),
(3, 'Blake', 'A', 30, 'Paris'),
(4, 'Clark', 'A', 30, 'Londres'),
(5, 'Adams', 'A', 40, 'Atenas');

INSERT INTO PECA (cod_peca, des_peca, des_cor_peca, qtd_peso_peca, des_cidade_peca) VALUES
(1, 'Nut', 'Red', 12, 'Londres'),
(2, 'Bolt', 'Green', 17, 'Paris'),
(3, 'Screw', 'Blue', 14, 'Paris'),
(4, 'Screw', 'Red', 14, 'Londres'),
(5, 'Cam', 'Red', 12, 'Paris'),
(6, 'Cog', 'Red', 19, 'Londres');

INSERT INTO PROJETO (cod_proj, nom_proj, des_cidade_proj) VALUES
(1, 'Sorter', 'Paris'),
(2, 'Punch', 'Romas'),
(3, 'Reader', 'Atenas'),
(4, 'Console', 'Atenas'),
(5, 'Collator', 'Londres'),
(6, 'Terminal', 'Oslo'),
(7, 'Tape', 'Londres');

INSERT INTO FORNECIMENTO (cod_fornec, cod_forn, cod_peca, cod_proj, qtd_fornec) VALUES
(1, 1, 1, 1, 200),
(2, 1, 1, 4, 700),
(3, 2, 2, 4, 400),
(4, 2, 2, 5, 200),
(5, 2, 5, 1, 100),
(6, 2, 5, 5, 600),
(7, 3, 2, 2, 400),
(8, 3, 2, 6, 800),
(9, 3, 4, 6, 400),
(10, 4, 2, 2, 500),
(11, 4, 4, 2, 200),
(12, 4, 4, 6, 300),
(13, 4, 5, 2, 500),
(14, 4, 5, 6, 100),
(15, 5, 4, 2, 500),
(16, 5, 4, 4, 200),
(17, 5, 4, 6, 1200),
(18, 5, 5, 4, 100),
(19, 5, 5, 5, 400),
(20, 5, 5, 6, 500),
(21, 5, 6, 2, 200),
(22, 5, 6, 3, 300),
(23, 5, 6, 5, 400),
(24, 5, 6, 6, 500);

/*Obtenha o nome do projeto, o nome da peça e a cor em que o 
fornecedor Jones está engajado ordenado pelo nome do projeto*/

select proj.nom_proj, peca.des_peca, peca.des_cor_peca
from fornecimento forn
inner join  projeto proj on proj.cod_proj = forn.cod_proj
inner join peca peca on peca.cod_peca = forn.cod_peca
inner join fornecedor fornec on fornec.cod_forn = forn.cod_forn
where fornec.nom_forn = "Jones"
order by proj.nom_proj;

/*Obtenha de forma distinta o nome dor fornecedor que trabalha com a 
peça que esteja com o peso entre 10 e 15.*/

select distinct forn.nom_forn
from fornecimento fornec
inner join peca peca on peca.cod_peca = fornec.cod_peca
inner join fornecedor forn on forn.cod_forn = fornec.cod_forn
where peca.qtd_peso_peca between 10 and 15;

/*Obtenha de forma distinta o nome da peça que tenha o peso da peça 
entre 10 e 20 e a cor seja Blue e Red.*/

select peca.des_peca
from peca
where peca.qtd_peso_peca between 10 and 20
and peca.des_cor_peca in ('Blue', 'Red')
group by peca.des_peca
having count(peca.des_cor_peca) = 2;

/*Exiba a quantidade total de fornecimento com o alias Total_Fornec 
fornecidas pelo fornecedor Smith do projeto Sorter. */

select COUNT(fornec.cod_fornec) as Total_fornec
from fornecimento fornec
inner join projeto proj on proj.cod_proj = fornec.cod_proj
inner join fornecedor forn on forn.cod_forn = fornec.cod_forn
where proj.nom_proj = "Sorter"
and forn.nom_forn = "Smith";

/*Exiba a média de peso com o alias Media_Peso de todas as peças de 
todos os projetos exceto do projeto Console e Tape e a quantidade de 
fornecimento maior que 100.*/

SELECT AVG(peca.qtd_peso_peca) AS Media_Peso
FROM peca
INNER JOIN fornecimento fornec ON fornec.cod_peca = peca.cod_peca
INNER JOIN projeto proj ON fornec.cod_proj = proj.cod_proj
WHERE proj.nom_proj NOT IN ('Console', 'Tape')
  AND fornec.qtd_fornec > 100;
  
SELECT MAX(fornec.qtd_fornec) AS Max_Quantidade_Fornecimento
FROM fornecimento fornec
INNER JOIN projeto proj ON fornec.cod_proj = proj.cod_proj
WHERE proj.nom_proj = 'Punch';

SELECT COUNT(*) AS Numero_De_Registros
FROM fornecimento;

SELECT *
FROM peca
WHERE qtd_peso_peca > 15;

SELECT des_peca, des_cor_peca
FROM peca
WHERE qtd_peso_peca = (SELECT MAX(qtd_peso_peca) FROM peca);

UPDATE fornecedor
SET sta_forn = 'D'
WHERE cod_forn = 4;

SELECT DISTINCT proj.nom_proj, proj.des_cidade_proj
FROM fornecimento fornec
INNER JOIN projeto proj ON proj.cod_proj = fornec.cod_proj
INNER JOIN fornecedor forn ON forn.cod_forn = fornec.cod_forn
WHERE forn.sta_forn = 'D';

SELECT forn.nom_forn,
       peca.des_peca,
       peca.des_cor_peca,
       peca.qtd_peso_peca,
       proj.nom_proj
FROM fornecimento fornec
INNER JOIN fornecedor forn ON fornec.cod_forn = forn.cod_forn
INNER JOIN peca peca ON fornec.cod_peca = peca.cod_peca
INNER JOIN projeto proj ON fornec.cod_proj = proj.cod_proj
WHERE forn.des_cidade_forn = 'Londres'
  AND peca.des_cidade_peca = 'Londres'
  AND proj.des_cidade_proj = 'Londres';
  
  SELECT proj.nom_proj,
       proj.des_cidade_proj
FROM fornecimento fornec
INNER JOIN fornecedor forn ON fornec.cod_forn = forn.cod_forn
INNER JOIN peca peca ON fornec.cod_peca = peca.cod_peca
INNER JOIN projeto proj ON fornec.cod_proj = proj.cod_proj
WHERE forn.sta_forn = 'A'
  AND peca.des_cor_peca = 'Red'
GROUP BY proj.nom_proj, proj.des_cidade_proj;
