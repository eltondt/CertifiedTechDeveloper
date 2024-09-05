-- APAGAR BANCO SE EXISTIR...

-- DROP DATABASE IF EXISTS ckp3grupo1;

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
    
-- INSERINDO DADOS NAS TABELAS

-- INSERINDO DADOS NA TABELA ESPECIES

INSERT INTO Especies (Nome_Especie)
VALUES('Caninos'),
('Felinos'),
('Aves'),
('Coelho'),
('Roedores'),
('Répteis'),
('Equus'),
('Mustela'),
('Equus'),
('Roedores');

-- INSERINDO DADOS NA TABELA RAÇAS

INSERT INTO Racas (Nome_Raca, ID_Especie)
VALUES('Piriquitos', 3),
('Canário', 3),
('Cacatuas', 3),
('Papagaios', 3),
('Beagle', 1),
('Dálmata', 1),
('Dogue Alemão', 1),
('Persa', 2),
('Siamês', 2),
('Maine Coon', 2);

-- INSERINDO DADOS NA TABELA ANIMAIS

INSERT INTO Animais (Nome_Animal, Info_Adicional, ID_Raca)
VALUES('Animal A', 'Gosta de passear', 5),
('Animal B', 'Gosta de brincar', 6),
('Animal C', 'Agressivo com outros cachorros', 7),
('Animal D', 'Canta o dia inteiro', 2),
('Animal E', 'Conversa do dia inteiro', 4),
('Animal F', 'Cortar as unhas', 9),
('Animal G', 'Gosta de escuro', 3),
('Animal H', 'Gosta de passear', 8),
('Animal I', 'Late bastante', 7),
('Animal J', 'Late muito', 7);


-- INSERINDO DADOS EM TIPO DE PESSOAS

INSERT INTO Tipo_Pessoa (Tipo_Pessoa)
VALUES('Pessoa Física'),
('Pessoa Jurídica');

-- INSERINDO DADOS NA TABELA CLIENTES

INSERT INTO Clientes (
Nome_Completo, 
ID_Tipo_Pessoa, 
Inscricao, 
Endereco, 
Bairro, 
Cidade, 
Estado, 
CEP, 
Fone_Contato, 
Media_Avaliacao, 
Comentarios)
VALUES(
'Antonio Carlos',
1,
123456,
'Rua A, número 6',
'São Bernardo',
'Salvador',
'BA',
'01000010',
'71991234455',
7,
null),

(
'Bruno Caetano',
1,
234567,
'Rua B, número 7',
'São Caetano',
'Salvador',
'BA',
'02000010',
'71991234456',
8,
'Exelente cliente'),

(
'Carlos Jorge',
1,
345678,
'Rua C, número 8',
'São José',
'Salvador',
'BA',
'03000010',
'71991234457',
9,
'Pontual'),

(
'Daniel Marcovaldi',
1,
56789,
'Rua D, número 9',
'Piatã',
'Salvador',
'BA',
'04000010',
'71991234458',
9,
null),

(
'Erasmo Carlos',
1,
254566,
'Rua E, número 10',
'São Caetano',
'Salvador',
'BA',
'05000010',
'71991234460',
8,
'Mandar mensagem diáriamente'),

(
'Fernando Guerreiro',
1,
546798,
'Rua F, número 12',
'Patamares',
'Salvador',
'BA',
'06000010',
'71991234461',
10,
null),

(
'Herbert Souza',
1,
321256,
'Rua H, número 15',
'Amaralina',
'Salvador',
'BA',
'07000010',
'71991234462',
8,
null),

(
'Iuri Val',
1,
987565,
'Rua I, número 22',
'Imbuí',
'Salvador',
'BA',
'08000010',
'71991234463',
6,
null),

(
'Jorge Luiz',
1,
215487,
'Rua J, número 27',
'Barra',
'Salvador',
'BA',
'09000010',
'71991234464',
10,
null),

(
'Kássio Cardoso',
1,
546987,
'Rua K, número 2',
'Plataforma',
'Salvador',
'BA',
'10000010',
'71991234465',
8,
null);

-- INSERINDO DADOS NA TABELA CLÍNICA VETERINÁRIA

