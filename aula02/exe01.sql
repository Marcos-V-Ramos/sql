create database db_empresa;
use db_empresa;

create table tb_colaborador(
	id bigint auto_increment,
    nome varchar(300) not null,
    cpf varchar(12) not null unique,
    email varchar(50) not null unique,
    salario decimal(6,2),
    status boolean,
    primary key(id)
);

insert into tb_colaborador
	(nome, cpf, email, salario, status)
values 
	("Marcos Vinicius", "508.230.132-12", "marcosvramos@gmail.com", 220.22, true);
    
insert into tb_colaborador
	(nome, cpf, email, salario, status)
values 
	("Vinicius Oliveira", "501.530.172-11", "oliveirav@gmail.com", 2200.22, true);
    
insert into tb_colaborador
	(nome, cpf, email, salario, status)
values 
	("José Lopes V", "808.130.232-72", "jose12l@gmail.com", 3444.22, false);
    
insert into tb_colaborador
	(nome, cpf, email, salario, status)
values 
	("Matias Lima W.", "321.111.152-02", "matiasbig14@gmail.com", 920.22, true);
    
insert into tb_colaborador
	(nome, cpf, email, salario, status)
values 
	("Isabelle Santos Lima", "555.210.655-32", "isabellelima@gmail.com", 2122.22, false);
    
select * from tb_colaborador where salario > 2000;
select * from tb_colaborador where salario < 2000;

update tb_colaborador set nome = "Isabelle Santos Lima L." where id = 5;