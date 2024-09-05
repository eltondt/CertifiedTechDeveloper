USE ckp3grupo1;

DELETE FROM clientes WHERE ID_Clientes = 6;
DELETE FROM animais WHERE ID_Animal = 6;

-- select * from racas;

UPDATE
racas
SET
Nome_Raca = 'Poodle'
WHERE
ID_Raca = 2;

-- select * from especies;

UPDATE
especies
SET
Nome_Especie = 'Papagaio'
WHERE
ID_Especie = 2;
