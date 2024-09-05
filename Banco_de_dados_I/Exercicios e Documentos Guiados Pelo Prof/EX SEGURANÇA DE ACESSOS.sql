SELECT * FROM mysql.user;

CREATE USER 'jorge_coutinho'@'localhost' IDENTIFIED BY '1234Jorge#';
-- > O PRIMEIRO ASTERISCO INFORMA QUE O USUÁRIO TERÁ PERMISSÃO EM TODOS OS BANCOS DE DADOS DA MINHA CONEXÃO
-- > O SEGUNDO ASTERISCO INFORMA QUE O USUÁRIO TERÁ PERMISSÃO EM TODAS AS TABELAS
GRANT SELECT ON *.* TO 'jorge_coutinho'@'localhost';
-- REVOKE SELECT ON BD_EXERCICIOS.* FROM 'jorge_coutinho'@'localhost';
FLUSH privileges;

DROP USER 'jorge_coutinho'@'localhost';

USE BD_EXERCICIOS;

COMMIT;
ROLLBACK;

SELECT * FROM cidade WHERE cidade IN ('Cruzeiro 7', 'Cruzeiro 8');

ANALYZE TABLE cidade;

INSERT INTO cidade (cidade, pais_id, ultima_atualizacao) 
VALUES ('Cruzeiro 8', 82, NOW());

show open tables where in_use > 1;
