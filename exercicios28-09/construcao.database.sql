create database if not exists db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table if not exists tb_categoria(
id int(10) auto_increment,
departamentoDoMaterial varchar(60),
tipoDeMaterial varchar(60),
primary key(id)
);

create table if not exists tb_produto (
id int(10) auto_increment,
nome varchar(60), 
marca varchar(60),
preco float,
categoria_id int(10),
constraint fk_categoria_id foreign key(categoria_id) references tb_categoria(id),
primary key(id)
);

insert into tb_categoria(departamentoDoMaterial, tipoDeMaterial) values
('Iluminação', 'Lâmpada'),
('Ferramentes para medição', 'Trena Manual'),
('Ferramente para pintura', 'Pincel para metal');

insert into tb_produto(nome, marca, preco, categoria_id) values
('Pincel 2', 'Castor', 5.99, 3),
('Lâmpada de Led', 'Lexman', 16.99, 1),
('Trena 5mx18mm', 'Sparta', 9.29, 2);

select *from tb_produto where preco > 50;
select * from tb_produto where preco > 3 and preco < 60;
select * from tb_produto where nome like 'C%';

select tb_produto.nome, tb_produto.marca, tb_produto.preco, tb_categoria.departamentoDoMaterial, tb_categoria.tipoDeMaterial 
from tb_produto inner join tb_categoria 
on tb_produto.categoria_id = tb_categoria.id;

select tb_produto.nome, tb_produto.marca, tb_produto.preco, tb_categoria.departamentoDoMaterial, tb_categoria.tipoDeMaterial 
from tb_produto inner join tb_categoria 
on tb_produto.categoria_id = tb_categoria.id
where tb_categoria.departamentoDoMaterial = 'Iluminação';