use biblioteca;

insert into usuario
	values (1,'Amélia Jordánis','187.234.','1986/10/10','amelia@uol.com.br','2020/07/21','A');
insert into usuario
	values (2,'Artur Villario','375.837.','1992/07/31','artur@hotmail.com','2016/07/05','A');
insert into usuario
	values (3,'Lopo Laureano','275.273.','1994/02/01','lopo@gmail.com','2014/04/06','A');
insert into usuario
	values (4,'Ramiro Campello','455.665.','1988/09/25','ramiro@terra.com.br','2016/10/12','A');
insert into usuario
	values (5,'Suniário Lages','765.345.','1999/11/12','suniario@gmail.com','2017/02/18','A');
insert into usuario
	values (6,'Jandira Pollenta','234.877.','1981/07/31','ja@hotmail.com','2017/09/19','D');

insert into endereco
	values(1,1,'Av. 9 de Julho',200,'Jd. Sumaré','Ribeirão Preto','SP','14051-234');
insert into endereco
	values(2,2,'Rua Garibaldi',23,'Centro','Ribeirão Preto','SP','13720-000');
insert into endereco
	values(3,3,'Al. Santos',2010,'Jd. Paulista','São Paulo','SP','01330-010');
insert into endereco
	values(4,4,'Av. Copacabana',300,'Copacabana','Rio de Janeiro','RJ','01418-000');
insert into endereco
	values(5,5,'Av. Paulista',1950,'Bela Vista','São Paulo','SP','01321-876');

insert into autor
	values
    (1,'Abraham Silberschatz'),
	(2,'Henry F. Korth'),
    (3,'Silks Sudarshan'),
    (4,'Ian Sommerville'),
    (5,'Kim Heldman'),
    (6,'Lindeberg Barros de Souza'),
    (7,'Paulo Sérgio Marin'),
    (8,'Aguinaldo Aragon Fernandes'),
    (9,'Andrew S. Tanenbaum');

insert into livro
	values
    (1, 'Sistema de Banco de Dados', 'O Livro...', 200, 'Banco de Dados','347612','Editora Campus','2014','2017/10/10','A'),
	(2, 'Cabeamento Estruturado', 'O Livro...', 450, 'Redes','341234','Érica','2014','2015/06/21','A'),
    (3, 'Gerência de Projetos - Fundamentos', 'O Livro...', 120, 'Eng. Soft','76856','CAMPUS ELSEVIER','2010','2015/07/31','A'),
    (4, 'Gerência de Projetos', 'O Livro...', 300, 'Eng. Soft','152345','CAMPUS ELSEVIER','2017','2015/01/05','A'),
    (5, 'Engenharia de Software', 'O Livro...', 280, 'Eng. Soft','2346','pearson','2015','2017/04/12','A'),
    (6, 'Fábrica de Software', 'O Livro...', 456, 'Eng. Soft','234677','Atlas','2000','2014/06/05','A'),
    (7, 'Data Centers - Desvendando Cada Passo', 'O Livro...', 330, 'Redes','23459','Érica','2015','2012/03/03','A'),
    (8, 'Redes de Computadores', 'O Livro...', 500, 'Redes','2346','pearson','2016','2011/11/21','A');
    
insert into rel_autor_livro
	values
    (1,1,1),
    (2,2,1),
    (3,3,1),
    (4,4,5),
    (5,5,4),
    (6,5,3),
    (7,7,2),
    (8,8,6),
    (9,7,7),
    (10,9,8);
    
insert into exemplar
	values
    (1,1,1),
    (2,1,2),
    (3,1,3),
    (4,2,1),
    (5,2,2),
    (6,2,3),
    (7,3,1),
    (8,3,2),
    (9,3,3),
    (10,4,1),
    (11,4,2),
    (12,4,3),
    (13,5,1),
    (14,5,2),
    (15,5,3),
    (16,6,1),
    (17,6,2),
    (18,6,3),
	(19,7,1),
    (20,7,2),
    (21,7,3),
    (22,8,1),
    (23,8,2),
    (24,8,3);
    
insert into emprestimo
	values
    (1,1,1,"2024/09/02","2024/09/09","Sem ocorrencias");
insert into emprestimo
	values
    (2,1,5,"2024/09/02","2024/09/06","Sem ocorrencias"),
    (3,2,4,"2024/09/02","2024/09/06","Pagina 3 marcada com adesivo"),
    (4,2,8,"2024/09/02","2024/09/05","Sem ocorrencias"),
    (5,3,9,"2024/09/02","2024/09/06","Sem ocorrencias"),
    (6,3,10,"2024/09/02","2024/09/06","Pagina 57 marcada com adesivo"),
    (7,4,2,"2024/09/02","2024/09/09","Sem ocorrencias"),
    (8,4,16,"2024/09/02","2024/09/09","Paginas 75/76 faltantes"),
    (9,5,15,"2024/09/02","2024/09/06","Sem ocorrencias"),
    (10,5,21,"2024/09/02","2024/09/05","Capa riscada");

update usuario
set sta_ativa_usu = "D"
where nom_usu = "Ramiro Campello";

update usuario
set nom_usu = "Artur Villario Takeuspa"
where nom_usu = "Artur Villario";

update endereco
set des_cod_cep = "13700-000"
where des_endere = "Av. Copacabana";

update usuario
set dat_nascim_usu = "1986/11/10"
where nom_usu = "Amélia Jordánis";

update livro
set nom_editor = "Editora Érica"
where nom_editor = "Érica";

update livro
set des_resumo_livro = "O Livro contém o melhor conteúdo já desenvolvido...";

update livro
set des_area_livro = "Engenharia de Software"
where des_area_livro = "Eng. Soft";

update livro
set nom_editor = "Editora Pearson do Brasil"
where num_isbn_livro = 2346;

delete from usuario 
where nom_usu = "Jandira Pollenta";