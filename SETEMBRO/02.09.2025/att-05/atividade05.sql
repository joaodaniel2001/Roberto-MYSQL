CREATE DATABASE atividade05B;
USE atividade05B;

CREATE TABLE Alunos (
	matricula INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
		
	nome VARCHAR (100) NOT NULL,
    sexo ENUM ('M', 'F') NOT NULL,
	idade INT NOT NULL
);

INSERT INTO Alunos (nome, sexo, idade) VALUES
	('Marcelos Medeiros', 'M', 35),
	('Ana Paula Berlim', 'F', 25),
	('Lucas Silva', 'M', 7),
	('Caroline Silva', 'F', 19),
	('Djalma Medeiros', 'M', 65),
	('Artur Paes', 'M', 5),
	('Eduarda Duda', 'F', 8);
    
SELECT * FROM Alunos;

-- EX 05

SELECT * FROM Alunos
WHERE sexo = 'M';

SELECT * FROM Alunos
WHERE nome LIKE '%Medeiros%'
ORDER BY idade;

SELECT AVG(idade) FROM Alunos;

SELECT MAX(idade) FROM Alunos;

SELECT * FROM Alunos
WHERE idade < 20;

SELECT * FROM Alunos
WHERE nome = 'Lucas Silva';

SELECT * FROM Alunos
ORDER BY idade
LIMIT 1;

SELECT COUNT(*) FROM Alunos
WHERE idade BETWEEN 10 AND 20 AND sexo = 'M';

SELECT COUNT(*) FROM Alunos
WHERE sexo = 'F';

SELECT nome FROM Alunos
WHERE nome LIKE 'A%' AND sexo = 'M';

UPDATE Alunos SET idade = 20 WHERE nome = 'Caroline Silva';

DELETE FROM Alunos
WHERE nome = 'Djalma Medeiros';

