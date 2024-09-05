-- CONSTRUCAO DDL

CREATE DATABASE projetoSpotify;
USE projetoSpotify;

CREATE TABLE usuario (
ID_usuario INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
nomeUsuario VARCHAR(45) NOT NULL,
dataNasc DATE,
sexo VARCHAR(1),
email VARCHAR(150) NOT NULL UNIQUE,
senha VARCHAR(45)
) ENGINE = InnoDB;

CREATE TABLE playlist (
ID_playlist INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
ID_usuario INT(11),
titulo VARCHAR(45),
qtdCancoes INT(11),
dataCriacao DATETIME
) ENGINE = InnoDB;

CREATE TABLE playlistCancao (
ID_playlistCancao INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
ID_cancao INT(11),
ID_playlist INT(11)
) ENGINE = InnoDB;

CREATE TABLE cancoes (
ID_cancao INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(45),
duracao DOUBLE,
qtdReproducao INT(11),
qtdLikes INT(11),
ID_album INT(11)
) ENGINE = InnoDB;

CREATE TABLE album (
ID_album INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(45),
ID_artista INT(11)
) ENGINE = InnoDB;

CREATE TABLE artista (
ID_artista INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(45),
sobrenome VARCHAR(100)
) ENGINE = InnoDB;

CREATE TABLE generoCancao (
ID_generoCancao INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
ID_cancao INT(11),
ID_genero INT(11)
) ENGINE = InnoDB;

CREATE TABLE genero (
ID_genero INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
genero VARCHAR(45)
) ENGINE = InnoDB;

DROP TABLE cancoes;

ALTER TABLE playlist ADD CONSTRAINT fk_playlist_ID_usuario FOREIGN key (ID_usuario) REFERENCES usuario (ID_usuario);
ALTER TABLE playlistCancao ADD CONSTRAINT fk_playlistCancao_ID_playlist FOREIGN key (ID_playlist) REFERENCES playlist (ID_playlist);
ALTER TABLE playlistCancao ADD CONSTRAINT fk_playlistCancao_ID_cancao FOREIGN key (ID_cancao) REFERENCES cancoes (ID_cancao);
ALTER TABLE cancoes ADD CONSTRAINT fk_cancoes_ID_album FOREIGN key (ID_album) REFERENCES album (ID_album);
ALTER TABLE album ADD CONSTRAINT fk_album_ID_artista FOREIGN key (ID_artista) REFERENCES artista (ID_artista);
ALTER TABLE generoCancao ADD CONSTRAINT fk_generoCancao_ID_cancao FOREIGN key (ID_cancao) REFERENCES cancoes (ID_cancao);
ALTER TABLE generoCancao ADD CONSTRAINT fk_generoCancao_ID_genero FOREIGN key (ID_genero) REFERENCES genero (ID_genero);

