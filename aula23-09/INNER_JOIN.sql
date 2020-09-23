use loja_veiculos;

select * from proprietarios;

select * from tb_veiculo;

select * from tb_veiculo INNER JOIN proprietarios ON
tb_veiculo.proprietarios_id_dono = proprietarios.id_dono;