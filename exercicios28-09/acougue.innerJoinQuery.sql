select tb_produto.nome, tb_produto.marca, tb_produto.precoKg, tb_categoria.tipoDeCarne, tb_categoria.tipoDeConservacao 
from tb_produto inner join tb_categoria 
on tb_produto.categoria_id = tb_categoria.id;

select tb_produto.nome, tb_produto.marca, tb_produto.precoKg, tb_categoria.tipoDeCarne, tb_categoria.tipoDeConservacao 
from tb_produto inner join tb_categoria 
on tb_produto.categoria_id = tb_categoria.id 
where tb_categoria.tipoDeCarne = 'Bovina';