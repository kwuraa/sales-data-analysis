# 📊 Sales Analysis Project

## 📌 Sobre o projeto
Este projeto tem como objetivo analisar dados de vendas utilizando SQL, gerando insights para apoiar a tomada de decisão.

---

## 🧠 Tecnologias utilizadas
- SQL
- SQLite
- Excel / Power BI (opcional)

---

## 📂 Estrutura dos dados

| Coluna   | Descrição |
|----------|----------|
| id       | ID da venda |
| product  | Produto |
| city     | Cidade |
| quantity | Quantidade vendida |
| price    | Preço unitário |

---

## ❓ Perguntas de negócio

As seguintes perguntas foram respondidas durante a análise:

1. Quantas vendas existem no dataset?
2. Qual o faturamento total da empresa?
3. Qual o ticket médio por venda?
4. Qual produto vende mais (em quantidade)?
5. Qual produto gera mais faturamento?
6. Qual cidade possui maior volume de vendas?
7. Qual cidade gera mais faturamento?
8. Quais são os 3 produtos mais vendidos?
9. Qual é o produto menos vendido?
10. Qual produto é mais vendido em cada cidade?

---

## 📊 Análises realizadas

- Total de vendas (`COUNT`)
- Faturamento total (`SUM`)
- Ticket médio
- Agrupamento por produto e cidade (`GROUP BY`)
- Ordenação de resultados (`ORDER BY`)
- Ranking de dados (`LIMIT` e funções analíticas)

---

## 📈 Principais insights

- O produto com maior faturamento pode não ser o mais vendido em quantidade
- Cidades com maior volume de vendas nem sempre são as mais lucrativas
- Produtos com preço mais alto impactam diretamente no faturamento total
- O ticket médio ajuda a entender o valor médio por venda

---

## 🚀 Como executar

1. Criar a tabela `sales`
2. Inserir os dados do arquivo `dataset.csv`
3. Executar as queries do arquivo `queries.sql`

---

## 💼 Autor
Matheus Morais Kawamura