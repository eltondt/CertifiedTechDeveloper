USE musimundos;

-- Utilizando a tabela Faturas, extraia a quantidade de faturas emitidas por data. Responda:
-- Em qual data foram emitidas mais faturas?
-- Quantas faturas foram emitidas nesta data?

SELECT
*
FROM faturas;

SELECT 
data_fatura,
COUNT(*)
FROM faturas;

-- Liste o país de cobrança, a quantidade, o total,  a média e o maior valor das faturas emitidas por país, 
-- na data encontrada no exercício anterior..
SELECT 
COUNT(*)data_fatura, 
COUNT(*)pais_cobranca,
ROUND(AVG(valor_total), 2)
FROM faturas
GROUP BY
data_fatura, pais_cobranca, valor_total
ORDER BY
	COUNT(*) DESC;

SELECT
pais_cobranca,
COUNT(AVG(valor_total))
FROM faturas
GROUP BY
pais_cobranca,
valor_total
HAVING
COUNT(*) ;

-- Responda
-- Qual o valor total de faturas do Canadá?
-- Qual a média das faturas do Brasil?
-- Quantas faturas a Argentina possui?
-- Qual o maior valor da fatura dos Estados Unidos?

-- Utilizando a tabela Clientes, liste os países que possuem mais de 4 clientes. Responda:
-- Quantos países foram listados?
-- Quantos clientes possuem os Estados Unidos?
-- Quais são os países que possuem 5 clientes?

-- Liste os clientes do Brasil que moram no estado de São Paulo.

-- Na tabela cancoes, liste a quantidade de canções, o preço unitário e o valor total das canções por id do gênero. Responda:
-- Qual gênero possui mais canções?
-- Qual o valor total das canções de gênero 4?
-- Qual o valor unitário das canções?
-- Qual o valor unitário das canções do gênero 21?

