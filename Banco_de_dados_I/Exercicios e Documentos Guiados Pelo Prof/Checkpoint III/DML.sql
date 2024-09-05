-- DML ckp3grupo1

USE ckp3grupo1;
-- inclusão dados especies

INSERT INTO especies (Nome_Especie)
VALUES ('canino');
INSERT INTO especies (Nome_Especie)
VALUES ('canino');
INSERT INTO especies (Nome_Especie)
VALUES ('canino');
INSERT INTO especies (Nome_Especie)
VALUES ('canino');
INSERT INTO especies (Nome_Especie)
VALUES ('felino');
INSERT INTO especies (Nome_Especie)
VALUES ('felino');

-- inclusão de dados racas

INSERT INTO racas (Nome_Raca, ID_Especie)
VALUES ('Dogue alemao', 1);
INSERT INTO racas (Nome_Raca, ID_Especie)
VALUES ('Fila', 2);
INSERT INTO racas (Nome_Raca, ID_Especie)
VALUES ('Golden Retriever', 3);
INSERT INTO racas (Nome_Raca, ID_Especie)
VALUES ('Husky Siberiano', 4);
INSERT INTO racas (Nome_Raca, ID_Especie)
VALUES ('Chantilly Tiffany', 5);
INSERT INTO racas (Nome_Raca, ID_Especie)
VALUES ('Kurilian Bobtail', 6);

-- incluindo dados animais

INSERT INTO animais (Nome_Animal, Info_Adicional, ID_Raca)
VALUES ('Nina', ' gosta de brincar', 1);
INSERT INTO animais (Nome_Animal,Info_Adicional, ID_Raca)
VALUES ('Ozzy', 'gosta de passear', 2);
INSERT INTO animais (Nome_Animal,Info_Adicional, ID_Raca)
VALUES ('Toddy', 'curte brincar com a sua bolinha', 3);
INSERT INTO animais (Nome_Animal,Info_Adicional, ID_Raca)
VALUES ('Simba', 'é preguiçoso', 4);
INSERT INTO animais (Nome_Animal,Info_Adicional, ID_Raca)
VALUES ('Shelby','curte comer seus bsicoitos', 5);
INSERT INTO animais (Nome_Animal,Info_Adicional, ID_Raca)
VALUES ('Luna', 'gosta de outros animais', 6);

-- inclusão de dados tipo de pessoa

INSERT INTO tipo_pessoa (Tipo_Pessoa)
VALUES ('cuidadosa');
INSERT INTO tipo_pessoa (Tipo_Pessoa)
VALUES ('amoroso');
INSERT INTO tipo_pessoa (Tipo_Pessoa)
VALUES ('respeitoso');
INSERT INTO tipo_pessoa (Tipo_Pessoa)
VALUES ('responsável');
INSERT INTO tipo_pessoa (Tipo_Pessoa)
VALUES ('companheiro');
INSERT INTO tipo_pessoa (Tipo_Pessoa)
VALUES ('De Confiança');


-- inclusão de clientes

INSERT INTO clientes (Nome_Completo, ID_Tipo_Pessoa, Inscricao, Endereco, Bairro, Cidade, Estado, CEP, Fone_Contato, Media_Avaliacao)
VALUES ('Marcia Ribeiro', 1, '', 'Rua Joaquim Barbosa, 763', 'Liberdade', 'São Paulo', 'SP', 18072876, 11029384754, 5);
INSERT INTO clientes (Nome_Completo, ID_Tipo_Pessoa, Inscricao, Endereco, Bairro, Cidade, Estado, CEP, Fone_Contato, Media_Avaliacao)
VALUES ('Rafael Marcio', 2, '', 'Rua Josuel, 9374', 'Muzambinho', 'Santana', 'MG', 18072936, 2073920982345, 4);
INSERT INTO clientes (Nome_Completo, ID_Tipo_Pessoa, Inscricao, Endereco, Bairro, Cidade, Estado, CEP, Fone_Contato, Media_Avaliacao)
VALUES ('Silveira Marcelino', 3, '',  'Rua Flamengo, 1097', 'Flamengo', 'Rio de Janeiro', 'RJ', 18072000, 21998372832, 3);
INSERT INTO clientes (Nome_Completo, ID_Tipo_Pessoa, Inscricao, Endereco, Bairro, Cidade, Estado, CEP, Fone_Contato, Media_Avaliacao)
VALUES ('Rafaela Alcantra', 4, '', 'Rua Butantã, 34', 'Butantã', 'São Paulo', 'SP', 18072378, 11993827389, 4);
INSERT INTO clientes (Nome_Completo, ID_Tipo_Pessoa, Inscricao, Endereco, Bairro, Cidade, Estado, CEP, Fone_Contato, Media_Avaliacao)
VALUES ('Marcelo Oliveira', 5, '', 'Rua Santo Antônio, 3740', 'Florianópolis', 'Florianópolis', 'SC', 18079382, 45029363927, 5);
INSERT INTO clientes (Nome_Completo, ID_Tipo_Pessoa, Inscricao, Endereco, Bairro, Cidade, Estado, CEP, Fone_Contato, Media_Avaliacao)
VALUES ('Karine Silva', 6, '', 'Rua Franciscano, 937', 'Santa Rosalia', 'Sorocaba', 'SP', 18009827, 15997287367, 5);


-- inclusão de dados clinica veterinária

