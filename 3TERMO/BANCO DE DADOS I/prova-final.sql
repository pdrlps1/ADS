-- Parte da Construção
-- 1) Monte o Script de comando que cria o Banco de Dados de Nome CLINICAVETER.
CREATE DATABASE CLINICAVETER;
USE CLINICAVETER;

-- 2) Monte o Script de comando que cria as tabelas.
CREATE TABLE PROPRIETARIO (
    cod_pro INT PRIMARY KEY,
    nom_pro VARCHAR(100) NOT NULL,
    des_end_pro VARCHAR(400),
    num_tel_pro CHAR(15)
);

CREATE TABLE VETERINARIO (
    cod_vet INT PRIMARY KEY,
    nom_vet VARCHAR(100) NOT NULL,
    des_espec_vet VARCHAR(40)
);

CREATE TABLE ANIMAL (
    cod_anim INT PRIMARY KEY,
    cod_pro INT NOT NULL,
    cod_vet INT NOT NULL,
    nom_anim VARCHAR(100) NOT NULL,
    dat_nasc_anim DATE,
    des_raca_anim VARCHAR(20),
    des_sexo_anim CHAR(1),
    FOREIGN KEY (cod_pro) REFERENCES PROPRIETARIO(cod_pro),
    FOREIGN KEY (cod_vet) REFERENCES VETERINARIO(cod_vet)
);

-- 3) Monte o Script de comando que insere os registros nas tabelas.
INSERT INTO PROPRIETARIO (cod_pro, nom_pro, des_end_pro, num_tel_pro)
VALUES
(1, 'Sebastian Vettel', 'Av. Paulista, 1200', '(11) 98866-9988'),
(2, 'Fausto Silva', 'Av. Brasil, 350', '(21) 3456-8634'),
(3, 'Fernando Alonso', 'Al. Santos, 126', '(11) 98789-9988'),
(4, 'Hanna Prater', 'Av. Ibirapuera, 300', '(11) 98723-9274'),
(5, 'Violeta Mimosa', 'Av. 9 de Julho, 234', '(16) 99988-7766');

INSERT INTO VETERINARIO (cod_vet, nom_vet, des_espec_vet)
VALUES
(1, 'Max Verstappen', 'Geral'),
(2, 'Pedro Perez', 'Geral'),
(3, 'Renata Vasconcelos', 'Ortopedia'),
(4, 'Marco Diniz', 'Nutrição');

INSERT INTO ANIMAL (cod_anim, cod_pro, cod_vet, nom_anim, dat_nasc_anim, des_raca_anim, des_sexo_anim)
VALUES
(1, 3, 1, 'Kaka', '2011-10-10', 'Poodle', 'F'),
(2, 1, 2, 'Croca', '2012-12-25', 'Collie', 'F'),
(3, 2, 1, 'Furacão', '2013-01-23', 'Pit Bull', 'M'),
(4, 5, 1, 'Ploc', '2014-04-30', 'Fox', 'M'),
(5, 4, 3, 'Tigra', '2010-09-27', 'Pastor Alemão', 'M');

-- Parte da Consulta
-- 1) Mostrar todos os dados dos animais que a Veterinária Renata Vasconcelos atende. Colocar Alias nos atributos para a exibição
select
a.cod_anim as codigo_animal,
a.cod_pro as codigo_proprietario,
a.cod_vet as codigo_veterinario,
a.nom_anim as nome_animal,
a.dat_nasc_anim as data_nascimento_animal,
a.des_raca_anim as raca_animal,
a.des_sexo_anim as sexo_animal
from animal a
inner join veterinario v on v.cod_vet = a.cod_vet
where v.nom_vet = 'Renata Vasconcelos';

-- 2) Mostrar o nome do Veterinário e do Proprietário do Animal Croca.
select v.nom_vet, p.nom_pro, a.nom_anim
from animal a
inner join proprietario p on p.cod_pro = a.cod_pro
inner join veterinario v on v.cod_vet = a.cod_vet
where a.nom_anim = 'Croca';

/*3) Mostrar o nome, a raça e o sexo do Animal e o nome do Proprietário tratado pelo
Max Verstappen. Coloque em ordem de nascimento*/
select a.nom_anim, a.des_raca_anim, a.des_sexo_anim, p.nom_pro
from animal a
inner join proprietario p on p.cod_pro = a.cod_pro
inner join veterinario v on v.cod_vet = a.cod_vet
where v.nom_vet = 'Max Verstappen';

-- Parte da Alteração de Estrutura
-- 1) Renomear a Tabela ANIMAL para ANIMAL_GERAL
rename table animal to animal_geral;

-- 2) Adicionar a coluna dat_cad_vet com tipo de dados datetime na Tabela VETERINARIO.
alter table veterinario
add dat_cad_vet datetime;

-- 3) Alterar a largura da coluna nom_anim para varchar (40).
alter table animal_geral
modify nom_anim varchar(40);

-- 4) Alterar o nome da coluna des_end_pro para des_endere_pro.
alter table proprietario
change des_end_pro des_endere_pro varchar(400);

-- Parte da Atualização de Registro
-- 1) Altere a especialidade do veterinário Pedro Perez para Ortopedia.
update veterinario
set des_espec_vet = 'Ortopedia'
where nom_vet = 'Pedro Perez';

-- 2) Altere a data de nascimento do animal de nome Furacão para 25/01/2013.
update animal_geral
set dat_nasc_anim = '2013-01-25'
where nom_anim = 'Furacão';

-- 3) Exclua o animal de raça Pastor Alemão.
delete from animal_geral
where des_raca_anim = 'Pastor Alemão';