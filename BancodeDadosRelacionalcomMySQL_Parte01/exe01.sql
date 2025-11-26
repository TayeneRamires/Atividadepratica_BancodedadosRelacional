/*Criar o banco de dados */
CREATE DATABASE db_colaboradores;

USE db_colaboradores;

/*Criar a tabela de colaboradores */
CREATE TABLE tb_colaboradores (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    departamento VARCHAR(50) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    data_admissao DATE NOT NULL,
    PRIMARY KEY (id)
);

/*Inserir 5 registros com cargos variados */
INSERT INTO tb_colaboradores (nome, cargo, departamento, salario, data_admissao) VALUES
('Tayene Silva',   'Desenvolvedora Jr',          'Tecnologia',        3200.00, '2023-05-10'),
('Tayene Souza',   'Analista Financeira',        'Financeiro',        2800.00, '2022-11-02'),
('Tayene Pereira', 'Assistente de Marketing',    'Marketing',         1900.00, '2024-03-18'),
('Tayene Lima',    'Atendente de Suporte',       'Atendimento',       1500.00, '2024-07-01'),
('Tayene Costa',   'Auxiliar de Logística',      'Logística',         2100.00, '2023-01-22');

/*Conferir a tabela */
SELECT c.*
FROM tb_colaboradores AS c;

/*SELECT — salário MAIOR que 2000 */
SELECT c.*
FROM tb_colaboradores AS c
WHERE c.salario > 2000.00;

/*SELECT — salário MENOR que 2000 */
SELECT c.*
FROM tb_colaboradores AS c
WHERE c.salario < 2000.00;

/*UPDATE — atualizar um registro */
UPDATE tb_colaboradores AS c
SET c.salario = 2200.00
WHERE c.id = 4;

/*Conferir a atualização */
SELECT c.*
FROM tb_colaboradores AS c
WHERE c.id = 4;
