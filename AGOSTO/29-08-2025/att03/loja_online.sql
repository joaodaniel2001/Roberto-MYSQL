DROP DATABASE IF EXISTS loja_online;
CREATE DATABASE loja_online;
USE loja_online;

CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL
);

CREATE TABLE Produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL
);

CREATE TABLE Pedidos (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    data_pedido DATE NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Clientes (id_cliente)
);

INSERT INTO Clientes (nome, email) VALUES
    ('João Silva', 'joao@email.com'),
    ('Maria Souza', 'maria@email.com'),
    ('Carlos Pereira', 'carlos@email.com'),
    ('Ana Costa', 'ana@email.com');

INSERT INTO Produtos (nome, preco) VALUES
    ('Notebook', 3500.00),
    ('Smartphone', 2000.00),
    ('Fone Bluetooth', 250.00),
    ('Mouse Gamer', 150.00),
    ('Teclado Mecânico', 400.00);

INSERT INTO Pedidos (id_cliente, data_pedido) VALUES
    (1, '2023-05-01'),
    (2, '2023-06-10'),
    (3, '2023-07-15');

SELECT * FROM Clientes;
SELECT * FROM Produtos;
SELECT * FROM Pedidos;
