USE filmes_db;

-- 1 - Mostre o título de todas as séries e use alias 
-- para que o nome do campo fique com a primeira letra maiúscula.
-- ALIAS -> Comando responsável por alterar de maneira TEMPORÁRIA o nome de uma COLUNA em determinada TABELA.
SELECT
	titulo AS 'Título' 
FROM series;

-- 2 - Busque por título de filmes com Avaliação superior a 3, 
-- com mais de 1 prêmio e com data de lançamento entre '01-01-1988' e '31-12-2009'. 
-- Classifique os resultados em ordem decrescente.
SELECT
	*
FROM filmes
WHERE
	avaliacao > 3
AND
	premios > 1
AND
	data_lancamento BETWEEN '1988-01-01' AND '2009-12-31'
ORDER BY
	titulo DESC;
    
-- 3 - Fazer um top 3 com os filmes a partir do 10º registro da consulta anterior.
-- LIMIT -> Cláusula responsável por limitar o número de linhas retornadas na consulta
-- OFFSET -> Para dar um ponto de partida no retorno dos dados
SELECT
	*
FROM filmes
WHERE
	avaliacao > 3
AND
	premios > 1
AND
	data_lancamento BETWEEN '1988-01-01' AND '2009-12-31'
ORDER BY
	titulo DESC
LIMIT 3
OFFSET 10;

-- 4 - Quais são os 3 piores episódios considerando suas avaliações?
-- R:  I Think Im Gonna Like It Here, Valar Dohaeris, The Magnificent Seven.
SELECT
	*
FROM episodios
ORDER BY
	avaliacao ASC
LIMIT 3;

-- 5 - Liste nome, sobrenome e avaliacao da tabela Atores. 
-- Utilize Alias para mostrar o título das colunas com a 1a letra maiúscula. 
-- Substitua o nome  da coluna id por Identificação e da coluna avaliacao por Classificação.
SELECT
	id AS 'Identificação',
    nome AS 'Nome',
    sobrenome AS 'Sobrenome',
    avaliacao AS 'Classificação'
FROM atores;


