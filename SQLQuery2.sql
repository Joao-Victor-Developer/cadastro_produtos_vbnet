IF DB_ID('cadastro_produtos') IS NULL
BEGIN
    CREATE DATABASE cadastro_produtos;
END
GO

USE cadastro_produtos;
GO

IF OBJECT_ID('produtos', 'U') IS NOT NULL
BEGIN
    DROP TABLE produtos;
END
GO

CREATE TABLE produtos (
    id INT IDENTITY(1,1) PRIMARY KEY,
    descricao_produto VARCHAR(150) NOT NULL,
    data_lote DATE NOT NULL,
    marca_fabricante VARCHAR(100) NOT NULL,
    quantidade_disponivel INT NOT NULL,
    preco_custo DECIMAL(10,2) NOT NULL,
    preco_venda DECIMAL(10,2) NOT NULL,
    foto_produto VARCHAR(255) NULL
);
GO