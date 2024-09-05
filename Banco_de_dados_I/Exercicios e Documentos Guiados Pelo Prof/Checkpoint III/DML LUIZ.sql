-- APAGAR BANCO SE EXISTIR...

DROP DATABASE IF EXISTS ckp3grupo1;

-- CRIAÇÃO DA DATABASE E ATIVAÇÃO PARA USO

CREATE DATABASE ckp3grupo1;
USE ckp3grupo1;

-- CRIAÇÃO DAS TABELAS E RELACIONAMENTOS

CREATE TABLE Especies (
	ID_Especie BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nome_Especie VARCHAR(50) NOT NULL);

CREATE TABLE Racas (
	ID_Raca BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nome_Raca VARCHAR(45) NOT NULL,
    ID_Especie BIGINT NOT NULL,
    FOREIGN KEY (ID_Especie) REFERENCES Especies(ID_Especie));

CREATE TABLE Animais (
	ID_Animal BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    -- Inseri o nome animal (para avaliação)
    Nome_Animal VARCHAR(255) NOT NULL,
    Info_Adicional MEDIUMTEXT NOT NULL,
    ID_Raca BIGINT NOT NULL,
    FOREIGN KEY (ID_Raca) REFERENCES Racas(ID_Raca));
    
CREATE TABLE Tipo_Pessoa (
	ID_Tipo_Pessoa INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Tipo_Pessoa VARCHAR(45) NOT NULL);
    
CREATE TABLE Clientes (
	ID_Clientes BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nome_Completo VARCHAR(100) NOT NULL,
    ID_Tipo_Pessoa INT NOT NULL,
    Inscricao VARCHAR(20) NOT NULL,
    Endereco VARCHAR(150) NOT NULL,
    Bairro VARCHAR(50) NOT NULL,
    Cidade VARCHAR(50) NOT NULL,
    Estado  VARCHAR(2) NOT NULL,
    CEP VARCHAR(8),
    Fone_Contato VARCHAR(20) NOT NULL,
    Media_Avaliacao INT,
    Comentarios MEDIUMTEXT,
    FOREIGN KEY (ID_Tipo_Pessoa) REFERENCES Tipo_Pessoa(ID_Tipo_Pessoa));
    
CREATE TABLE Clinica_Veterinaria (
	ID_Clinica BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nome_Razao VARCHAR(100) NOT NULL,
    ID_Tipo_Pessoa INT NOT NULL,
    Inscricao VARCHAR(20) NOT NULL,
    Contato VARCHAR(45) NOT NULL,
    Endereco VARCHAR(100) NOT NULL,
    Bairro VARCHAR(45) NOT NULL,
    Cidade VARCHAR(45) NOT NULL,
    Estado  VARCHAR(2) NOT NULL,
    CEP VARCHAR(8),
    Fone_Contato VARCHAR(20) NOT NULL,
    Email VARCHAR(45),
    Dominio_Web VARCHAR(45),
    FOREIGN KEY (ID_Tipo_Pessoa) REFERENCES Tipo_Pessoa(ID_Tipo_Pessoa));
    
    CREATE TABLE Hospedeiros (
	ID_Hospedeiro BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nome_Completo VARCHAR(100) NOT NULL,
    Endereco01 VARCHAR(150) NOT NULL,
    Endereco02 VARCHAR(150),
    Bairro VARCHAR(45) NOT NULL,
    Cidade VARCHAR(45) NOT NULL,
    Estado  VARCHAR(2) NOT NULL,
    CEP VARCHAR(8),
    Fone_Contato VARCHAR(20) NOT NULL,
    Email VARCHAR(45),
    Disp_Alimento TINYINT,
    Media_Avaliacao INT,
    -- ID_Disponibilidade (Não precisa)
    Comentarios MEDIUMTEXT);
    
CREATE TABLE Disponibilidade (
	ID_Disponibilidade BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Qtde_Vagas INT NOT NULL,
    ID_Animal BIGINT NOT NULL,
    ID_Hospedeiro BIGINT,
    Valor_Diaria FLOAT NOT NULL,
    FOREIGN KEY (ID_Hospedeiro) REFERENCES Hospedeiros(ID_Hospedeiro),
    FOREIGN KEY (ID_Animal) REFERENCES Animais(ID_Animal));
    
CREATE TABLE Solicita_Hospedagem (
	ID_Solicita_Hospedagem BIGINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    ID_Hospedeiro BIGINT NOT NULL,
    ID_Animal BIGINT NOT NULL,
    ID_Clientes BIGINT NOT NULL,
    ID_Clinica BIGINT NOT NULL,
    -- Nome_Animal -> COLOQUEI NA TABELA ANIMAIS
    Data_Checkin DATE NOT NULL,
    Data_Checkout DATE NOT NULL,
    Total_diarias FLOAT NOT NULL,
    FOREIGN KEY (ID_Clinica) REFERENCES Clinica_Veterinaria(ID_Clinica),
    FOREIGN KEY (ID_Clientes) REFERENCES Clientes(ID_Clientes),
    FOREIGN KEY (ID_Animal) REFERENCES Animais(ID_Animal),
    FOREIGN KEY (ID_Hospedeiro) REFERENCES Hospedeiros(ID_Hospedeiro));
    
