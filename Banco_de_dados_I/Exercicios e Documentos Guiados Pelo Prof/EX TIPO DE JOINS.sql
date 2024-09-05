USE Projeto_Spotify;

-- INNER JOIN
-- Retornar os valores em comum entre duas tabelas. Onde o VALOR de uma chave primária existe em uma
-- chave estrangeira

SELECT
	usuario.Nomeusuario,
    playlist.titulo
FROM usuario 
INNER JOIN playlist ON playlist.idusuario = usuario.idUsuario 
WHERE
	Nomeusuario = 'AGARCIA'
ORDER BY
	usuario.Nomeusuario;

-- LEFT JOIN
-- Trabalha com priorizações
-- Retorna TODOS os dados da TABELA DA ESQUERDA mesmo que, não possuam relação com a tabela da direita
SELECT
	usuario.Nomeusuario,
    playlist.titulo,
    estadoplaylist.descricao
FROM usuario
LEFT JOIN playlist ON playlist.idusuario = usuario.idUsuario
LEFT JOIN estadoplaylist ON estadoplaylist.idEstadoPlaylist = playlist.idestado
-- 1º momento = usuario | playlist
-- 2º momento = playlist | estadoplaylist
ORDER BY
	usuario.Nomeusuario;
    
-- RIGHT JOIN
-- Trabalha com priorizações
-- Retorna TODOS os dados da TABELA DA DIREITA mesmo que, não possuam relação com a tabela da esquerda
SELECT
	usuario.Nomeusuario,
    playlist.titulo,
    estadoplaylist.descricao
FROM usuario
RIGHT JOIN playlist ON playlist.idusuario = usuario.idUsuario
RIGHT JOIN estadoplaylist ON estadoplaylist.idEstadoPlaylist = playlist.idestado
-- 1º momento = usuario | playlist
-- 2º momento = playlist | estadoplaylist
ORDER BY
	usuario.Nomeusuario;

