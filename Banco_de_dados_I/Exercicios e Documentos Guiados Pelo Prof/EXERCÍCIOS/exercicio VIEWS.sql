-- MESA DE TRABALHO

-- VIEW - Parte I
-- Clientes

-- 1. Crie uma View com os seguintes dados do cliente: Id, contato, Fax e o telefone.

USE EMARKET;

CREATE VIEW VW_CLIENTE AS
    SELECT 
        CLIENTEID AS CLIENTE_ID,
        CONTATO AS CONTATO,
        FAX AS FAX,
        TELEFONE AS TELEFONE
    FROM
        CLIENTES;



-- 2. Liste os números de telefone dos clientes que não possuem fax.
-- Faça isso de duas maneiras diferentes:
-- a. Consultando a tabela clientes


SELECT 
    CLIENTEID AS CLIENTE_ID,
    CONTATO AS CONTATO,
    FAX AS FAX,
    TELEFONE AS TELEFONE
FROM
    CLIENTES
WHERE
    FAX = '';
    
    
 -- b. Consultando a view do cliente
 
 SELECT
	*
FROM
	VW_CLIENTE
WHERE
	FAX = '';
   
   
   
  -- Fornecedores

-- 1. Crie uma view com os seguintes dados do fornecedor: Id, contato,
-- empresa e endereço. Para o endereço, pegue o endereço, cidade, código
-- postal e país.


CREATE VIEW VW_FORNEDEDORES AS
    SELECT 
        PROVEDORID AS PROVEDOR_ID,
        CONTATO AS CONTATO,
        EMPRESA AS EMPRESA,
        CONCAT(ENDERECO,
                ' ,',
                CIDADE,
                ' ,',
                REGIOES,
                ' ,',
                CODIGOPOSTAL,
                ' ,',
                PAIS) AS ENDERECO
    FROM
        PROVEDORES;



-- 2. Liste os fornecedores que moram na Avenida das Americanas, no Brasil. Faça de duas formas diferentes:
-- a. Consultando a tabela de fornecedores


SELECT 
       *
FROM
	PROVEDORES
WHERE 
	ENDERECO LIKE '%Americanas%';


-- b. Consultando a view do fornecedor

SELECT 
    *
FROM
    VW_FORNEDEDORES
WHERE
    ENDERECO LIKE '%Americanas%';


-- VIEW - Parte II - Desafio
-- 1. Crie uma view dos produtos que será usada ​​para controle de estoque. Inclua o id e nome do produto, preço unitário arredondado sem decimais, unidades
-- em estoque e as unidades encomendadas. Inclua também uma nova coluna PRIORIDADE, com os seguintes valores:
-- BAIXA se as unidades encomendadas forem zero
-- MÉDIA se as unidades pedidas forem menores do que as unidades em estoque
-- URGENTE se as unidades pedidas não dobrarem o número de unidades em estoque
-- PRIORITÁRIO caso contrário

CREATE VIEW VW_PRODUTOS_PRIORIDADE AS 
SELECT 
    P.PRODUTOID,
    P.PRODUTONOME,
    ROUND(P.PRECOUNITARIO, 0) AS PRECO_UNIDADE,
    P.UNIDADESESTOQUE,
    P.UNIDADESPEDIDAS,
    CASE
        WHEN UNIDADESPEDIDAS = 0 THEN 'BAIXA'
        WHEN UNIDADESPEDIDAS < UNIDADESESTOQUE THEN 'MÉDIA'
        WHEN UNIDADESPEDIDAS < UNIDADESESTOQUE * 2 THEN 'URGENTE'
        ELSE 'PRIORITÁRIO'
    END AS PRIORIDADE
FROM
    PRODUTOS AS P;



-- 2.  É necessário um relatório para identificar problemas de estoque. 
-- Utilizando a view criada no exercício anterior, indique, para cada prioridade, 
-- quantos produtos existem e seu preço médio. Não inclua prioridades para as que 
-- possuem menos de 5 produtos.

SELECT 
    PRIORIDADE,
    COUNT(PRODUTOID) AS TOTAL_PRODUTOS,
    ROUND(AVG(PRECO_UNIDADE), 2) AS PRECO_MEDIO
FROM
    VW_PRODUTOS_PRIORIDADE
GROUP BY PRIORIDADE
HAVING TOTAL_PRODUTOS > 5;







