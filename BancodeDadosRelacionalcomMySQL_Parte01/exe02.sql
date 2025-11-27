/*Criar o banco de dados do e-commerce */
CREATE DATABASE mundo_rosinha_kids;

USE mundo_rosinha_kids;

/*Criar a tabela de produtos */
CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    tamanho VARCHAR(20) NOT NULL,
    faixa_etaria VARCHAR(30) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    PRIMARY KEY (id)
);

/*Inserir no mínimo 8 produtos */
INSERT INTO tb_produtos (nome, categoria, tamanho, faixa_etaria, preco, estoque) VALUES
('Vestido Rosinha Corações',           'Vestuário',  '2-4 anos',  'Infantil',  189.90, 20),
('Conjunto Moletom Unicórnio',         'Vestuário',  '4-6 anos',  'Infantil',  249.90, 15),
('Pijama Algodão Nuvens',              'Vestuário',  '6-8 anos',  'Infantil',  119.90, 30),
('Body Bebê Gatinho Rosa',             'Vestuário',  '0-1 ano',   'Bebê',       89.90, 25),
('Sandália Brilhante Mundo Rosinha',   'Calçado',    '25-28',     'Infantil',  159.90, 18),
('Mochila Escolar Rosê com Laço',      'Acessório',  'Único',     'Infantil',  220.00, 12),
('Kit Festa Fantasia Princesa Rosinha','Kit Especial','4-8 anos', 'Infantil',  549.90, 10),
('Pacote Premium Guarda-Roupa Rosinha','Combo',      '1-8 anos',  'Infantil',  899.90, 5);

/*Conferir todos os produtos */
SELECT p.*
FROM tb_produtos AS p;

/*SELECT – produtos com valor MAIOR que 500 */
SELECT p.*
FROM tb_produtos AS p
WHERE p.preco > 500.00;

/*SELECT – produtos com valor MENOR que 500 */
SELECT p.*
FROM tb_produtos AS p
WHERE p.preco < 500.00;

/*Atualizar 1 registro */
UPDATE tb_produtos AS p
SET p.preco = 799.90
WHERE p.id = 8;

/*Conferir a atualização do produto atualizado */
SELECT p.*
FROM tb_produtos AS p
WHERE p.id = 8;
