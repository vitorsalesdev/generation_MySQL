create database if not exists db_generarion_game_online;

use db_generarion_game_online;

create table if not exists tb_classe (
id int(10) primary key auto_increment,
classe varchar(30),
descricao text
);

create table if not exists tb_personagem (
id int(10) primary key auto_increment,
nome varchar(60),
classe varchar(60),
ataque int,
defesa int,
agilidade int,
inteligencia int
);

insert into tb_classe(classe, descricao) values
("Guerreiro", "O Guerreiro sabe usar todos os tipos de armaduras e escudos. Possui bons status em ataque e defesa"),
("Mago", "Magos são usuarios de poderosas magias arcanas. Possuí inteligencia muito elevada"),
("Ladino", "O ladino são especialistas em utilizar furtividade contra seus oponentes. Possui agilidade muito elevada"),
("Arqueiro", "O arqueiro é especialista em ataque à distância. Possui bons status em ataque e inteligencia");

insert into tb_personagem (nome, classe, ataque, defesa, agilidade, inteligencia) values
('Ferdinand von Aegir', 'Guerreiro', 3500, 3500, 1500, 1500),
('Tharja', 'Mago', 1000, 2000, 2000, 5000),
('Gaius', 'Ladino', 2000, 1000, 5000, 2000),
('Takumi', 'Arqueiro', 3500, 1000, 2000, 3500);

select * from tb_personagem where ataque >= 2000;

select * from tb_personagem where defesa >= 1000 and defesa <= 2000;

select * from tb_personagem where nome like 'T%';