create database if not exists db_deletar;
use db_deletar;

CREATE TABLE IF NOT EXISTS consumidores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30)
);

	insert into consumidores (nome) values
	("Marcelo"),
    ("Julia");
    
    
SELECT 
    *
FROM
    consumidores;

DELETE FROM consumidores 
WHERE
    id = 1;

SELECT 
    *
FROM
    consumidores;