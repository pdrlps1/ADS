create database ensino;
use ensino;

CREATE TABLE PROFESSOR (
    cod_prof INT PRIMARY KEY,
    nom_prof VARCHAR(45),
    des_titul VARCHAR(20),
    des_idade INT
);

CREATE TABLE CURSO (
    cod_curso INT PRIMARY KEY,
    nom_curso VARCHAR(45),
    des_area VARCHAR(20)
);

CREATE TABLE DISCIPLINA (
    cod_disc INT PRIMARY KEY,
    cod_prof INT,
    cod_curso INT,
    nom_disc VARCHAR(40),
    max_aluno INT,
    min_aluno INT,
    FOREIGN KEY (cod_prof) REFERENCES PROFESSOR(cod_prof),
    FOREIGN KEY (cod_curso) REFERENCES CURSO(cod_curso)
);

-- Inserindo dados na tabela PROFESSOR
INSERT INTO PROFESSOR (cod_prof, nom_prof, des_titul, des_idade) VALUES
(1, 'Evelyn', 'Mestre', 25),
(2, 'Juliana', 'Doutor', 35);

-- Inserindo dados na tabela CURSO
INSERT INTO CURSO (cod_curso, nom_curso, des_area) VALUES
(1, 'Computação', 'Exatas'),
(2, 'Administração', 'Humanas');

-- Inserindo dados na tabela DISCIPLINA
INSERT INTO DISCIPLINA (cod_disc, cod_prof, cod_curso, nom_disc, max_aluno, min_aluno) VALUES
(1, 1, 1, 'Banco de Dados', 35, 30),
(2, 1, 1, 'Programação Estruturada', 35, 30),
(3, 2, 1, 'Metodologia Científica', 70, 50),
(4, 2, 2, 'Métodos de pesquisa', 70, 50),
(5, 1, 1, 'Análise de Sistemas', 35, 25);

select count(disc.cod_disc), cur.nom_curso
from disciplina disc
inner join curso cur
on disc.cod_curso = cur.cod_curso
group by cur.nom_curso;

select count(disc.cod_disc), prof.nom_prof
from disciplina disc
inner join professor prof
on disc.cod_prof = prof.cod_prof
group by prof.nom_prof;

select disc.nom_disc, prof.nom_prof, disc.max_aluno, disc.min_aluno
from disciplina disc
inner join professor prof on disc.cod_prof = prof.cod_prof
where disc.nom_disc = "Banco de Dados"
order by prof.nom_prof;

select prof.nom_prof, count(disc.cod_disc)
from disciplina disc
inner join professor prof on disc.cod_prof = prof.cod_prof
group by prof.nom_prof
having count(disc.cod_disc) > 2;

select sum(disc.max_aluno)
from disciplina disc;

SELECT cur.nom_curso, disc.nom_disc, prof.nom_prof
FROM disciplina disc
INNER JOIN curso cur ON disc.cod_curso = cur.cod_curso
INNER JOIN professor prof ON disc.cod_prof = prof.cod_prof
ORDER BY cur.nom_curso, disc.nom_disc;

select avg(prof.des_idade)
from professor prof;