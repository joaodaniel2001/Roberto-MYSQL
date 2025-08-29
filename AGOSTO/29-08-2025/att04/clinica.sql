DROP DATABASE IF EXISTS clinica;
CREATE DATABASE clinica;
USE clinica;

CREATE TABLE Medicos (
    id_medico INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100) NOT NULL
);

CREATE TABLE Pacientes (
    id_paciente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL
);

CREATE TABLE Consultas (
    id_consulta INT PRIMARY KEY AUTO_INCREMENT,
    id_medico INT NOT NULL,
    id_paciente INT NOT NULL,
    data_consulta DATE NOT NULL,
    FOREIGN KEY (id_medico) REFERENCES Medicos (id_medico),
    FOREIGN KEY (id_paciente) REFERENCES Pacientes (id_paciente)
);

INSERT INTO Medicos (nome, especialidade) VALUES
    ('Dr. João Silva', 'Cardiologia'),
    ('Dra. Maria Souza', 'Pediatria'),
    ('Dr. Pedro Santos', 'Ortopedia');

INSERT INTO Pacientes (nome, telefone) VALUES
    ('Carlos Almeida', '11987654321'),
    ('Ana Costa', '11991234567'),
    ('Marcos Lima', '11999887766'),
    ('Fernanda Rocha', '11991112222');

INSERT INTO Consultas (id_medico, id_paciente, data_consulta) VALUES
    (1, 1, '2023-05-01'),
    (2, 2, '2023-05-02'),
    (3, 3, '2023-05-03'),
    (1, 4, '2023-05-04'),
    (2, 1, '2023-05-05');

SELECT * FROM Medicos;
SELECT * FROM Pacientes;
SELECT * FROM Consultas;
