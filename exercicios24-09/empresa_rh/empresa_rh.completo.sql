create database if not exists empresa_rh;

use empresa_rh;

CREATE TABLE IF NOT EXISTS funcionarios (
    matricula INT(6) PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(80) NOT NULL,
    cargo VARCHAR(60) NOT NULL,
    salario FLOAT NOT NULL,
    tipoDeContrato VARCHAR(30) NOT NULL
);

insert into funcionarios(nome, cargo, salario, tipoDeContrato)
values ("Vitor Sales", "Desenvolvedor Java Junior", 4500.00, "Efetivo CLT"),
("Juliana Brito", "Gestora de Recursos Humanos", 3900.00, "Efetivo CLT"),
("Rosemeire Sales", "Vendedora", 1600.00, "Experiência CLT"),
("Lucas Silva", "Vendedor", 900.00, "Efetivo Aprendiz"),
("Carla Lima", "Advogada Empresarial", 6000.00, "Efetivo CLT");

SELECT 
    *
FROM
    funcionarios
WHERE
    salario >= 2000;
SELECT 
    *
FROM
    funcionarios
WHERE
    salario <= 2000;

UPDATE funcionarios 
SET 
    cargo = 'Desenvolvedor Java Pleno',
    salario = 7000.00
WHERE
    matricula = 1;

SELECT 
    *
FROM
    funcionarios;