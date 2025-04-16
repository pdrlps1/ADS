create user 'pedro'@'%' identified by 'teste';
create user 'maria'@'%' identified by 'teste';
create user 'joao'@'%' identified by 'teste';
create user 'user_acesso_total' identified by 'acessototal';
create user 'paulo'@'%' identified by 'teste';

-- criação de roles
create role 'acesso_total';
create role 'acesso_select';

-- garantir acessos aos usuários a certos locais do banco de dados
grant all privileges on educacional.* to 'pedro'@'%';
grant select, update, insert on educacional.* to 'maria'@'%';
grant select on educacional.* to 'joao'@'%';

-- definir acessos às roles e definir roles à um usuário específico
grant all privileges on educacional.* to 'acesso_total';
grant 'acesso_total' to 'user_acesso_total';
grant select on educacional.* to 'acesso_select';
grant 'acesso_select' to 'paulo'@'%';

revoke insert, update, select, delete on educacional.* from 'pedro'@'%';

-- bloqueio de usuário
alter user 'paulo'@'%' account lock;
alter user 'paulo'@'%' account unlock;

-- alteração de senha
alter user 'joao'@'%' identified by 'teste2';

-- drop user (exclusão)
drop user 'joao'@'%';

select * from alunos;