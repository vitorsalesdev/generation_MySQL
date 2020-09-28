create database if not exists db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table if not exists tb_categoria(
id int(10) auto_increment,
tipoDeCurso varchar(60),
tipoDeDiploma varchar(60),
primary key(id)
);

create table if not exists tb_curso(
id int(10) auto_increment,
nome varchar(60),
preco float,
plataforma varchar(60),
duracaoDoCurso varchar(60),
categoria_id int(10),
primary key(id),
constraint fk_categoria_id foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_categoria(tipoDeCurso, tipoDeDiploma) values
('Idioma', 'Curso Livre'),
('Programação', 'Certificação'),
('Idioma', 'Bacharelado');

insert into tb_curso(nome, preco, plataforma, duracaoDoCurso, categoria_id) values
('Letras Português - Inglês', 15000, 'Univesp', '8 semestres', 3),
('Inglês intensivo', 1497, 'Nower', '4 semestres', 1),
('Java do Zero ao Avançado', 3000, 'Oracle', '1 trimestre', 2); 

select *from tb_curso where preco > 50;
select * from tb_curso where preco > 3 and preco < 60;
select * from tb_curso where nome like 'J%';

select tb_curso.nome, tb_curso.preco, tb_curso.plataforma, tb_categoria.tipoDeCurso, tb_categoria.tipoDeDiploma 
from tb_curso inner join tb_categoria 
on tb_curso.categoria_id = tb_categoria.id;

select tb_curso.nome, tb_curso.precoKg, tb_categoria.tipoDeCarne, tb_categoria.tipoDeConservacao 
from tb_curso inner join tb_categoria 
on tb_curso.categoria_id = tb_categoria.id 
where tb_categoria.tipoDeCurso = 'Idioma';