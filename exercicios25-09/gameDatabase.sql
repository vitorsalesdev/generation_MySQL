create database if not exists db_generarion_game;

use db_generarion_game;

create table if not exists tb_classe (
id int(5) auto_increment,
classe varchar(30),
descricao text,
primary key(id)
);

create table if not exists tb_personagem (
id int(10) auto_increment,
nome varchar(60),
classe_id int,
ataque int,
defesa int,
agilidade int,
inteligencia int,
foreign key(classe_id) references tb_classe (id),
primary key (id)
);

insert into tb_classe(classe, descricao) values
("Guerreiro", "O Guerreiro pode usar todos os tipos de espadas, armaduras e escudos. Possui bons status em ataque e defesa"),
("Mago", "Magos são usuarios de poderosas magias arcanas. Possuí inteligencia muito elevada"),
("Ladino", "O ladino são especialistas em utilizar furtividade contra seus oponentes. Possui agilidade muito elevada"),
("Arqueiro", "O arqueiro é especialista em ataque à distância. Possui bons status em ataque e inteligencia");

insert into tb_personagem (nome, classe_id, ataque, defesa, agilidade, inteligencia) values
('Ferdinand von Aegir', 1, 3500, 3500, 1500, 1500),
('Tharja', 2, 1000, 2000, 2000, 5000),
('Gaius', 3, 2000, 1000, 5000, 2000),
('Takumi', 4, 3500, 1000, 2000, 3500);

select * from tb_personagem where ataque >= 2000;
select * from tb_personagem where defesa >= 1000 and defesa <= 2000;
select * from tb_personagem where nome like 'T%';
select * from tb_classe;
select * from tb_personagem;

select tb_personagem.id,tb_personagem.nome, tb_personagem.ataque, tb_personagem.defesa, tb_personagem.agilidade, 
tb_personagem.inteligencia, tb_classe.classe, tb_classe.descricao 
from tb_personagem inner JOIN tb_classe 
on tb_personagem.classe_id = tb_classe.id;
select * from tb_personagem;