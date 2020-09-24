create database if not exists ecommerce;

use ecommerce;

CREATE TABLE IF NOT EXISTS produtos (
    codigo INT(10) PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(60) NOT NULL,
    marca VARCHAR(60) NOT NULL,
    modelo VARCHAR(60) NOT NULL,
    nome VARCHAR(60) NOT NULL,
    preco FLOAT NOT NULL,
    quantidadeDisponivel INT(5)
);

insert into produtos(tipo, marca, modelo, nome, preco, quantidadeDisponivel) values
("Smartphone", "Samsung", "SM-J7008", "Samsumg Galaxy J7", 2000.00, 45),
("Smartphone", "Motorola", "XT1036", "Motorola Moto G",  1069.00, 100),
("Smartphone", "LG", "K430DFS", "LG K10", 499.00, 12),
("Notebook", "Samsung", "NP300E5K", "Samsung Essential E34", 1999.99, 65),
("Notebook", "Acer", "AN515-54-79YX", "Acer Nitro 5", 4939.05, 20);

SELECT 
    *
FROM
    produtos
WHERE
    preco >= 500;

SELECT 
    *
FROM
    produtos
WHERE
    preco <= 500;

UPDATE produtos 
SET 
    preco = 4500
WHERE
    codigo = 5;