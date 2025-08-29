CREATE DATABASE artistas_eventos_culturais;
USE artistas_eventos_culturais;

CREATE TABLE Artistas (
    id_artista INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    
    nome VARCHAR(100) NOT NULL,
    nacionalidade VARCHAR(50),
    data_nascimento DATE
);

CREATE TABLE Eventos (
    id_evento INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    
    nome VARCHAR(150) NOT NULL,
    tipo ENUM('Show', 'Exposição', 'Palestra') NOT NULL,
    data_evento DATETIME NOT NULL,
    local VARCHAR(150) NOT NULL
);

CREATE TABLE Artista_Evento (
    id_artista INT NOT NULL,
    id_evento INT NOT NULL,
    
    PRIMARY KEY (id_artista, id_evento),
    
    FOREIGN KEY (id_artista) REFERENCES Artistas(id_artista),
    FOREIGN KEY (id_evento) REFERENCES Eventos(id_evento)
);

CREATE TABLE Ingressos (
    id_ingresso INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    
    id_evento INT NOT NULL,
    assento VARCHAR(10) NOT NULL,
    preco FLOAT NOT NULL,
    status ENUM('Disponível', 'Vendido', 'Reservado') DEFAULT 'Disponível',
    
    FOREIGN KEY (id_evento) REFERENCES Eventos(id_evento)
);

CREATE TABLE Patrocinadores (
    id_patrocinador INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    
    nome VARCHAR(100) NOT NULL,
    contato VARCHAR(100)
);

CREATE TABLE Patrocinio_Evento (
    id_patrocinador INT NOT NULL,
    id_evento INT NOT NULL,
    aporte_financeiro FLOAT NOT NULL,
    visibilidade TEXT,
    
    PRIMARY KEY (id_patrocinador, id_evento),
    
    FOREIGN KEY (id_patrocinador) REFERENCES Patrocinadores(id_patrocinador),
    FOREIGN KEY (id_evento) REFERENCES Eventos(id_evento)
);
