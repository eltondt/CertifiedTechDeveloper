USE Projeto_Spotify;

-- Aprendemos a construir TABELAS
-- Aprendemos a construir as FK's
-- Aprender a construir as VIEWS

-- VIEW é um SELECT materializado em um OBJETO

SELECT
	usuario.Nomeusuario AS 'Usuário',
    playlist.titulo AS 'Nome da playlist',
    estadoplaylist.descricao AS 'Estado'
FROM usuario 
INNER JOIN playlist ON playlist.idUsuario = usuario.idusuario
INNER JOIN estadoplaylist ON estadoplaylist.idEstadoPlaylist = playlist.idestado
ORDER BY
	usuario.Nomeusuario;

-- PADRÃO DE CONSTRUÇÃO DE SCRIPTS DDL
-- INSTRUÇÃO | OBJETO | NOME DO OBJETO
-- BOA PRÁTICA:
-- TABELAS -> TB
-- VIEW -> VW
-- PROCEDURES -> SP (STORAGE PROCEDURE)
-- FUNCTION -> FN
-- TRIGGER -> TG OU TR
CREATE OR REPLACE VIEW VW_USUARIO_PLAYLIST AS (
	SELECT
		usuario.Nomeusuario,
		playlist.titulo,
		estadoplaylist.descricao
	FROM usuario 
	INNER JOIN playlist ON playlist.idUsuario = usuario.idusuario
	INNER JOIN estadoplaylist ON estadoplaylist.idEstadoPlaylist = playlist.idestado
);

SELECT * FROM VW_USUARIO_PLAYLIST ORDER BY Nomeusuario;

-- 1º PASSO -> CONSTRUIR O SELECT DA VIEW
-- 2º PASSO -> CONSTRUIR A VIEW
-- 3º PASSO -> TESTAR A VIEW

USE EMarket;

-- Crie uma view para que você possa organizar remessas de faturas.   
-- Indicar número da  fatura,  data da fatura e data de  envio, no formato dd/mm/yy, 
-- valor de  transporte  formatado em dois locais decimais e informações de endereço de destino, 
-- incluindo endereço, cidade,  código postal e país, em uma coluna chamada Destino.

-- 1º PASSO -> CONSTRUÇÃO DO SELECT DA VIEW
SELECT
	FaturaId AS NR_FATURA,
    DATE_FORMAT(DataFatura, '%d/%m/%Y') AS DATA_FATURA,
    DATE_FORMAT(DataEnvio, '%d/%m/%Y') AS DATA_ENVIO,
    ROUND(Transporte, 2) AS TRANSPORTE,
    CONCAT(EnderecoEnvio, ', ', CidadeEnvio, ' ,', CodigoPostalEnvio, ', ', PaisEnvio) AS DESTINO,
    FormaEnvio AS FORMA_ENVIO
FROM Faturas;

-- 2º PASSO -> CONSTRUÇÃO DA VIEW
CREATE VIEW VW_DADOS_FATURA AS (
	SELECT
		FaturaId AS NR_FATURA,
		DATE_FORMAT(DataFatura, '%d/%m/%y') AS DATA_FATURA,
		DATE_FORMAT(DataEnvio, '%d/%m/%y') AS DATA_ENVIO,
		ROUND(Transporte, 2) AS TRANSPORTE,
		CONCAT(EnderecoEnvio, ', ', CidadeEnvio, ' ,', CodigoPostalEnvio, ', ', PaisEnvio) AS DESTINO,
        FormaEnvio AS FORMA_ENVIO
	FROM Faturas
);

-- 3º PASSO -> TESTE DA VIEW
SELECT * FROM VW_DADOS_FATURA;

DROP VIEW VW_DADOS_FATURA;

-- Faça uma consulta com todas as empresas de correios e os detalhes das  
-- faturas que usaram essa empresa.  Use  a  View  criada.
SELECT
	VW.*,
    Correios.Empresa,
    DetalheFatura.*
FROM VW_DADOS_FATURA AS VW
INNER JOIN Correios ON Correios.CorreioID = VW.FORMA_ENVIO
INNER JOIN DetalheFatura ON DetalheFatura.FaturaId = VW.NR_FATURA;


