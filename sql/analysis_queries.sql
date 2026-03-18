-- selecionando todas as tabelas
SELECT * FROM sales;

-- consultas básicas ( mostrar 3 colunas)
SELECT product, city, quantity
FROM sales;


-- mostrar apenas vendas feitas em alguma cidade especifica (SP, RJ, MG)
SELECT *
FROM sales
WHERE city = 'RJ';

-- mostrar apenas vendas em que a quantidade é maior que 5
SELECT * 
FROM sales 
WHERE quantity > 5;

--estatistica básica 
SELECT SUM(quantity) as total_vendidos
FROM sales;

-- preco medio dos produtos
SELECT AVG(price) as preco_medio
FROM sales;

-- quantas vendas existem neste dataset
SELECT COUNT(*) as vendas_total
FROM sales;

-- Descobrir quantidade vendida por produto
SELECT product, 
        SUM(quantity) as total
FROM sales
GROUP BY product;

-- Descobrir a quantidade vendida por cidade 
SELECT city, 
        SUM(quantity) as total
FROM sales
GROUP BY city;

-- Descobrir faturamento por produto
SELECT product, 
        SUM(quantity * price) as faturamento
FROM sales
GROUP BY product;

-- ANÁLISE DE NEGÓCIO - descobrir qual produto vende mais
SELECT product, 
        SUM(quantity) as produtos_vendidos
FROM sales
GROUP BY product
ORDER BY produtos_vendidos DESC;

-- Descobrir qual cidade tem mais vendas.
SELECT city, 
        SUM(quantity) as produtos_vendidos
FROM sales
GROUP BY city
ORDER BY produtos_vendidos DESC;

-- Descobrir qual produto gera mais faturamento.
SELECT product, 
        SUM(quantity * price) as faturamento
FROM sales 
GROUP BY product
ORDER BY faturamento DESC
LIMIT 1;

-- Calcular faturamento total da empresa.
SELECT SUM(quantity * price) as total_revenue
FROM sales;

-- Descobrir produto mais vendido em cada cidade.
SELECT product, city, 
        SUM(quantity) as total_vendido
FROM sales
GROUP BY city, product
ORDER BY city, product DESC;

-- Mostrar top 3 produtos mais vendidos.
SELECT product, 
        Sum(quantity) as total_vendido
FROM sales
GROUP BY product
ORDER BY total_vendido DESC
LIMIT 3;

-- Mostrar cidade com maior faturamento.
SELECT city, 
        SUM(quantity * price) as faturamento_total
FROM sales
GROUP BY city
ORDER BY faturamento_total DESC
LIMIT 1;

-- Descobrir produto menos vendido.
SELECT product, 
        Sum(quantity) as vendas_total
FROM sales
GROUP BY product
ORDER BY vendas_total ASC
LIMIT 1;

-- Descobrir ticket médio de venda.
SELECT 
    SUM(quantity * price) as faturamento_total,
    COUNT(*) as total_vendas,
    SUM(quantity * price) * 1.0 / COUNT(*) as ticket_medio
FROM sales;

-- Criar um relatório com:
-- | product | vendas | faturamento |

SELECT product,
    SUM(quantity) as total_vendido,
    SUM(quantity * price) as faturamento
FROM sales 
GROUP BY product
ORDER BY faturamento DESC;
