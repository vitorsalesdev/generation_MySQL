select tb_curso.nome, tb_curso.preco, tb_curso.plataforma, tb_categoria.tipoDeCurso, tb_categoria.tipoDeDiploma 
from tb_curso inner join tb_categoria 
on tb_curso.categoria_id = tb_categoria.id;

select tb_curso.nome, tb_curso.precoKg, tb_categoria.tipoDeCarne, tb_categoria.tipoDeConservacao 
from tb_curso inner join tb_categoria 
on tb_curso.categoria_id = tb_categoria.id 
where tb_categoria.tipoDeCurso = 'Idioma';