INSERT INTO Clinica_Veterinaria (
	Nome_Razao,
    ID_Tipo_Pessoa,
    Inscricao,
    Contato,
    Endereco,
    Bairro,
    Cidade,
    Estado,
    CEP,
    Fone_Contato,
    Email,
    Dominio_Web)
    VALUES(
    'Clinica Saúde PET',
    2,
    32165,
    'Dr. Jorge',
    'Rua Z, número 100',
    'Amaralina',
    'Salvador',
    'BA',
    '00010000',
    '7133711234',
    'dr.jorge@saudepet.com.br',
    'www.saudepet.com.br'),
    
    (
    'Clinica Felici PET',
    2,
    32166,
    'Dr. Caetano',
    'Rua W, número 200',
    'Ondina',
    'Salvador',
    'BA',
    '00020000',
    '7133711255',
    'dr.caetano@felicipet.com.br',
    'www.felicipet.com.br');
    
    -- INSERINDO DADOS NA TABELA HOSPEDEIROS
    
    INSERT INTO Hospedeiros (
	Nome_Completo,
    Endereco01,
    Endereco02,
    Bairro,
    Cidade,
    Estado,
    CEP,
    Fone_Contato,
    Email,
    Disp_Alimento,
    Media_Avaliacao,
    Comentarios)
    VALUES(
    'Ana Júlia',
    'Rua das Araras, 387',
    null,
    'Imbuí',
    'Salvador',
    'BA',
    '00010000',
    '71945699977',
    'anajulia@dh.com.br',
    1,
    9,
    null),
    (
    'Bruna Carla',
    'Rua das Patativas, 388',
    null,
    'Imbuí',
    'Salvador',
    'BA',
    '00020000',
    '71945699978',
    'brunacarla@dh.com.br',
    1,
    8,
    null),
    
    (
    'Clara White',
    'Rua das Codornas, 389',
    null,
    'Imbuí',
    'Salvador',
    'BA',
    '00030000',
    '71945699979',
    'carlawhite@dh.com.br',
    1,
    7,
    'Houve uma reclamação na última hospedágem'),
    
    (
    'Daniela Mota',
    'Rua dos Tucanos, 390',
    null,
    'Ondina',
    'Salvador',
    'BA',
    '00040000',
    '71945699981',
    'danielamota@dh.com.br',
    1,
    8,
    null),
    
    (
    'Érica Jasmine',
    'Rua das Ostras, 400',
    null,
    'Barra',
    'Salvador',
    'BA',
    '00050000',
    '71945699977',
    'ericajasmine@dh.com.br',
    1,
    10,
    null),
    
    (
    'Fernanda Barretto',
    'Rua das Ourives, 405',
    null,
    'Comércio',
    'Salvador',
    'BA',
    '00060000',
    '71945699986',
    'fernandabarretto@dh.com.br',
    1,
    10,
    null),
    
    (
    'Giulia Nobrega',
    'Rua das Laranjas, 450',
    null,
    'Barra',
    'Salvador',
    'BA',
    '00070000',
    '71945699990',
    'giulianobrega@dh.com.br',
    1,
    7,
    null),
    
    (
    'Hélia Alcantara',
    'Rua das Algarobas, 500',
    null,
    'Caminho das Árvores',
    'Salvador',
    'BA',
    '00080000',
    '71945699991',
    'heliaalcantara@dh.com.br',
    1,
    7,
    null),
    
    (
    'Ione Joana',
    'Rua das Espatódias, 501',
    null,
    'Caminho das Árvores',
    'Salvador',
    'BA',
    '00090000',
    '71945699991',
    'ionejoana@dh.com.br',
    1,
    6,
    null),
    
    (
    'Juliana Wanderley',
    'Rua das Artes, 600',
    null,
    'Itapoã',
    'Salvador',
    'BA',
    '00011000',
    '71945699995',
    'julianawanderley@dh.com.br',
    1,
    10,
    null);
    
    -- INSERINDO DADOS NA TABELA DISPONIBILIDADE
    
    INSERT INTO Disponibilidade (Qtde_Vagas, ID_Animal, ID_Hospedeiro, Valor_Diaria)
    VALUES(10, 2, 7, 51),
    (12, 5, 8, 55),
	(8, 1, 9, 60),
	(1, 3, 10, 45),
	(15, 4, 6, 45),
	(5, 5, 5, 40),
	(10, 6, 6, 51),
	(5, 2, 8, 51),
	(11, 3, 8, 60),
	(7, 9, 9, 55);
   
    
    -- INSERINDO DADOS NA TABELA SOLICITA_HOSPEDAGEM
    
    INSERT INTO Solicita_Hospedagem (ID_Hospedeiro, ID_Animal, ID_Clientes, ID_Clinica, Data_Checkin, Data_Checkout, Total_diarias)
	VALUES(10, 3, 5, 2, '2022-09-01','2022-09-02', 2),
	(9, 2, 6, 1, '2022-09-02','2022-09-04', 3),
	(8, 1, 7, 2, '2022-09-03','2022-09-05', 3),
	(7, 4, 8, 1, '2022-09-04','2022-09-05', 2),
	(6, 5, 9, 1, '2022-09-05','2022-09-05', 1),
	(5, 6, 10, 2, '2022-09-05','2022-09-10', 6),
	(4, 7, 1, 2, '2022-09-07','2022-09-08', 2),
	(3, 3, 5, 2, '2022-09-08','2022-09-10', 3),
	(2, 8, 6, 1, '2022-09-08','2022-09-11', 4),
	(10, 4, 6, 1, '2022-09-10','2022-09-12', 3),
	(9, 7, 4, 1, '2022-09-11','2022-09-12', 2),
	(8, 7, 7, 2, '2022-09-12','2022-09-13', 2),
	(6, 5, 6, 2, '2022-09-13','2022-09-14', 2),
	(4, 3, 8, 1, '2022-09-14','2022-09-16', 3),
	(3, 2, 7, 1, '2022-09-15','2022-09-17', 3);
    
    
	
-- CRUD

DELETE FROM Solicita_Hospedagem WHERE ID_Solicita_Hospedagem = 11;
UPDATE Solicita_Hospedagem SET ID_Clientes = 5 WHERE ID_Animal = 3;
UPDATE Solicita_Hospedagem SET ID_Clientes = 6 WHERE ID_Animal = 2;
UPDATE Solicita_Hospedagem SET ID_Clientes = 8 WHERE ID_Animal = 4;
UPDATE Solicita_Hospedagem SET ID_Clientes = 10 WHERE ID_Animal = 5; 
UPDATE Solicita_Hospedagem SET ID_Clientes = 1 WHERE ID_Animal = 7; 
 
SELECT * FROM Solicita_Hospedagem ORDER BY ID_Animal;

-- ALTER TABLE

ALTER TABLE animais ADD Apelido VARCHAR(255);

SELECT * FROM animais;

-- 	PROCEDURE QUE DANDO UM PARAMETRO RETORNA 2 OU MAIS TABELAS



-- VIEW QUE CONTEMPLE OS PRINCIPAIS DADOS DOS BANCOS, DE FORMA QUE QUALQUER USUÁRIO POSSA MANIPULAR OS DADOS


