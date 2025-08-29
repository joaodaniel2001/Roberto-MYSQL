DROP DATABASE IF EXISTS cinema;
CREATE DATABASE cinema;
USE cinema;

CREATE TABLE Filmes (
    id_filme INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    genero VARCHAR(50) NOT NULL,
    duracao INT NOT NULL -- minutos
);

CREATE TABLE Salas (
    id_sala INT PRIMARY KEY AUTO_INCREMENT,
    numero INT NOT NULL,
    capacidade INT NOT NULL
);

CREATE TABLE Sessoes (
    id_sessao INT PRIMARY KEY AUTO_INCREMENT,
    id_filme INT NOT NULL,
    id_sala INT NOT NULL,
    data_hora DATETIME NOT NULL,
    FOREIGN KEY (id_filme) REFERENCES Filmes (id_filme),
    FOREIGN KEY (id_sala) REFERENCES Salas (id_sala)
);

INSERT INTO Filmes (titulo, genero, duracao) VALUES
    ('Vingadores', 'Ação', 180),
    ('Frozen', 'Animação', 100),
    ('Interestelar', 'Ficção Científica', 170),
    ('O Poderoso Chefão', 'Drama', 175);

INSERT INTO Salas (numero, capacidade) VALUES
    (1, 120),
    (2, 100),
    (3, 80);

INSERT INTO Sessoes (id_filme, id_sala, data_hora) VALUES
    (1, 1, '2023-06-01 18:00:00'),
    (2, 2, '2023-06-01 15:00:00'),
    (3, 3, '2023-06-01 20:00:00'),
    (4, 1, '2023-06-02 19:00:00'),
    (2, 3, '2023-06-02 14:00:00');

SELECT * FROM Filmes;
SELECT * FROM Salas;
SELECT * FROM Sessoes;
