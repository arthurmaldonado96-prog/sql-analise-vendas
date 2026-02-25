-- =============================================
-- Projeto: Análise de Vendas
-- Autor: Arthur
-- Banco: Microsoft SQL Server
-- =============================================
-- Inserindo dados nas tabelas


INSERT INTO dClientes(id_cliente, nome, cidade, estado)
  VALUES
    (1,'Ana Silva','São Paulo','SP'),
    (2,'Carlos Souza','Rio de Janeiro','RJ'),
    (3,'Mariana Lima','Belo Horizonte','MG'),
    (4,'João Pereira','Curitiba','PR'),
    (5,'Lucas Santos','São Paulo','SP')

INSERT INTO dProdutos(id_produto, nome_produto, categoria, preco)
  VALUES
    (1,'Apartamento 2Q','Econômico',180000),
    (2,'Apartamento 3Q','Econômico',220000),
    (3,'Apartamento 2Q com varanda','Econômico',200000)

INSERT INTO fVendas(id_venda, id_cliente, id_produto, data_venda, quantidade)
  VALUES
    (1,1,1,'10/01/2024',1),
    (2,2,2,'15/01/2024',1),
    (3,3,3,'05/02/2024',1),
    (4,1,2,'20/02/2024',1),
    (5,4,1,'01/03/2024',1),
    (6,5,3,'18/03/2024',1)
