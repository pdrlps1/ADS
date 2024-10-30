CREATE DATABASE PESSOA;
USE PESSOA;

CREATE TABLE PESSOA
(
id int NOT NULL AUTO_INCREMENT Primary Key,
nome varchar(20),
idade int,
sexo varchar(10),
uf char(2),
pais varchar(10)
);
INSERT INTO PESSOA (nome, idade, sexo, uf, pais)
VALUES
('Ana', 23,'Feminino', 'SP', 'BRASIL'),
('Eduardo', 57,'Masculino', 'MG', 'BRASIL'),
('Janice', 70,'Feminino', 'MS', 'BRASIL'),
('Teo', 22,'Masculino', 'RS', 'BRASIL'),
('Lucas', 18,'Masculino', 'RS', 'BRASIL'),
('Joana', 14,'Feminino', 'SP', 'BRASIL'),
('João', 18,'Masculino', 'RJ', 'BRASIL'),
('Claudia', 18 ,'Feminino', 'SP', 'BRASIL'),
('Iris', 69,'Feminino', 'BA', 'BRASIL'),
('Esther', 60,'Feminino', 'SP', 'BRASIL'),
('Yuri', 67,'Masculino', 'RJ', 'BRASIL'),
('Andressa', 36,'Feminino', 'SP', 'BRASIL'),
('Juliana', 36,'Feminino', 'SP', 'BRASIL'),
('Jean', 15,'Masculino', 'SP', 'BRASIL'),
('Claudio', 26,'Masculino', 'RJ', 'BRASIL'),
('Teresa', 39,'Feminino', 'RJ', 'BRASIL'),
('Tadeu', 22,'Masculino', 'RS', 'BRASIL'),
('Joaquim', 61,'Masculino', 'BA', 'BRASIL'),
('Alessandra', 58,'Feminino', 'RS', 'BRASIL'),
('Bruna', 48,'Feminino', 'MS', 'BRASIL'),
('Beatriz', 46 ,'Feminino', 'MG', 'BRASIL'),
('Cassandra', 21,'Feminino', 'BA', 'BRASIL'),
('Leandro', 34,'Masculino', 'MG', 'BRASIL'),
('Rubens', 55,'Masculino', 'RS', 'BRASIL'),
('Reginaldo', 27,'Masculino', 'RS', 'BRASIL');

select uf, COUNT(id)
from PESSOA
group by uf;

select uf
from pessoa;

select uf, min(idade), max(idade)
from pessoa
group by uf;

select uf, sexo, avg(idade) as media_idade, count(id) as total_pessoas
from pessoa
group by uf, sexo
order by uf;

select uf, count(id)
from pessoa
where sexo = 'Masculino'
group by uf
having count(id) >= 2;