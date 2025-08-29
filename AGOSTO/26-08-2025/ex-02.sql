CREATE DATABASE conferencia_internacional;
USE conferencia_internacional;

CREATE TABLE Participantes (
    id_participante INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    telefone VARCHAR(15),
    
    eh_palestrante BOOLEAN DEFAULT FALSE,
    eh_ouvinte BOOLEAN DEFAULT TRUE
);

CREATE TABLE Salas (
    id_sala INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    
    nome VARCHAR(50) NOT NULL,
    capacidade INT NOT NULL
);

CREATE TABLE Eventos (
    id_evento INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    
    nome VARCHAR(150) NOT NULL,
    tipo ENUM('Palestra', 'Workshop', 'Mesa-redonda') NOT NULL,
    data_inicio DATETIME NOT NULL,
    data_fim DATETIME NOT NULL,
    
    id_sala INT NOT NULL,
    FOREIGN KEY (id_sala) REFERENCES Salas(id_sala)
);

CREATE TABLE Inscricoes (
    id_inscricao INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    
    id_participante INT NOT NULL,
    id_evento INT NOT NULL,
    status ENUM('Pendente', 'Confirmada', 'Cancelada') DEFAULT 'Pendente',
    data_inscricao DATETIME DEFAULT CURRENT_TIMESTAMP,
    
    FOREIGN KEY (id_participante) REFERENCES Participantes(id_participante),
    FOREIGN KEY (id_evento) REFERENCES Eventos(id_evento),
    
    UNIQUE (id_participante, id_evento)
);

CREATE TABLE Certificados (
    id_certificado INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    
    id_inscricao INT NOT NULL,
    data_emissao DATETIME DEFAULT CURRENT_TIMESTAMP,
    codigo_certificado VARCHAR(100) UNIQUE NOT NULL,
    
    FOREIGN KEY (id_inscricao) REFERENCES Inscricoes(id_inscricao)
);
