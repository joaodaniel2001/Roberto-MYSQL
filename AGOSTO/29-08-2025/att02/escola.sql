DROP DATABASE IF EXISTS escola;
CREATE DATABASE escola;
USE escola;

CREATE TABLE Alunos (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL
);

CREATE TABLE Cursos (
    id_curso INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome_curso VARCHAR(100) NOT NULL,
    carga_horaria INT NOT NULL
);

CREATE TABLE Matriculas (
    id_matricula INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    data_matricula DATE NOT NULL,
    id_aluno_fk INT,
    FOREIGN KEY (id_aluno_fk) REFERENCES Alunos (id_aluno),
    id_curso_fk INT,
    FOREIGN KEY (id_curso_fk) REFERENCES Cursos (id_curso)
);

INSERT INTO Alunos (nome, data_nascimento) VALUES
    ('João', '2008-01-11'),
    ('Maria', '2006-02-12'),
    ('Renan', '2007-03-13'),
    ('Maik', '2007-04-14'),
    ('Pedro', '2008-05-15');

INSERT INTO Cursos (nome_curso, carga_horaria) VALUES
    ('JAVA', 120),
    ('PYTHON', 100),
    ('C#', 110);

INSERT INTO Matriculas (id_aluno_fk, id_curso_fk, data_matricula) VALUES
    (1, 1, '2020-01-01'),
    (2, 2, '2019-01-01'),
    (3, 3, '2021-01-01'),
    (4, 1, '2018-01-01'),
    (5, 2, '2022-01-01');

SELECT * FROM Alunos;
SELECT * FROM Cursos;
SELECT * FROM Matriculas;
