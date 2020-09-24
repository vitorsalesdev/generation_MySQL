create database if not exists escola;

use escola;

CREATE TABLE IF NOT EXISTS alunos (
    matricula INT(10) PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(80) NOT NULL,
    serie INT(1),
    turma CHAR(1),
    nota FLOAT(2)
);

insert into alunos(nome, serie, turma, nota) values 
("Vitor Sales", 3, "D", 8.8),
("João Silva", 2, "B", 6.2),
("Maria Eduarda Costa", 1, "A", 7.2),
("Alloy Sobeck", 3, "A", 10);

SELECT 
    *
FROM
    alunos
WHERE
    nota >= 7;

SELECT 
    *
FROM
    alunos
WHERE
    nota <= 7;

UPDATE alunos 
SET 
    turma = 'A'
WHERE
    matricula = 1;
