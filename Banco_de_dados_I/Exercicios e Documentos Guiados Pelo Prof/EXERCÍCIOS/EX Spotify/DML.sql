-- Inseri usuarios

INSERT INTO usuario (ID_usuario, nomeUsuario, dataNasc, sexo, email, senha)
VALUES (1, 'Marcos', '1990-04-08', 'H', 'marquinho@gmail.com', 8798278);
INSERT INTO usuario (ID_usuario, nomeUsuario, dataNasc, sexo, email, senha)
VALUES (2, 'Helen', '1988-02-28', 'M', 'helen@gmail.com', 78471828);
INSERT INTO usuario (ID_usuario, nomeUsuario, dataNasc, sexo, email, senha)
VALUES (3, 'Maria', '1977-09-18', 'M', 'maria@gmail.com', 8798278);

-- Realizei a mudanca do sexo de M para H

UPDATE
	usuario
SET
    sexo = 'H'
WHERE
    ID_usuario = 1;

-- Inseri registros na coluna cancoes

INSERT INTO cancoes (ID_cancao, titulo, duracao, qtdReproducao, qtdLikes)
VALUES (1, 'She', 2.52, 1, 5);
INSERT INTO cancoes (ID_cancao, titulo, duracao, qtdReproducao, qtdLikes)
VALUES (2, 'Basket Case', 3.22, 10, 5);
INSERT INTO cancoes (ID_cancao, titulo, duracao, qtdReproducao, qtdLikes)
VALUES (3, 'American Idiot', 2.58, 25, 5);

-- Realizei a atualizacao nos ID FK

UPDATE
	cancoes
SET
	ID_album = 2
WHERE
	ID_cancao = 1;
    
UPDATE
	cancoes
SET
	ID_album = 3
WHERE
	ID_cancao = 2;
    
UPDATE
	cancoes
SET
	ID_album = 1
WHERE
	ID_cancao = 3;

-- Inseri albuns

INSERT INTO album (ID_album, titulo)
VALUES (1, 'Dookie');
INSERT INTO album (ID_album, titulo)
VALUES (2, 'Dookie');
INSERT INTO album (ID_album, titulo)
VALUES (3, 'American Idiot');

-- Realizei atualização nos ID FK

UPDATE
	album
SET
	ID_artista = 2
WHERE
	ID_album = 3;
    
UPDATE
	album
SET
	ID_artista = 1
WHERE
	ID_album = 2;
    
UPDATE
	album
SET
	ID_artista = 3
WHERE
	ID_album = 1;

-- Inseri os artistas

INSERT INTO artista (ID_artista, nome, sobrenome)
VALUES (1, 'Green', 'Day');
INSERT INTO artista (ID_artista, nome, sobrenome)
VALUES (2, 'Green', 'Day');
INSERT INTO artista (ID_artista, nome, sobrenome)
VALUES (3, 'Green', 'Day');
