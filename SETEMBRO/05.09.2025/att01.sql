CREATE DATABASE att01;
USE att01;

CREATE TABLE Passageiros (
	id_passageiro INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    
    nome VARCHAR (45) NOT NULL,
    endereco TEXT NOT NULL,
    telefone INT NOT NULL
);

CREATE TABLE Motoristas (
	id_motorista INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    
    nome VARCHAR (45) NOT NULL,
    endereco TEXT NOT NULL,
    TELEFONE INT NOT NULL
);

CREATE TABLE Localizacao (
	id_localizacao INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    
    descricao VARCHAR (100) NOT NULL
);

CREATE TABLE Caronas (
	id_carona INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    
    data_horario DATETIME NOT NULL,
    
    id_motorista_fk INT NOT NULL,
    FOREIGN KEY (id_motorista_fk) REFERENCES Motoristas (id_motorista),
    
	ponto_partida INT NOT NULL,
    FOREIGN KEY (ponto_partida) REFERENCES Localizacao (id_localizacao),
	
    destino INT NOT NULL,
    FOREIGN KEY (destino) REFERENCES Localizacao (id_localizacao)
);

CREATE TABLE Carona_Passageiros (
    PRIMARY KEY (id_carona, id_passageiro),

	id_carona INT NOT NULL,    
    FOREIGN KEY (id_carona) REFERENCES Caronas(id_carona),
	
    id_passageiro INT NOT NULL,
    FOREIGN KEY (id_passageiro) REFERENCES Passageiros(id_passageiro)
);

CREATE TABLE Feedbacks (
	id_feedback INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    
    estrelas ENUM ('1','2','3','4','5') NOT NULL,
    comentario TEXT NOT NULL,
    
    id_motorista_fk INT NOT NULL,
    FOREIGN KEY (id_motorista_fk) REFERENCES Motoristas (id_motorista),
    
	id_passageiro_fk INT NOT NULL,
    FOREIGN KEY (id_passageiro_fk) REFERENCES Passageiros (id_passageiro),
    
	id_carona INT NOT NULL,
    FOREIGN KEY (id_carona) REFERENCES Caronas(id_carona)
);

CREATE TABLE Pagamentos (
	id_pagamento INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    
    valor DECIMAL (10,2) NOT NULL,
    forma_pagamento ENUM ('pix','credito','debito') NOT NULL,
    
    id_carona_fk INT NOT NULL,
	FOREIGN KEY (id_carona_fk) REFERENCES Caronas(id_carona),
	
    id_passageiro_fk INT NOT NULL,
    FOREIGN KEY (id_passageiro_fk) REFERENCES Passageiros(id_passageiro)
);

INSERT INTO Passageiros (nome, endereco, telefone) VALUES
	('João Silva', 'Rua das Flores, 123', 119876543),
	('Maria Souza', 'Av. Brasil, 456', 119123456),
	('Pedro Santos', 'Rua Central, 789', 119654321),
	('Ana Oliveira', 'Travessa do Sol, 12', 119432198),
	('Lucas Pereira', 'Rua A, 98', 119567890);

INSERT INTO Motoristas (nome, endereco, telefone) VALUES
	('Carlos Lima', 'Rua B, 22', 119112233),
	('Fernanda Costa', 'Av. Paulista, 1000', 119998877),
	('Rafael Alves', 'Rua C, 55', 119223344);

INSERT INTO Localizacao (descricao) VALUES
	('Shopping Central'),
	('Rodoviária'),
	('Praça da Sé'),
	('Aeroporto'),
	('Estação Norte');

INSERT INTO Caronas (data_horario, id_motorista_fk, ponto_partida, destino) VALUES
	('2025-09-05 08:00:00', 1, 1, 2),
	('2025-09-05 09:30:00', 2, 3, 4),
	('2025-09-05 14:00:00', 3, 2, 5);

INSERT INTO Carona_Passageiros (id_carona, id_passageiro) VALUES
	(1, 1),
	(1, 2),
	(2, 3),
	(3, 4),
	(3, 5);

INSERT INTO Feedbacks (estrelas, comentario, id_motorista_fk, id_passageiro_fk, id_carona) VALUES
	('5', 'Ótima viagem', 1, 1, 1),
	('4', 'Boa viagem', 2, 3, 2),
	('3', 'Carro confortável', 3, 4, 3);

INSERT INTO Pagamentos (valor, forma_pagamento, id_carona_fk, id_passageiro_fk) VALUES
	(25.50, 'pix', 1, 1),
	(25.50, 'credito', 1, 2),
	(40.00, 'debito', 2, 3),
	(30.00, 'pix', 3, 4),
	(30.00, 'credito', 3, 5);
