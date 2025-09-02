CREATE DATABASE atividade11A;
USE atividade11A;

CREATE TABLE Cliente (
	id_cliente INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    
    nome VARCHAR (100) NOT NULL,
    sobrenome VARCHAR (100) NOT NULL,
    cpf BIGINT NOT NULL,
    sexo ENUM ('M', 'F') NOT NULL
);

INSERT INTO Cliente (nome, sobrenome, cpf, sexo) VALUES
	('Rosa', 'Azevedo', 88766934410, 'F'),
	('Cintia', 'Silva', 36490291073, 'F'),
	('Conrado', 'Martins', 26165924432, 'M'),
	('Roberto', 'Nunes', 10534227203, 'M'),
	('Tiago', 'Rocha', 63145054180, 'M'),
	('João', 'Linhares', 18294062193, 'M'),
	('Lurdes', 'Albulquerque', 87776772354, 'F'),
	('Sara', 'Souza', 63798337099, 'F'),
	('Larissa', 'Nunes', 73777022327, 'F'),
	('Maurício', 'Machado', 34933861580, 'M');

SELECT * FROM Cliente;

-- EX 05:
UPDATE Cliente
SET nome = 'Katia', sobrenome = 'Chavez', cpf = 95427351301, sexo = 'F'
WHERE id_cliente = 5;

UPDATE CLIENTE
SET nome = 'Paloma', sobrenome = 'Nunes', cpf = 95427334567, sexo = 'F'
WHERE id_cliente = 10;

-- EX 06:
ALTER TABLE Cliente
ADD telefone BIGINT NOT NULL;

-- EX 07:
INSERT INTO Cliente (nome, sobrenome, cpf, sexo, telefone) VALUES
	('Rosa', 'Azevedo', 88766934410, 'F', 123),
	('Cintia', 'Silva', 36490291073, 'F', 456),
	('Conrado', 'Martins', 26165924432, 'M', 789),
	('Roberto', 'Nunes', 10534227203, 'M', 101),
	('Tiago', 'Rocha', 63145054180, 'M', 111),
	('João', 'Linhares', 18294062193, 'M', 121),
	('Lurdes', 'Albulquerque', 87776772354, 'F', 131),
	('Sara', 'Souza', 63798337099, 'F', 141),
	('Larissa', 'Nunes', 73777022327, 'F', 151),
	('Maurício', 'Machado', 34933861580, 'M', 161);
    
