# 📊 Sales Data Analysis

## 📌 Sobre o projeto
Este projeto tem como objetivo analisar dados de vendas utilizando SQL, com foco em gerar insights para apoiar a tomada de decisão de negócio.

---

## 🎯 Objetivos
- Analisar o desempenho de vendas
- Identificar produtos mais vendidos
- Avaliar faturamento por produto e cidade
- Calcular métricas importantes como ticket médio

---

## 🧠 Tecnologias utilizadas
- SQL
- SQLite
- Excel / Power BI (opcional)

---

## 📂 Estrutura do projeto
```
sales-data-analysis/
│
├── sql/
│   ├── analysis_queries.sql             # Consultas de análise
│   ├── create_tables.sql                # Criação das tabelas
│   └── insert_data.sql                  # Inserção dos dados
├── dataset.csv                          # Dados de vendas
├── database.db                          # Banco de dados SQLite
└── README.md                            # Documentação do projeto
```

---

## 📊 Estrutura dos dados

| Coluna   | Descrição |
|----------|----------|
| id       | ID da venda |
| product  | Produto |
| city     | Cidade |
| quantity | Quantidade vendida |
| price    | Preço unitário |

---

## ❓ Perguntas de negócio

1. Quantas vendas existem no dataset?
2. Qual o faturamento total da empresa?
3. Qual o ticket médio por venda?
4. Qual produto vende mais?
5. Qual produto gera mais faturamento?
6. Qual cidade tem mais vendas?
7. Qual cidade gera mais faturamento?
8. Quais são os 3 produtos mais vendidos?
9. Qual é o produto menos vendido?
10. Qual produto é mais vendido em cada cidade?

---

## 📊 Resultados

- Total de vendas: **100**
- Faturamento total: **R$ 5.825**
- Ticket médio: **R$ 58,25**
- Produto mais vendido: **Pasta**
- Produto mais lucrativo: **Shampoo**
- Cidade com maior volume de vendas: **SP**
- Cidade com maior faturamento: **SP**

---

## 📈 Análises realizadas

- Contagem de registros (`COUNT`)
- Soma de valores (`SUM`)
- Média (`AVG`)
- Agrupamento (`GROUP BY`)
- Ordenação (`ORDER BY`)
- Cálculo de métricas de negócio

---

## 📊 Principais insights

- Produtos com maior preço impactam diretamente no faturamento
- Nem sempre o produto mais vendido é o mais lucrativo
- Algumas cidades têm maior volume de vendas, mas menor faturamento
- O ticket médio ajuda a entender o comportamento de compra

---

## 🚀 Como executar o projeto

1. Criar a tabela no banco de dados:

```sql
CREATE TABLE sales (
    id INTEGER,
    product TEXT,
    city TEXT,
    quantity INTEGER,
    price INTEGER
);
```

2. Inserir os dados do arquivo `dataset.csv`

3. Executar as queries do arquivo `queries.sql`

---

## 📊 Exemplo de análise

```sql
SELECT product,
       SUM(quantity) AS total_vendido,
       SUM(quantity * price) AS faturamento
FROM sales
GROUP BY product
ORDER BY faturamento DESC;
```

---

## 💼 Autor
Matheus Morais Kawamura