INSERT INTO clinica_veterinaria (Nome_Razao, ID_Tipo_Pessoa, Inscricao, Contato, Endereco, Bairro, Cidade, Estado, CEP, Fone_Contato, Email, Dominio_Web)
VALUES ('Robertão Veterinária LTDA', 1, 12345678891011, 'Marcela', 'Rua João Roberto, 9834', 'Mariana', 'São Paulo', 'SP', 18371904, 1199738273827, 'robertaopets@gmail.com', 'www.robertaopets.com.br' );
INSERT INTO clinica_veterinaria (Nome_Razao, ID_Tipo_Pessoa, Inscricao, Contato, Endereco, Bairro, Cidade, Estado, CEP, Fone_Contato, Email, Dominio_Web)
VALUES ('Super Veterinária', 2, 12345678820937, 'João', 'Rua Joaquim Ferreira, 1938', 'Silvinho', 'Muzambinho', 'MG', 18039283,259973829384, 'superpets@gmail.com', 'www.superpets.com.br' );
INSERT INTO clinica_veterinaria (Nome_Razao, ID_Tipo_Pessoa, Inscricao, Contato, Endereco, Bairro, Cidade, Estado, CEP, Fone_Contato, Email, Dominio_Web)
VALUES ('Só Love Veterinária', 3, 83920178891011, 'Francisco', 'Rua Marcelinho, 2819', 'São Cristovão', 'Rio de Janeiro', 'RJ', 18098270, 2199738283748, 'solove@gmail.com', 'www.solove.com.br' );

-- inclusão de dados Hospedeiros

INSERT INTO hospedeiros (Nome_Completo, Endereco01, Endereco02, Bairro, Cidade, Estado, CEP, Fone_Contato, Email, Disp_Alimento, Media_Avaliacao)
VALUES ('Maria Souza', 'Rua Joaquim Barbosa, 938', '', 'Liberdade', 'São Paulo', 'SP', 18072876, 83729384754, 'maria@gmail.com', 1, 5);
INSERT INTO hospedeiros (Nome_Completo, Endereco01, Endereco02, Bairro, Cidade, Estado, CEP, Fone_Contato, Email, Disp_Alimento, Media_Avaliacao)
VALUES ('Rafael Nunes', 'Rua Josuel, 09', '', 'Santana', 'Muzambinho', 'MG', 18072936, 2599720982345, 'rafa@gmail.com', 0, 4);
INSERT INTO hospedeiros (Nome_Completo, Endereco01, Endereco02, Bairro, Cidade, Estado, CEP, Fone_Contato, Email, Disp_Alimento, Media_Avaliacao)
VALUES ('Helen Neves', 'Rua Flamengo, 120', '', 'Flamengo', 'Rio de Janeiro', 'RJ', 18072000, 21997372832, 'helenn@gmail.com', 0, 5);
INSERT INTO hospedeiros (Nome_Completo, Endereco01, Endereco02, Bairro, Cidade, Estado, CEP, Fone_Contato, Email, Disp_Alimento, Media_Avaliacao)
VALUES ('Fernanda Ribeiro', 'Rua Santo Antônio, 40', '', 'Florianópolis', 'Florianópolis', 'SC', 18079382, 46998363927, 'fer@gmail.com', 1, 4);
INSERT INTO hospedeiros (Nome_Completo, Endereco01, Endereco02, Bairro, Cidade, Estado, CEP, Fone_Contato, Email, Disp_Alimento, Media_Avaliacao)
VALUES ('Marcia Soto', 'Rua Franciscano, 30', '', 'Santa Rosalia', 'Sorocaba', 'SP', 18009827, 15997997367, 'marcinha@gmail.com', 1, 4);

-- inclusão de dados disponibilidade

INSERT INTO disponibilidade (Qtde_Vagas, ID_Animal, ID_Hospedeiro, Valor_Diaria)
VALUES (3, 1, 1, 80.00);
INSERT INTO disponibilidade (Qtde_Vagas, ID_Animal, ID_Hospedeiro, Valor_Diaria)
VALUES (4, 2, 2, 100.00);
INSERT INTO disponibilidade (Qtde_Vagas, ID_Animal, ID_Hospedeiro, Valor_Diaria)
VALUES (1, 3, 3, 70.00);
INSERT INTO disponibilidade (Qtde_Vagas, ID_Animal, ID_Hospedeiro, Valor_Diaria)
VALUES (2, 4, 1, 80.00);
INSERT INTO disponibilidade (Qtde_Vagas, ID_Animal, ID_Hospedeiro, Valor_Diaria)
VALUES (3, 5, 4, 90.00);


-- inclusão de dados em solicita hospedagem

INSERT INTO solicita_hospedagem (ID_Hospedeiro, ID_Animal, ID_Clientes, ID_Clinica, Data_Checkin, Data_Checkout, Total_diarias)
VALUES ( 1, 1, 1, 1, '2022-10-02', '2022-10-10', 560.00);
INSERT INTO solicita_hospedagem (ID_Hospedeiro, ID_Animal, ID_Clientes, ID_Clinica, Data_Checkin, Data_Checkout, Total_diarias)
VALUES (2, 2, 2, 2, '2021-05-15', '2021-05-20', 500.00);
INSERT INTO solicita_hospedagem (ID_Hospedeiro, ID_Animal, ID_Clientes, ID_Clinica, Data_Checkin, Data_Checkout, Total_diarias)
VALUES (3, 3, 3, 3, '2020-01-01', '2020-02-01', 2100.00);


