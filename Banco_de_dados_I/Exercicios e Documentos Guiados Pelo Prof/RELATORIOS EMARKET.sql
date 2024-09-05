USE EMarket;

-- Funções de agregação -> São utilizadas SOMENTE dentro do corpo do SELECT
-- Cláusulas de agregação -> Devem respeitar a sintaxe SQL. Geralmente utilizadas como as últimas instruções.

-- COUNT
-- Função responsável por contar a quantidade de linhas retornadas de um SELECT
-- Quantidade de clientes cadastrados na minha base de dados
SELECT 
	COUNT(*)
FROM Clientes;

SELECT
	COUNT(*)
FROM Clientes
WHERE
	Empresa LIKE 'a%';

-- MAX
-- Função responsável por retornar o valor máximo encontrado por um SELECT
-- Saber o valor máximo gasto com o tranporte das faturas
SELECT 
	MAX(Transporte) 
FROM Faturas;
    
-- MIN
-- Função responsável por retornar o valor mínimo encontrado por um SELECT
-- Saber o valor mínimo gasto com o tranporte das faturas
SELECT 
	MIN(Transporte) AS 'Valor mínimo gasto com transporte'
FROM Faturas;

-- AVG
-- Função responsável por retornar o valor médio encontrado por um SELECT
-- Saber o valor médio gasto com transporte das faturas
-- Função de formatação chamada ROUND, cujo objetivo é arredondar de acordo com a quantidade de casas decimais
-- passadas por parametro
SELECT
	ROUND(AVG(Transporte), 2)
FROM Faturas;

-- SUM
-- Função responsável por retornar o valor somado de todas as linhas encontradas por um SELECT
-- Saber o valor total gasto com transporte das faturas
SELECT
	ROUND(SUM(Transporte), 2)
FROM Faturas;

-- GROUP BY
-- Agrupa dados repetidos a partir de um conjunto de dados
SELECT
	Cidade,
    Pais,
    COUNT(*)
FROM Clientes
GROUP BY
	Cidade,
    Pais;

-- HAVING -> Só utilizam em conjuntos de dados JÁ AGRUPADOS
-- Maneira de aplicar condições dentro de um conjunto de dados
SELECT
	Cidade,
    Pais,
    COUNT(*)
FROM Clientes
GROUP BY
	Cidade,
    Pais
HAVING
	COUNT(*) > 2
ORDER BY
	COUNT(*) DESC;

-- SUBQUERY OU SUBCONSULTA
-- Uma consulta dentro de outra consulta. 
-- Ana Trujillo Emparedados y helados
SELECT
	*
FROM Faturas
WHERE
	ClienteID = (SELECT ClienteID FROM Clientes WHERE Empresa = 'Ana Trujillo Emparedados y helados'); -- ANATR



