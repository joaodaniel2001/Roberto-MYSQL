DROP DATABASE IF EXISTS biblioteca;
CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE Autores (
	id_autor INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    
    nome VARCHAR(100) NOT NULL,
    nascionalidade VARCHAR(100) NOT NULL
);

CREATE TABLE Livros (
	id_livro INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    
    titulo VARCHAR(100) NOT NULL,
    ano_publicacao YEAR NOT NULL,
    
    id_autor_fk INT,
    FOREIGN KEY (id_autor_fk) REFERENCES Autores(id_autor)
);

CREATE TABLE Usuarios (
	id_usuario INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    
    nome VARCHAR(100),
    email VARCHAR(100)
);

INSERT INTO Autores (nome, nascionalidade) VALUES
	('Roberto', 'Brasileiro'),
	('Fabiano', 'Japonês'),
	('André', 'Alemão');
    
INSERT INTO Livros (titulo, ano_publicacao, id_autor_fk) VALUES
		('Harry Potter 1', '2001', '1'),
		('Harry Potter 2', '2002', '2'),
		('Harry Potter 3', '2003', '3'),
		('Harry Potter 4', '2004', '1'),
		('Harry Potter 5', '2005', '2');

INSERT INTO Usuarios (nome, email) VALUES
	('João', 'joao@gmail.com'),
	('Otavio', 'otavio@gmail.com'),
	('Roberto', 'roberto@gmail.com'),
	('Jéssica', 'jessica@gmail.com');
    
SELECT * FROM Autores;
SELECT * FROM Livros;
SELECT * FROM Usuarios;
