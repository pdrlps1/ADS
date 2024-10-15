create database biblioteca;
use biblioteca;

create table autor
(
	cod_autor integer primary key,
    nom_autor varchar(100)
);

create table livro
(
	cod_livro integer primary key,
    des_titulo_livro varchar(100),
    des_resumo_livro varchar(4000),
    num_pagina_livro integer,
    des_area_livro varchar(80),
    num_isbn_livro varchar(20),
    nom_editor varchar(80),
    des_ano_livro varchar(4),
    dat_cadast_livro date,
    sta_ativa_livro char(1)
);

	create table rel_autor_livro
	(
		cod_rel_autor_livro integer primary key,
        cod_autor int,
        cod_livro int,
		foreign key (cod_autor) references autor(cod_autor),
		foreign key (cod_livro) references livro(cod_livro)
	);
    
    create table exemplar
    (
		cod_exempl int primary key,
        cod_livro int,
        num_exempl int,
        foreign key (cod_livro) references livro(cod_livro)
    );
    
    create table usuario
    (
		cod_usu int primary key,
        nom_usu varchar(100),
        des_cpf_usu varchar(11),
        dat_nascim_usu date,
        des_email_usu varchar(80),
        dat_cadast_usu date,
        sta_ativa_usu char(1)
    );
    
    create table emprestimo
    (
		cod_empres int primary key,
        cod_usu int,
        cod_exempl int,
        dat_emp_livro date,
        dat_devol_livro date,
        des_ocorre_empres varchar(4000),
        foreign key(cod_usu) references usuario(cod_usu),
        foreign key(cod_exempl) references exemplar(cod_exempl)
    );
    
    create table endereco
    (
		cod_endere int primary key,
        cod_usu int,
        des_endere varchar(200),
        num_endere int,
        des_bairro varchar(80),
        des_cidade varchar(80),
        des_sigla_estado char(2),
        des_cod_cep varchar(10),
        foreign key (cod_usu) references usuario(cod_usu)
    );