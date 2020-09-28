select tb_produto.nome, tb_produto.marca, tb_produto.preco, tb_categoria.departamentoDoMaterial, tb_categoria.tipoDeMaterial 
from tb_produto inner join tb_categoria 
on tb_produto.categoria_id = tb_categoria.id;

select tb_produto.nome, tb_produto.marca, tb_produto.preco, tb_categoria.departamentoDoMaterial, tb_categoria.tipoDeMaterial 
from tb_produto inner join tb_categoria 
on tb_produto.categoria_id = tb_categoria.id
where tb_categoria.departamentoDoMaterial = 'Iluminação';