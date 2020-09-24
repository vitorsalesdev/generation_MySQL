use empresa_rh;
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