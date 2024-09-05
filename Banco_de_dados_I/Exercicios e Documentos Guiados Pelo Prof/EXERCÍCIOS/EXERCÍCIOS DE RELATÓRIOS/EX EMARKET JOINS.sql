-- Faça uma consulta sobre o faturamento do e-market. Inclua as seguintes informações:
-- ID da fatura
-- data da fatura
-- nome da empresa de correio (O id da empresa consta da tabela faturas no campo FormaEnvio
-- nome do cliente
-- categoria do produto vendido
-- nome do produto(Você chega ao produto consultando os detalhes da fatura)
-- preço unitário
-- quantidade

SELECT 
     FATURAS.FATURAID,
     FATURAS.DATAFATURA,
     CORREIOS.CORREIOID,
     CLIENTES.CLIENTEID,
     CATEGORIAS.CATEGORIAID,
     PRODUTOS.PRODUTONOME,
     PRODUTOS.PRECOUNITARIO,
     PRODUTOS.QUANTIDADEPORUNIDADE
FROM FATURAS
INNER JOIN CORREIOS ON CORREIOS.CORREIOID = FATURAS.FATURAENVIO
INNER JOIN CLIENTES ON CLIENTES.CLIENTEID = FATURAS.CLIENTEID
INNER JOIN DETALHEFATURA ON DETALHEFATURA.FATURAID = FATURAS.FATURAID;
     


-- Liste todas as categorias junto com informações sobre seus produtos. Incluir todas as categorias, 
]-- mesmo que não tenham produtos.
SELECT *
FROM CATEGORIAS
LEFT JOIN PRODUTOS ON CATEGORIAS.CATEGORIAID = PRODUTOS.CATEGORIAID;

-- Liste as informações de contato de clientes que nunca compraram no emarket.
SELECT *
FROM clientes
LEFT JOIN FATURAS ON FATURAS.CLIENTEID = CLIENTES.CLIENTEID
WHERE FATURAS.FATURAID IS NULL;

-- Faça uma lista de produtos. Para cada um, indique seu nome, categoria e as informações de contato de seu fornecedor. 
-- Lembre-se que podem existir produtos para os quais o fornecedor não foi indicado.

SELECT PRODUTOS.PRODUTONOME AS 'NOME DO PRODUTO', CATEGORIAS.CATEGORIANOME AS 'NOME DA CATEGORIA', PROVEDORES.CONTATO AS 'NOME DO CONTATO'
FROM PRODUTOS
LEFT JOIN CATEGORIAS ON CATEGORIAS.CATEGORIAID = PRODUTOS.CATEGORIAID
LEFT JOIN PROVEDORES ON PROVEDORES.PROVEDORID = PRODUTOS.CATEGORIAID;


-- Para cada categoria, liste o preço unitário médio de seus produtos.
SELECT PRODUTOS.PRECOUNITARIO AS 'VALOR MÉDIO', CATEGORIAS.CATEGORIANOME AS 'NOME DO PRODUTO'
FROM CATEGORIAS
INNER JOIN PRODUTOS ON PRODUTOS.CATEGORIAID = CATEGORIAS.CATEGORIAID
GROUP BY
PRODUTOS.PRECOUNITARIO ORDER BY PRODUTOS.PRECOUNITARIO DESC;

-- Para cada cliente, indique a última nota fiscal de compra. Inclua clientes que nunca compraram no e-market.
SELECT CLIENTE
     MAX()
LEFT JOIN
MAX
ORDER BY 

-- Todas as faturas têm uma empresa de correio associada (envio). Gere uma lista com todas as empresas de correio e o número de faturas correspondentes. Execute a consulta usando RIGHT JOIN.

