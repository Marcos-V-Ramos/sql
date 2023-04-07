create database db_escola;
use db_escola;

create table tb_estudante (
    id int not null auto_increment,
    nome varchar(100) not null,
    data_nascimento date not null,
    endereco varchar(80) not null,
    nivel_escolar varchar(50) not null,
    contato_emergencia varchar(100) unique,
    nota decimal(6,2) not null,
    primary key (id)
);

INSERT INTO tb_estudante (nome, data_nascimento, endereco, nivel_escolar, contato_emergencia, nota)
VALUES ('Mariana Souza', '2003-12-10', 'Rua I, 2021', 'Ensino Médio', 'Felipe Souza - (51) 66666-6666', 8.5);

INSERT INTO tb_estudante (nome, data_nascimento, endereco, nivel_escolar, contato_emergencia, nota)
VALUES ('Carlos Lima', '2005-08-05', 'Rua J, 2223', 'Ensino Fundamental', 'Renata Lima - (81) 55555-5555', 7.2);

INSERT INTO tb_estudante (nome, data_nascimento, endereco, nivel_escolar, contato_emergencia, nota)
VALUES ('Renan Pereira', '2001-02-18', 'Rua K, 2425', 'Ensino Médio', 'Felipe Pereira - (31) 99999-9999', 9.0);

INSERT INTO tb_estudante (nome, data_nascimento, endereco, nivel_escolar, contato_emergencia, nota)
VALUES ('Luiza Almeida', '2006-11-07', 'Rua L, 2627', 'Ensino Fundamental', 'Pedro Almeida - (21) 88888-8888', 8.8);

INSERT INTO tb_estudante (nome, data_nascimento, endereco, nivel_escolar, contato_emergencia, nota)
VALUES ('Rafaela Castro', '2000-05-01', 'Rua M, 2829', 'Graduação', 'Cristina Castro - (31) 77777-7777', 7.5);

INSERT INTO tb_estudante (nome, data_nascimento, endereco, nivel_escolar, contato_emergencia, nota)
VALUES ('Gustavo Santos', '2004-08-22', 'Rua N, 3031', 'Ensino Médio', 'Jéssica Santos - (21) 88888-8888', 6.9);

INSERT INTO tb_estudante (nome, data_nascimento, endereco, nivel_escolar, contato_emergencia, nota)
VALUES ('Letícia Silva', '2002-04-15', 'Rua O, 3233', 'Ensino Médio', 'Maria Silva - (11) 99999-9999', 8.0);

INSERT INTO tb_estudante (nome, data_nascimento, endereco, nivel_escolar, contato_emergencia, nota)
VALUES ('Pedro Rocha', '1999-11-23', 'Rua P, 3435', 'Pós-Graduação', 'Lucas Ferreira - (51) 66666-6666', 9.5);

select count(*) from tb_estudante;

select * from tb_estudante where nota > 7.0;
select * from tb_estudante where nota < 7.0;

update tb_estudante set nivel_escolar = "Ensino Fundamental" where id = 3;