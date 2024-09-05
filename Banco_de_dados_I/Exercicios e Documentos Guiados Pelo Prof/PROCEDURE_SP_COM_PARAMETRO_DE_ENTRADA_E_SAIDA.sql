USE Projeto_Spotify;

-- CRIAR UMA PROCEDURE QUE RECEBE COMO PARÂMETRO O LOGIN DE UM USUÁRIO E DEPOIS CRIPTOGRAFA A SENHA DEL

SELECT
	*
FROM usuario;

-- HERNANDEZ$4
UPDATE
	usuario
SET
	senha = MD5('HERNANDEZ$4')
WHERE
	Nomeusuario = 'EHERNANDEZ';

DELIMITER $$
CREATE PROCEDURE SP_CRIPTOGRAFA_SENHA(
	IN paramNomeUsuario VARCHAR(255)
)
BEGIN
	UPDATE
		usuario
	SET
		senha = MD5(senha)
	WHERE
		Nomeusuario = paramNomeUsuario;
	
END $$

-- SOSA.61
-- MSOSA
CALL SP_CRIPTOGRAFA_SENHA('MSOSA');


-- CRIA UMA PROCEDURE QUE RETORNA UM VALOR EM CIMA DE DETERMINADA PORCENTAGEM
DELIMITER $$
CREATE PROCEDURE SP_GET_VALOR_PORCENTAGEM(
	INOUT inOutValor VARCHAR(255),
    IN paramPorcentagem DECIMAL(10,2)
)
BEGIN
	SET inOutValor = CONCAT(paramPorcentagem, ' % de ', inOutValor, ' é ', ROUND(paramPorcentagem*inOutValor/100, 2));
END $$

SET @paramPorcentagem = 50;
SET @inOutValor = 10000;
CALL SP_GET_VALOR_PORCENTAGEM(@inOutValor, @paramPorcentagem);
SELECT @inOutValor;

USE Projeto_Spotify;

-- CRIAR UMA PROCEDURE QUE RECEBA COMO PARAMETRO DE ENTRADA 2 VALORES E RETORNE ATRAVÉS DE UM
-- PARÂMETRO DE SAÍDA, O SOMATÓRIO DOS DOIS VALORES

SELECT SUM(200000+2) AS SOMA;

DELIMITER $$
CREATE PROCEDURE SP_SOMA_VALORES(
	IN parametroA INT,
    IN parametroB INT,
    OUT retorno INT
)
BEGIN
	SELECT SUM(parametroA+parametroB) INTO retorno;
END $$

CALL SP_SOMA_VALORES(5, 10, @retorno);
SELECT @retorno;

USE Projeto_Spotify;

-- 1º EXEMPLO - CONSTRUÇÃO UMA PROCEDURE QUE NÃO RECEBE PARÂMETRO NENHUM E TEM POR OBJETIVO, RETORNAR
-- A DATA DE HOJE FORMATADA

SELECT current_date();

DELIMITER $$
CREATE PROCEDURE SP_GET_DATA_ATUAL_FORMATADA()
BEGIN
	SELECT CONCAT(
		DAYNAME(CURRENT_DATE()), ', ',
		DAY(CURRENT_DATE()), ', ',
		MONTHNAME(CURRENT_DATE()), ', ',
		YEAR(CURRENT_DATE())
	);
END $$

CALL SP_GET_DATA_ATUAL_FORMATADA();

-- DROP PROCEDURE SP_GET_DATA_ATUAL_FORMATADA;

CREATE DATABASE DB_EXEMPLO_PROCEDURES;
USE DB_EXEMPLO_PROCEDURES;
-- Para doar sangue é necessário ter entre 18 e 67 anos. 
-- Faça uma procedure que receba como parâmetro de entrada uma idade e retorne através de um parâmetro de
-- saída se ela (pessoa) pode doar sangue ou não de acordo com a idade
DELIMITER $$
CREATE PROCEDURE SP_VALIDA_IDADE_DOACAO_SANGUE (
	IN paramIdadeDoador INT,
    IN paramNomeDoador VARCHAR(255),
    OUT retorno VARCHAR(255)
)
BEGIN
	IF paramIdadeDoador BETWEEN 18 AND 67 THEN
		SET retorno = CONCAT('O doador ', paramNomeDoador, ' PODE doar sangue!!!');
	ELSE
		SET retorno = CONCAT('O doador ', paramNomeDoador, ' NÃO PODE doar sangue!!!');
    END IF;
END $$

SET @paramIdadeDoador = 50;
SET @paramNomeDoador = 'JIDHJFHDJF';
SET @retorno = '';
CALL SP_VALIDA_IDADE_DOACAO_SANGUE(@paramIdadeDoador, @paramNomeDoador, @retorno);
SELECT @retorno;

USE DB_EXEMPLO_PROCEDURES;
-- Construa uma procedure que receba um valor inteiro como parâmetro de entrada e retorne a 
-- mensagem se este valor é par ou ímpar.
DELIMITER $$
CREATE PROCEDURE SP_VERIFICA_PAR_IMPAR(
	IN paramNumero INT,
    OUT retorno VARCHAR(255)
)
BEGIN
	IF paramNumero % 2 = 0 THEN
		SET retorno = CONCAT('O número ', paramNumero, ' é PAR!!');
	ELSE
		SET retorno = CONCAT('O número ', paramNumero, ' é ÍMPAR!!');
    END IF;
END $$

SET @paramNumero = 11;
SET @retorno = '';
CALL SP_VERIFICA_PAR_IMPAR(@paramNumero, @retorno);
SELECT @retorno;


-- Construa uma procedure que receba um valor inteiro como parâmetro de entrada e 
-- mostra os números pares e ímpares
-- , de 1 até esse inteiro.
DELIMITER $$
CREATE PROCEDURE SP_MOSTRA_PAR_IMPAR(
	IN paramValor INT
)
BEGIN
	DECLARE CONTADOR INT DEFAULT 1; -- DECLARA A VARIÁVEL CONTADOR
    
    -- DERRUBO A TABELA TB_PAR_IMPAR SE ELA EXISTIR PARA NÃO ACONTECER ERRO DE CONFLITO DE OBJETOS
    -- SIMILARES DENTRO DO BANCO
    DROP TABLE IF EXISTS TB_PAR_IMPAR;
    
    -- CRIA A TABELA QUE IRÁ ARMAZENAR OS VALORES DE PAR IMPAR DE ACORDO COM O CONTADOR
    CREATE TABLE TB_PAR_IMPAR(
		VALOR VARCHAR(255)
    );
    
    -- INICIA O LAÇO DE REPETIÇÃO PARA INFORMAR OS DADOS.
    WHILE CONTADOR <= paramValor DO
		IF CONTADOR % 2 = 0 THEN
			INSERT INTO TB_PAR_IMPAR VALUES (CONCAT('O valor ', CONTADOR, ' é PAR!'));
		ELSE
			INSERT INTO TB_PAR_IMPAR VALUES (CONCAT('O valor ', CONTADOR, ' é ÍMPAR!'));
        END IF;
        
        SET CONTADOR = CONTADOR + 1;
    END WHILE;
    
    SELECT * FROM TB

