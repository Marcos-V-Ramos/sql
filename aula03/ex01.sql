drop table tb_classe;
create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe (
	id int primary key auto_increment,
    nome varchar(20) not null unique,
    descricao varchar(200) not null
);

create table tb_personagem (
	id int primary key auto_increment,
    nome varchar(40) not null,
    ataque decimal(6,2) not null,
    defesa decimal(6,2) not null,
    especial varchar(40) not null,
    fk_id_tb_classe int,
    foreign key(fk_id_tb_classe) references tb_classe(id)
);

INSERT INTO tb_classe (nome, descricao) 
	VALUES
		('Guerreiro', 'Um especialista em combate corpo a corpo, com alta resistência e força física.'),
		('Mago', 'Um praticante de magia com habilidades místicas para lançar feitiços e controlar elementos.'),
		('Arqueiro', 'Um especialista em ataques à distância com alta precisão e agilidade.'),
		('Ladrão', 'Um mestre do subterfúgio e da furtividade, com habilidades de espionagem e sabotagem.'),
		('Clérigo', 'Um adepto da fé com poderes divinos para curar, proteger e conjurar magias sagradas.');

INSERT INTO tb_personagem (nome, ataque, defesa, especial, fk_id_tb_classe) 
	VALUES
		('Gornar', 85.00, 75.00, 'Berserker', 1),
		('Faelivrin', 70.00, 85.00, 'Disparo Mágico', 2),
		('Lyanna', 60.00, 60.00, 'Furtividade', 4),
		('Thorgrim', 95.00, 90.00, 'Fúria de Batalha', 1),
		('Vakama', 75.00, 70.00, 'Disparo Certeiro', 3),
		('Celestia', 50.00, 75.00, 'Luz Sagrada', 5),
		('Rurik', 80.00, 80.00, 'Escudo de Pedra', 1),
		('Erevan', 65.00, 60.00, 'Flecha Envenenada', 3);
        
select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where nome like "%c%" or nome like "%C%";

select 
	tb_personagem.id as 'Id Personagem',
	tb_personagem.nome as 'Nome do Personagem',
    tb_personagem.fk_id_tb_classe as 'Id da Foreign Key',
    tb_classe.id as 'Id Classe',
    tb_classe.nome as 'Nome da Classe',
    tb_classe.descricao as 'Descrição Sobre a classe'
 from tb_personagem inner join tb_classe on tb_personagem.id = tb_classe.id;
 
 select tb_personagem.id, tb_personagem.nome, tb_personagem.ataque, tb_personagem.defesa, tb_personagem.especial, tb_classe.nome AS classe, tb_classe.descricao
from tb_personagem
inner join tb_classe
on tb_personagem.fk_id_tb_classe = tb_classe.id
where tb_classe.nome = 'Arqueiro';


