-- Categorias e Produtos
-- 1) Queremos ter uma lista de todas as categorias.

SELECT * FROM categorias;

-- Como as categorias não possuem imagens, 
-- você está interessado em obter apenas um Nome e descrição da lista de categorias.

SELECT CategoriaNome, descricao FROM categorias;

--  Obtenha uma lista dos produtos.

SELECT * FROM PRODUTOS;

-- Existem produtos descontinuados? (Descontinuado = 1). Não.

SELECT DESCONTINUADO FROM PRODUTOS WHERE DESCONTINUADO = 1;

-- Na sexta-feira, você deve se reunir com o fornecedor nr. 8. 
-- Quais são os produtos que eles fornecem? 4 produtos, chocolate e biscoitos.

SELECT * FROM provedores where provedorID = 8 ;
SELECT * FROM PRODUTOS where provedorID = 8 ;


-- Queremos saber todos os produtos cujo preço unitário se encontra
-- entre 10 e 22.

SELECT * FROM PRODUTOS where PRECOUNITARIO = 10 ORDER BY 10 AND 22 ;

--  Fica definido que um produto deve ser solicitado ao fornecedor se suas unidades em estoque forem 
-- inferiores ao nível de reabastecimento. Existem produtos a solicitar? Sim.



--  Você quer saber todos os produtos da lista anterior, mas que as unidades pedidas sejam iguais a zero.


-- Clientes
-- Obtenha uma lista de todos os clientes com contato, empresa, cargo, País. Classifique a lista por país.


-- Queremos atender todos os clientes que possuem o título de  “Proprietário". Esse título estará em inglês (Owner).



-- A operadora de telefonia atendeu um cliente e não lembra o nome dele. Sabe apenas que começa com "C". 
-- Podemos ajudá-lo a obter uma lista com todos os contatos que começam com a letra C?



-- Faturas
-- Obtenha uma lista de todas as faturas, ordenadas por data da fatura em ordem ascendente.


-- Agora é necessário uma lista de faturas com o país de envio "EUA" e
-- que a FormaeEnvio seja diferente de 3.


--  O cliente 'GOURL' fez um pedido? Sim.


-- Você deseja visualizar todas as faturas dos funcionários 2, 3, 5, 8 e 9.


-- Queries I - Parte II
-- Produtos
-- Obtenha a lista de todos os produtos em ordem decrescente por preço unitário.


-- Obtenha a lista dos 5 melhores produtos cujo preço unitário é o mais "Caro".


-- Obtenha um top 10 dos produtos com mais unidades em estoque.


-- DetalheFatura
-- Obtenha uma lista de FaturaId, Produto, Quantidade.



--  Classifique a lista acima por Quantidade decrescente. 


-- Filtre a mesma lista apenas para os produtos cuja quantidade esteja entre 50 e 100.


--  Em outra nova consulta, obtenha uma lista com os seguintes nomes de coluna: Número da fatura (FaturaId), 
-- Produto (ProdutoId), Total (Preço Unitário * Quantidade)


-- Extras
-- Obtenha uma lista de todos os clientes que moram no “Brasil” ou “México” ou que tenham um título que começa com "Vendas" 
-- (o termo estará em inglês: ‘Sales’);



-- Obtenha uma lista de todos os clientes que pertencem a uma empresa que comece com a letra “A”.


-- Obtenha uma lista com os seguinte dados: Cidade, Contato( renomeie para Nome e Sobrenome), 
-- Título (renomeie para Cargo), de todos os clientes que são da cidade "Madrid".
  

--  Obtenha uma lista de todas as faturas com ID entre 10.000 e 10.500


-- Obtenha uma lista de todas as faturas com ID entre 10.000 e 10.500 ou de clientes com IDs começando com "B".


--  Existem notas fiscais que informam a cidade expedidora “Vancouver” ou que utilizam FormaEnvio =  3?


-- Qual é a identificação do funcionário de “Buchanan”? 5.


-- Existem Notas Fiscais com o EmpregadoId do funcionário acima? SIm muitas.


