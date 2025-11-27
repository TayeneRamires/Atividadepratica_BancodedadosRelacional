/* Criar o banco de dados da escola */
CREATE DATABASE db_escola;

USE db_escola;

/* Criar a tabela de estudantes */
CREATE TABLE tb_estudantes (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    serie VARCHAR(20) NOT NULL,
    nota DECIMAL(3,1) NOT NULL,
    turno VARCHAR(20) NOT NULL,
    PRIMARY KEY (id)
);

/* Inserir no mínimo 8 estudantes */
INSERT INTO tb_estudantes (nome, idade, serie, nota, turno) VALUES
('Ana Souza',        14, '8º ano', 8.5, 'Manhã'),
('Bruno Lima',       13, '7º ano', 6.8, 'Tarde'),
('Carla Ferreira',   15, '9º ano', 7.2, 'Manhã'),
('Diego Santos',     12, '6º ano', 5.9, 'Tarde'),
('Eduarda Silva',    14, '8º ano', 9.0, 'Manhã'),
('Felipe Oliveira',  13, '7º ano', 4.7, 'Tarde'),
('Gabriela Costa',   15, '9º ano', 7.8, 'Manhã'),
('Henrique Alves',   12, '6º ano', 6.5, 'Tarde');

/* Conferir todos os estudantes */
SELECT e.*
FROM tb_estudantes AS e;

/* SELECT – estudantes com nota MAIOR que 7.0 */
SELECT e.*
FROM tb_estudantes AS e
WHERE e.nota > 7.0;

/* SELECT – estudantes com nota MENOR que 7.0 */
SELECT e.*
FROM tb_estudantes AS e
WHERE e.nota < 7.0;

/* Atualizar 1 registro */
UPDATE tb_estudantes AS e
SET e.nota = 9.5
WHERE e.id = 2;

/* Conferir o estudante atualizado */
SELECT e.*
FROM tb_estudantes AS e
WHERE e.id = 2;
