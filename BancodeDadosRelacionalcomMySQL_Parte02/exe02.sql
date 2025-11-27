/* Criar o banco de dados */
CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

/* Criar tabela tb_categorias */
CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    sabor VARCHAR(255) NOT NULL, 
    PRIMARY KEY (id)
);

/* Criar tabela tb_pizzas */
CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT,
    sabor VARCHAR(100) NOT NULL,             
    tamanho VARCHAR(20) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    ingredientes VARCHAR(255) NOT NULL,      
    id_categoria BIGINT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

/* Modificando o atributo SABOR para NOME na tabela tb_pizzas */
ALTER TABLE tb_pizzas
CHANGE sabor nome VARCHAR(100) NOT NULL;

/* Insira 5 registros na tabela tb_categorias*/
INSERT INTO tb_categorias (nome, sabor) VALUES
("Tradicional", "Sabores clássicos da pizzaria"),
("Especial", "Sabores diferenciados"),
("Doce", "Sabores doces"),
("Premium", "Ingredientes nobres e exclusivos"),
("Vegetariana", "Sabores sem carne");

/* Insira 8 registros na tabela tb_pizzas */
INSERT INTO tb_pizzas (sabor, tamanho, preco, ingredientes, id_categoria) VALUES
("Calabresa", "Grande", 49.90,
 "Molho de tomate, calabresa, cebola, mussarela", 1),
("Frango com Catupiry", "Grande", 57.90,
 "Molho de tomate, frango desfiado, catupiry, mussarela", 1),
("Portuguesa", "Grande", 59.90,
 "Molho de tomate, presunto, ovos, cebola, azeitona, mussarela", 1),
("Quatro Queijos", "Grande", 62.90,
 "Molho de tomate, mussarela, parmesão, provolone, gorgonzola", 2),
("Chocolate", "Média", 42.00,
 "Chocolate ao leite, granulado", 3),
("Brigadeiro", "Média", 44.00,
 "Chocolate, leite condensado", 3),
("Camarão Premium", "Grande", 79.90,
 "Molho de tomate, camarão, catupiry, alho, mussarela", 4),
("Vegetariana Mix", "Grande", 55.00,
 "Molho de tomate, brócolis, milho, tomate, cebola, mussarela", 5),
("Caipira", "Grande", 63.90,
 "Molho de tomate, frango, bacon, mussarela, catupiry, milho", 1);

/* SELECT – pizzas acima de 45,00 */
SELECT * FROM tb_pizzas
WHERE preco > 45.00;

/* SELECT – pizzas entre 50 e 100 reais */
SELECT * FROM tb_pizzas
WHERE preco BETWEEN 50.00 AND 100.00;

/* SELECT LIKE – procurar pizzas com letra M no sabor */
SELECT * FROM tb_pizzas
WHERE nome LIKE '%m%' OR nome LIKE '%M%';

/* INNER JOIN – unir pizzas + categorias */
SELECT p.id, p.sabor, p.preco, p.tamanho, p.ingredientes,
       c.nome AS categoria
FROM tb_pizzas AS p
INNER JOIN tb_categorias AS c
    ON p.id_categoria = c.id;

/* INNER JOIN – somente pizzas especiais */
SELECT p.id, p.sabor, p.preco, p.tamanho, p.ingredientes,
       c.nome AS categoria
FROM tb_pizzas AS p
INNER JOIN tb_categorias AS c
    ON p.id_categoria = c.id
WHERE c.nome = "Especial";