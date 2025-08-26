CREATE DATABASE competicoes_esportivas;
USE competicoes_esportivas;

CREATE TABLE Modalidades (
    id_modalidade INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE Categorias (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE Competicões (
    id_competicao INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    
    nome VARCHAR(150) NOT NULL,
    data_inicio DATE NOT NULL,
    data_fim DATE NOT NULL
);

CREATE TABLE Equipes (
    id_equipe INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE Atletas (
    id_atleta INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE,
    nacionalidade VARCHAR(50)
);

CREATE TABLE Treinadores (
    id_treinador INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(15)
);

CREATE TABLE Equipe_Atletas (
    id_equipe INT NOT NULL,
    id_atleta INT NOT NULL,
    
    PRIMARY KEY (id_equipe, id_atleta),
    
    FOREIGN KEY (id_equipe) REFERENCES Equipes(id_equipe),
    FOREIGN KEY (id_atleta) REFERENCES Atletas(id_atleta)
);

CREATE TABLE Equipe_Treinadores (
    id_equipe INT NOT NULL,
    id_treinador INT NOT NULL,
    
    PRIMARY KEY (id_equipe, id_treinador),
    
    FOREIGN KEY (id_equipe) REFERENCES Equipes(id_equipe),
    FOREIGN KEY (id_treinador) REFERENCES Treinadores(id_treinador)
);

CREATE TABLE Participacoes (
    id_atleta INT NOT NULL,
    id_modalidade INT NOT NULL,
    id_categoria INT NOT NULL,
    id_competicao INT NOT NULL,
    
    PRIMARY KEY (id_atleta, id_modalidade, id_categoria, id_competicao),
    
    FOREIGN KEY (id_atleta) REFERENCES Atletas(id_atleta),
    FOREIGN KEY (id_modalidade) REFERENCES Modalidades(id_modalidade),
    FOREIGN KEY (id_categoria) REFERENCES Categorias(id_categoria),
    FOREIGN KEY (id_competicao) REFERENCES Competicões(id_competicao)
);

CREATE TABLE Resultados (
    id_resultado INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    
    id_participacao_atleta INT NOT NULL,
    posicao INT NOT NULL,
    pontuacao FLOAT,
    medalha ENUM('Ouro', 'Prata', 'Bronze', 'Nenhuma') DEFAULT 'Nenhuma',
    
    FOREIGN KEY (id_participacao_atleta) REFERENCES Participacoes(id_atleta) -- ERRO: esta FK precisa ser revista (veja observação abaixo)
);
