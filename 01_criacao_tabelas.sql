-- =============================================
-- Projeto: Análise de Vendas
-- Autor: Arthur
-- Banco: Microsoft SQL Server
-- =============================================
-- Criando banco de dados e tabelas

CREATE DATABASE PortfolioVendas;


USE PortfolioVendas;

CREATE TABLE dClientes (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100),
    cidade VARCHAR(100),
    estado CHAR(2)
);

CREATE TABLE dProdutos (
    id_produto INT PRIMARY KEY,
    nome_produto VARCHAR(100),
    categoria VARCHAR(100),
    preco DECIMAL(10,2)
);

CREATE TABLE fVendas (
    id_venda INT PRIMARY KEY,
    id_cliente INT,
    id_produto INT,
    data_venda DATE,
    quantidade INT,
    FOREIGN KEY (id_cliente) REFERENCES dClientes(id_cliente),
    FOREIGN KEY (id_produto) REFERENCES dProdutos(id_produto)
);
