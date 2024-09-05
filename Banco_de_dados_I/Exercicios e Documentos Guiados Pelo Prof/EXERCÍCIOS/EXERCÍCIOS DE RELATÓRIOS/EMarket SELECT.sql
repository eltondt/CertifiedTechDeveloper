-- Categorias e produtos

-- 1) Queremos ter uma lista de todas as categorias.
SELECT
*
FROM categorias;


-- 2) Como as categorias não possuem imagens, você está interessado em obter apenas um Nome e descrição da lista de categorias.
SELECT
 categoriaNome ,
 Descricao
FROM categorias;

-- 4) Existem produtos descontinuados? (Descontinuado = 1). Não.
SELECT 
descontinuado 
FROM produtos
WHERE descontinuado = 1
;


-- 5) Na sexta-feira, você deve se reunir com o fornecedor nr. 8. Quais são os produtos que eles fornecem? 4 produtos, chocolate e biscoitos.
SELECT
*
from produtos 
WHERE provedorID = 8
;

-- 6) Queremos saber todos os produtos cujo preço unitário se encontra entre 10 e 22.

SELECT 
* 
FROM produtos
WHERE PrecoUnitario  BETWEEN  10 and 22
order by precoUnitario desc ;

-- 7) Fica definido que um produto deve ser solicitado ao fornecedor se suas unidades em estoque forem inferiores ao nível de reabastecimento. Existem produtos a solicitar? Sim.

SELECT 
UnidadesEstoque, 
NivelReabastecimento
FROM produtos
 where UnidadesEstoque <  NivelReabastecimento ;
 
 -- 8) Você quer saber todos os produtos da lista anterior, mas que as unidades pedidas sejam iguais a zero.
 
SELECT 
*
FROM produtos
 where UnidadesPedidas = 0;
 
 -- CLIENTES
 -- 1) Obtenha uma lista de todos os clientes com contato, empresa, cargo, País. Classifique a lista por país.
 
 SELECT
contato,
empresa,
pais
 FROM clientes
 order by pais asc;
 
 -- 2) Queremos atender todos os clientes que possuem o título de  “Proprietário". Esse título estará em inglês (Owner).

SELECT
titulo
FROM clientes
where titulo  like '%owner';
 
 
 -- 3) A operadora de telefonia atendeu um cliente e não lembra o nome dele. Sabe apenas que começa com "C". Podemos ajudá-lo a obter uma lista com todos os contatos que começam com a letra C?

SELECT
empresa,
telefone,
fax
FROM clientes
where empresa like 'C%';

 -- Faturas
 -- 1) Obtenha uma lista de todas as faturas, ordenadas por data da fatura em ordem ascendente.

SELECT 
*
FROM faturas
order by DataFatura asc;

-- 2) Agora é necessário uma lista de faturas com o país de envio "EUA" e que a FormaeEnvio seja diferente de 3.

SELECT 
PaisEnvio,
FormaEnvio
FROM faturas
where FormaEnvio  != 3 and
 PaisEnvio like'USA';

-- 3) O cliente 'GOURL' fez um pedido? Sim.

SELECT
*

FROM Faturas
where ClienteID like 'Gourl';

-- 4) Você deseja visualizar todas as faturas dos funcionários 2, 3, 5, 8 e 9.

SELECT
*

FROM Faturas 
where EmpregadoID IN (2,3, 5, 8, 9);

-- Queries I - Parte II
-- Nesta segunda parte, vamos intensificar a prática de consultas SELECT, adicionando ALIAS, LIMIT e OFFSET.
-- 1) Obtenha a lista de todos os produtos em ordem decrescente por preço unitário.

SELECT
*
FROM produtos order by PrecoUnitario desc;

-- 2) Obtenha a lista dos 5 melhores produtos cujo preço unitário é o mais "Caro".
SELECT
*
FROM produtos
order by PrecoUnitario desc limit 5;

-- 3) Obtenha um top 10 dos produtos com mais unidades em estoque.
SELECT
*
FROM produtos
order by UnidadesEstoque desc limit 10;

-- DetalheFatura
-- 1) Obtenha uma lista de FaturaId, Produto, Quantidade.

Select 
FaturaId,
ProdutoID,
Quantidade
from detalheFatura;

-- 2) Classifique a lista acima por Quantidade decrescente. 

Select 
FaturaId,
ProdutoID,
Quantidade
from detalheFatura order by Quantidade desc;

-- 3) Filtre a mesma lista apenas para os produtos cuja quantidade esteja entre 50 e 100. 


Select 
FaturaId,
ProdutoID,
Quantidade
from detalheFatura 
where quantidade between 50 and 100;

-- 4) Em outra nova consulta, obtenha uma lista com os seguintes nomes de coluna: Número da fatura (FaturaId), Produto (ProdutoId), Total (Preço Unitário * Quantidade)

Select 
FaturaId as'Número da fatura',
ProdutoID as 'Produto',
(Quantidade*desconto) as 'Total'
from detalheFatura ;

-- Extras

-- 1) Obtenha uma lista de todos os clientes que moram no “Brasil” ou “México” ou que tenham um título que começa com "Vendas" (o termo estará em inglês: ‘Sales’);

 SELECT
*
 FROM clientes
where pais = 'Brazil' or Pais = 'Mexico' or Titulo like 'sales%';

-- 2) Obtenha uma lista de todos os clientes que pertencem a uma empresa que comece com a letra “A”.
 SELECT
*
 FROM clientes
where empresa  like 'A%';

-- 3) Obtenha uma lista com os seguinte dados: Cidade, Contato( renomeie para Nome e Sobrenome), Título (renomeie para Cargo), de todos os clientes que são da cidade "Madrid".

 SELECT
Cidade,
Contato as ' Nome e Sobrenome',
Titulo as 'Cargo'
 FROM clientes where cidade = 'Madrid';
 
 -- 4) Obtenha uma lista de todas as faturas com ID entre 10.000 e 10.500

SELECT
*
FROM faturas where faturaID between 10000 and 10500;


-- 5) Obtenha uma lista de todas as faturas com ID entre 10.000 e 10.500 ou de clientes com IDs começando com "B".

SELECT
*
FROM faturas where faturaID between 10000 and 10500 or ClienteID like 'B%';

-- 6) Existem notas fiscais que informam a cidade expedidora “Vancouver” ou que utilizam FormaEnvio =  3?
SELECT
*
FROM faturas where CidadeEnvio ='Vancouver'or FormaEnvio = 3;


-- 7) Qual é a identificação do funcionário de “Buchanan”? 5.

select
*
from empregados where Sobrenome ='Buchanan';

-- 8) Existem Notas Fiscais com o EmpregadoId do funcionário acima? SIm muitas.

select
*
from Faturas where EmpregadoID = 5;