/* Criar o banco de dados */
CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

/* Criar tabela tb_categorias */
CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(255) NOT NULL, 
    PRIMARY KEY (id)
);

/* Criar tabela tb_produtos */
CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,        
    marca VARCHAR(50) NOT NULL,         
    preco DECIMAL(6,2) NOT NULL,        
    receita_obrigatoria BOOLEAN NOT NULL, 
    id_categoria BIGINT NOT NULL,      
    PRIMARY KEY (id),
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

/* Insira 5 registros na tabela tb_categorias */
INSERT INTO tb_categorias (nome, descricao) VALUES
("Analgésicos", "Medicamentos para dor e febre"),
("Antibióticos", "Medicamentos para tratamento de infecções bacterianas"),
("Anti-inflamatórios", "Medicamentos para inflamações e dores musculares"),
("Higiene Pessoal", "Produtos de higiene diária"),
("Vitaminas e Suplementos", "Suplementos vitamínicos e minerais");

/* Insira 8 registros na tabela tb_produtos */
INSERT INTO tb_produtos (nome, marca, preco, receita_obrigatoria, id_categoria) VALUES
("Dipirona 500mg Comprimidos", "Genérico", 8.50, 0, 1),
("Paracetamol 750mg", "Tylenol", 12.00, 0, 1),
("Amoxicilina 500mg", "EMS", 35.90, 1, 2),
("Ibuprofeno 600mg", "Neo Química", 18.75, 1, 3),
("Escova Dental Macia", "Colgate", 9.90, 0, 4),
("Shampoo Anticaspa 200ml", "Head & Shoulders", 27.50, 0, 4),
("Vitamina C 1.000mg", "Cewin", 52.00, 0, 5),
("Polivitamínico Adulto", "Centrum", 79.90, 0, 5);

/* SELECT – produtos com preço acima de 50,00 */
SELECT * FROM tb_produtos
WHERE preco > 50.00;

/* SELECT – produtos com preço entre 5,00 e 60,00 */
SELECT * FROM tb_produtos
WHERE preco BETWEEN 5.00 AND 60.00;

/* SELECT LIKE – produtos que possuem a letra C no nome */
SELECT * FROM tb_produtos
WHERE nome LIKE '%c%' OR nome LIKE '%C%';

/* INNER JOIN – unir produtos + categorias */
SELECT p.id,
       p.nome,
       p.marca,
       p.preco,
       p.receita_obrigatoria,
       c.nome AS categoria,
       c.descricao
FROM tb_produtos AS p
INNER JOIN tb_categorias AS c
    ON p.id_categoria = c.id;

/* INNER JOIN – apenas produtos de uma categoria específica */
SELECT p.id,
       p.nome,
       p.marca,
       p.preco,
       p.receita_obrigatoria,
       c.nome AS categoria
FROM tb_produtos AS p
INNER JOIN tb_categorias AS c
    ON p.id_categoria = c.id
WHERE c.nome = "Higiene Pessoal";
