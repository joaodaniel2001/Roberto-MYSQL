CREATE DATABASE maternidade;
USE maternidade;

CREATE TABLE Mae (
	cod_mae INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    
    nome TEXT NOT NULL,
    dataNascMae DATE NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    endereco TEXT NOT NULL
);

CREATE TABLE Medico (
	crm INT PRIMARY KEY NOT NULL,
		
	nome TEXT NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    especialidade ENUM ("Pediatra" , "Cardiologista", "Dermatologista", "Endocronologista") NOT NULL
);

CREATE TABLE Bebe (
	cod_bebe INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    
    nome TEXT NOT NULL,
    dataNascBebe DATE NOT NULL,
    peso DECIMAL(4,2) NOT NULL,
    altura DECIMAL(4,2) NOT NULL
);

CREATE TABLE Bebe_Mae (
	cod_bebe_fk INT NOT NULL,
	cod_mae_fk INT NOT NULL,
    PRIMARY KEY (cod_bebe_fk, cod_mae_fk),
    
	-- Chaves entrangeiras
    FOREIGN KEY (cod_bebe_fk) REFERENCES Bebe (cod_bebe),
    FOREIGN KEY (cod_mae_fk) REFERENCES Mae (cod_mae)
);

CREATE TABLE Bebe_Med (
	crm_fk INT NOT NULL,
	cod_bebe_fk INT NOT NULL,
    PRIMARY KEY (crm_fk, cod_bebe_fk),
    
	-- Chaves entrangeiras
	FOREIGN KEY (crm_fk) REFERENCES Medico (crm),
    FOREIGN KEY (cod_bebe_fk) REFERENCES Bebe (cod_bebe)
);
