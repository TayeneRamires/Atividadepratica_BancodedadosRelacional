/* Criar o banco de dados */
CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

/* Criar a tabela tb_classes */
CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

/* Criar a tabela tb_personagens */
CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    nivel INT NOT NULL,
    id_classe BIGINT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
);

/* Insira 5 registros na tabela tb_classes */
INSERT INTO tb_classes (nome, descricao) VALUES
('Psíquico',   'Personagens com habilidades mentais e visões'),
('Lobisomem',  'Transformação em lobo e força ampliada'),
('Vampiro',    'Ser noturno rápido e regenerativo'),
('Sereia',     'Consegue manipular emoções e lutar na água'),
('Criatura',   'Seres únicos com habilidades especiais');

/* Insira 8 registros na tabela tb_personagens */
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, id_classe) VALUES
('Wandinha Addams',     2500, 1800, 20, 1),   
('Enid Sinclair',       1900, 1500, 18, 2),  
('Mortícia Addams',     2300, 2100, 25, 1),  
('Gomes Addams',        2000, 1600, 22, 1),  
('Feioso Addams',       1400, 1200, 12, 1),   
('Mãozinha',            2100, 1000, 19, 5),  
('Bianca Barclay',      2600, 1900, 23, 4),   
('Xavier Thorpe',       2200, 1700, 21, 1); 

/* SELECT – personagens com ataque > 2000 */
SELECT * FROM tb_personagens
WHERE poder_ataque > 2000;

/* SELECT – defesa entre 1000 e 2000 */
SELECT * FROM tb_personagens
WHERE poder_defesa BETWEEN 1000 AND 2000;

/* SELECT com LIKE – nomes com a letra C */
SELECT * FROM tb_personagens
WHERE nome LIKE '%c%' OR nome LIKE '%C%';

/* INNER JOIN — unir personagens com classes */
SELECT p.id, p.nome, p.poder_ataque, p.poder_defesa, p.nivel,
       c.nome AS classe, c.descricao AS descricao_classe
FROM tb_personagens AS p
INNER JOIN tb_classes AS c
    ON p.id_classe = c.id;

/* INNER JOIN filtrando por classe específica */
SELECT p.id, p.nome, p.poder_ataque, p.poder_defesa, p.nivel,
       c.nome AS classe
FROM tb_personagens AS p
INNER JOIN tb_classes AS c
    ON p.id_classe = c.id
WHERE c.nome = 'Psíquico';
