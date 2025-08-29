DROP DATABASE IF EXISTS atividade10;
CREATE DATABASE atividade10;
USE atividade10;

CREATE TABLE Cliente (
	id_cliente INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    
    nome VARCHAR(100) NOT NULL,
    sobrenome VARCHAR(100) NOT NULL,
    cpf BIGINT NOT NULL,
    turno ENUM ('M', 'V', 'N') NOT NULL
);

INSERT INTO Cliente (nome, sobrenome, cpf, turno) VALUES
	('Carla', 'Silva', 58588513636, 'V'),
	('Pedro', 'Souza', 21936216434, 'M'),
	('Leonardo', 'Azevedo', 67828203186, 'N'),
	('Paula', 'Martins', 52291852700, 'V'),
	('Jéssica', 'Pereira', 29023136305, 'V'),
	('Camila', 'Rocha', 47371884380, 'N'),
	('José', 'Silva', 77249832191, 'M'),
	('Marcelo', 'Souza', 33600044896, 'M'),
	('Mônica', 'Martins', 77910572670, 'V'),
	('Vitor', 'Machado', 60862093388, 'N');
    
SELECT * FROM Cliente;
