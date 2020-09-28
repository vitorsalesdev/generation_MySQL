create database if not exists db_cidade_das_carnes;

use db_cidade_das_carnes;

create table if not exists tb_categoria (
id int(10) auto_increment,
tipoDeCarne varchar(60),
tipoDeConservacao varchar(60),
primary key(id)
);

create table if not exists tb_produto (
id int(10) auto_increment,
nome varchar(60), 
marca varchar(60),
precoKg float,
categoria_id int(10),
constraint fk_categoria_id foreign key(categoria_id) references tb_categoria(id),
primary key(id)
);

insert into tb_categoria(tipoDeCarne, tipoDeConservacao)
values ('Bovina', 'Refrigeração'),
('Suína', 'Refrigeração'),
('Suína', 'Defumação'),
('Pescado', 'Refrigeração'),
('Bovina', 'Cura'),
('Carne de Aves', 'Refrigeração');

insert into tb_produto(nome, marca, precoKg, categoria_id)
values ('Frango inteiro', 'Seara', 8.99, 6),
('Filé Mignon', 'Friboi', 60.99, 1),
('Calabresa Defumada', 'Sadia', 10.99, 3),
('Lobinho', 'Seara', 15.99, 2),
('Carne Seca', 'Friboi', 35.99, 5),
('Salmão', 'Frescatto', 65.99, 4);

select *from tb_produto where precoKg > 50;
select * from tb_produto where precoKg > 3 and precoKg < 60;
select * from tb_produto where nome like 'C%';

select tb_produto.nome, tb_produto.marca, tb_produto.precoKg, tb_categoria.tipoDeCarne, tb_categoria.tipoDeConservacao 
from tb_produto inner join tb_categoria 
on tb_produto.categoria_id = tb_categoria.id;

select tb_produto.nome, tb_produto.marca, tb_produto.precoKg, tb_categoria.tipoDeCarne, tb_categoria.tipoDeConservacao 
from tb_produto inner join tb_categoria 
on tb_produto.categoria_id = tb_categoria.id 
where tb_categoria.tipoDeCarne = 'Bovina';