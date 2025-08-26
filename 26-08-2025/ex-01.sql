CREATE DATABASE e_commerce_artezanal;
USE e_commerce_artezanal;

CREATE TABLE Usuarios (
	id_usuarios INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    endereco TEXT,
    
    eh_vendedor BOOLEAN DEFAULT FALSE
);

CREATE TABLE Categoria (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE Produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    id_vendedor INT NOT NULL,

    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco FLOAT NOT NULL,
    estoque INT NOT NULL,
    
    id_categoria INT,
    FOREIGN KEY (id_vendedor) REFERENCES Usuarios (id_usuarios),
    FOREIGN KEY (id_categoria) REFERENCES Categoria (id_categoria)
);

CREATE TABLE Foto_Produto (
    id_foto INT PRIMARY KEY AUTO_INCREMENT,

    url VARCHAR(255) NOT NULL,

    id_produto INT NOT NULL,
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto)
);

CREATE TABLE Transportadora (
    id_transportadora INT PRIMARY KEY AUTO_INCREMENT,

    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(15)
);

CREATE TABLE Pedido (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,

    data_pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
    status_pagamento ENUM('Pendente', 'Pago', 'Cancelado', 'Estornado') DEFAULT 'Pendente',
    status_entrega ENUM('Pendente', 'Em Transporte', 'Entregue', 'Cancelado') DEFAULT 'Pendente',
    codigo_rastreio VARCHAR(100),
    prazo_entrega DATE,

    id_comprador INT NOT NULL,
    FOREIGN KEY (id_comprador) REFERENCES Usuarios(id_usuarios),
    
    id_transportadora INT,
    FOREIGN KEY (id_transportadora) REFERENCES Transportadora(id_transportadora)
);

CREATE TABLE Item_Pedido (
    id_item INT PRIMARY KEY AUTO_INCREMENT,
    
    quantidade INT NOT NULL,
    preco_unitario FLOAT NOT NULL,

    id_pedido INT NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido),

    id_produto INT NOT NULL,
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto)
);

CREATE TABLE Pagamento (
    id_pagamento INT PRIMARY KEY AUTO_INCREMENT,

    tipo_pagamento ENUM('Cartao', 'Pix', 'Boleto') NOT NULL,
    valor_pago FLOAT NOT NULL,
    data_pagamento DATETIME DEFAULT CURRENT_TIMESTAMP,
    numero_parcelas INT DEFAULT 1,

    id_pedido INT NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido)
);

CREATE TABLE Avaliacao_Produto (
    id_avaliacao INT PRIMARY KEY AUTO_INCREMENT,
    
    id_comprador INT NOT NULL,
    nota INT NOT NULL CHECK (nota BETWEEN 1 AND 5),
    comentario TEXT,
    data_avaliacao DATETIME DEFAULT CURRENT_TIMESTAMP,

    id_produto INT NOT NULL,
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto),

    FOREIGN KEY (id_comprador) REFERENCES Usuarios(id_usuarios)
);

CREATE TABLE Avaliacao_Vendedor (
    id_avaliacao INT PRIMARY KEY AUTO_INCREMENT,

    nota INT NOT NULL CHECK (nota BETWEEN 1 AND 5),
    comentario TEXT,
    data_avaliacao DATETIME DEFAULT CURRENT_TIMESTAMP,

    id_vendedor INT NOT NULL,
    FOREIGN KEY (id_vendedor) REFERENCES Usuarios(id_usuarios),

    id_comprador INT NOT NULL,
    FOREIGN KEY (id_comprador) REFERENCES Usuarios(id_usuarios)
);
