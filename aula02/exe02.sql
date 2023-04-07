create database db_ecommerce;
use db_ecommerce;

create table tb_produto(
	id bigint auto_increment,
    nome varchar(200),
    descricao varchar(400),
    preco decimal(6,2),
    quantidade int,
    disponivel boolean,
    primary key(id)
);

INSERT INTO tb_produto (nome, descricao, preco, quantidade, disponivel)
VALUES ('Camisa Polo', 'Camisa de manga curta com gola polo', 59.90, 50, true);

INSERT INTO tb_produto (nome, descricao, preco, quantidade, disponivel)
VALUES ('Calça Jeans', 'Calça jeans slim fit', 89.90, 30, true);

INSERT INTO tb_produto (nome, descricao, preco, quantidade, disponivel)
VALUES ('Tênis Nike Air Max', 'Tênis esportivo para corrida', 399.99, 20, true);

INSERT INTO tb_produto (nome, descricao, preco, quantidade, disponivel)
VALUES ('Perfume Calvin Klein', 'Perfume masculino com fragrância amadeirada', 199.90, 10, true);

INSERT INTO tb_produto (nome, descricao, preco, quantidade, disponivel)
VALUES ('Óculos de Sol Ray Ban', 'Óculos de sol com armação de acetato e lentes polarizadas', 349.90, 5, true);

INSERT INTO tb_produto (nome, descricao, preco, quantidade, disponivel)
VALUES ('Mochila Esportiva Adidas', 'Mochila com compartimento para notebook e alças acolchoadas', 129.90, 15, true);

INSERT INTO tb_produto (nome, descricao, preco, quantidade, disponivel) 
VALUES ('Fone de ouvido bluetooth', 'Fone de ouvido bluetooth com cancelamento de ruído', 299.90, 10, true);

INSERT INTO tb_produto (nome, descricao, preco, quantidade, disponivel) 
VALUES ('Livro de romance', 'Livro de romance com história envolvente', 39.90, 80, true);

select count(*) from tb_produto;

select nome, descricao, preco from tb_produto where preco > 500;
select nome, descricao, preco from tb_produto where preco < 500;

update tb_produto set nome = "Livro de Aventura" where id = 1;