-- Query para a criação de bando de dados
CREATE DATABASE db_quitanda;

-- Query para deletar o banco de dados
DROP DATABASE db_quitanda;

-- Começar utilizar o banco
USE db_quitanda;

-- Criar tabela e popular
CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    quantidade int,
    preco decimal not null,
    primary key(id)
    );
    
-- Visualizar a tabela
SELECT* FROM tb_produtos;

-- Popular tabela
INSERT INTO tb_produtos(nome, quantidade, preco)
values ("laranja", 50, 10.00);
INSERT INTO tb_produtos(nome, quantidade, preco)
values ("banana", 200, 12.00);
INSERT INTO tb_produtos(nome, quantidade, preco)
values ("uva", 1200, 30.00);
INSERT INTO tb_produtos(nome, quantidade, preco)
values ("perâ", 500, 2.99);

-- buscas especificas
SELECT nome, quantidade FROM tb_produtos;

SELECT * FROM tb_produtos WHERE id  = 2;

SELECT * FROM tb_produtos WHERE preco > 5.00 AND quantidade < 100;

-- Desabilitar nossa seguranla do sql
SET SQL_SAFE_UPDATES = 0;

-- Atualizar colunas da tabela
UPDATE tb_produtos SET preco = 5.00 WHERE id = 2;

-- Deletar apaga os dados da tabela
DELETE FROM tb_produtos WHERE id = 2;

-- Atualizar coluna
ALTER TABLE tb_produtos MODIFY preco decimal(6,2);

-- Adionar coluna
ALTER TABLE tb_produtos ADD descricao varchar(255);

-- Apaga a estrutura
ALTER TABLE tb_produtos DROP descricao;

-- Altera nome da coluna
ALTER TABLE tb_produtos CHANGE nomedoproduto nome_do_produto varchar(255);