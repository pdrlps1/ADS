CREATE USER 'backup-user'@'%' IDENTIFIED BY 'Senha@123';

CREATE ROLE 'backup-role';

GRANT SELECT, SHOW VIEW, LOCK TABLES, EVENT ON educacional.* TO 'backup-role';

GRANT 'backup-role' TO'backup-user'@'%';

INSERT INTO alunos (id, nome, dtNascimento, ra, endereco, telefone, email) VALUES
(2, 'Ana Souza', '2000-05-14', 'RA001', 'Rua das Flores, 123', '(16) 91234-5678', 'ana@email.com'),
(3, 'Carlos Lima', '1999-11-30', 'RA002', 'Av. Brasil, 456', '(16) 98765-4321', 'carlos@email.com'),
(4, 'Juliana Silva', '2001-03-20', 'RA003', 'Rua Verde, 789', '(16) 92345-6789', 'juliana@email.com');

INSERT INTO disciplina (id, nome, cargaHoraria, semestre) VALUES
(1, 'Matemática Aplicada', 60, 1),
(2, 'Banco de Dados', 80, 2),
(3, 'Algoritmos', 70, 1);

INSERT INTO frequencia (id, alunoID, disciplinaID, data, status) VALUES
(1, 1, 1, '2025-03-25', 1),
(2, 1, 2, '2025-03-25',0),
(3, 2, 2, '2025-03-25', 1),
(4, 3, 3, '2025-03-25', 1),
(5, 2, 1, '2025-03-25', 0);