-- =============================================
-- Projeto: Análise de Vendas
-- Autor: Arthur
-- Banco: Microsoft SQL Server
-- =============================================
--Métricas de negócios

--Receita total
SELECT 
    SUM(p.preco * v.quantidade) AS receita_total
FROM fVendas v
JOIN dProdutos p ON v.id_produto = p.id_produto;

--Receita mensal
SELECT 
    FORMAT(data_venda, 'MM-yyyy') AS mes_ano,
    SUM(p.preco * v.quantidade) AS receita_mensal
FROM fVendas v
JOIN dProdutos p ON v.id_produto = p.id_produto
GROUP BY FORMAT(data_venda, 'MM-yyyy')
ORDER BY mes_ano;

--Crescimento mês a mês (window function)
WITH ReceitaMensal AS (
    SELECT 
        FORMAT(data_venda, 'MM-yyyy') AS mes_ano,
        SUM(p.preco * v.quantidade) AS receita
    FROM fVendas v
    JOIN dProdutos p ON v.id_produto = p.id_produto
    GROUP BY FORMAT(data_venda, 'MM-yyyy')
)

SELECT 
    mes_ano,
    receita,
    LAG(receita) OVER (ORDER BY mes_ano) AS mes_anterior,
    receita - LAG(receita) OVER (ORDER BY mes_ano) AS crescimento
FROM ReceitaMensal;
