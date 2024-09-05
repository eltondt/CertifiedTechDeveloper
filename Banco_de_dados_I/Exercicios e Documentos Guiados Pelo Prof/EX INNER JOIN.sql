USE filmes_db;

-- Utilizando a base de dados filmes_db, queremos saber, por um lado, 
-- os títulos e nomes dos gêneros de todas as séries registradas.
SELECT
	s.id,
	s.titulo AS 'Titulo da série',
    s.genero_id AS 'Id do genero',
    g.nome AS 'Nome do gênero',
    g.id AS 'Id do genero'
FROM series AS s -- PONTO DE PARTIDA É A TABELA DE SÉRIES
INNER JOIN generos AS g ON s.genero_id = g.id;

-- Por outro lado, precisamos listar os títulos dos episódios 
-- juntamente com os nomes e sobrenomes dos atores que atuam em cada um deles.
SELECT
	episodios.titulo AS 'Título do episodio',
    atores.nome AS 'Nome do ator',
    atores.sobrenome AS 'Sobrenome do ator'
FROM atores
INNER JOIN ator_episodio ON ator_episodio.ator_id = atores.id
INNER JOIN episodios ON episodios.id = ator_episodio.episodio_id
ORDER BY
	episodios.titulo;

-- Para o nosso próximo desafio, precisamos obter todos os atores ou atrizes (nome e sobrenome) 
-- que trabalharam em qualquer filme de Harry Potter.
SELECT 
	atores.nome AS 'Nome',
    atores.sobrenome AS 'Sobrenome',
    filmes.titulo AS 'Nome do filme'
FROM atores
INNER JOIN ator_filme ON ator_filme.ator_id = atores.id
INNER JOIN filmes ON filmes.id = ator_filme.movie_id
WHERE
	filmes.titulo LIKE '%Harry Potter%';

-- Faça uma consulta  que mostre a quantidade  de filmes por gênero.
SELECT
	generos.nome AS 'Nome do genero',
    COUNT(*) AS 'Quantidade de repetições'
FROM filmes
INNER JOIN generos ON generos.id = filmes.genero_id
GROUP BY
	generos.nome;