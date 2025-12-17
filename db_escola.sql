CREATE DATABASE db_escola;

use db_escola;

CREATE TABLE alunos (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    serie VARCHAR(50)
);

INSERT INTO alunos (nome, idade, serie)
VALUES
('Pedro Henrique', 15, '1º Ano EM'),
('Juliana Paes', 13, '8º Ano'),
('Rafaela Souza', 16, '2º Ano EM'),
('Lucas Oliveira', 14, '9º Ano'),
('Isabela Alves', 13, '8º Ano');

SELECT * FROM alunos;

SELECT nome, idade FROM alunos;

SELECT * FROM alunos WHERE serie = '1º Ano';

UPDATE alunos
SET idade = 15
WHERE nome = 'Mauricío De Policarpio Pinto';

SELECT * FROM alunos WHERE nome = 'Mauricío De Policarpio Pinto';

SET SQL_SAFE_UPDATES=0;
DELETE FROM alunos WHERE nome = 'Jonas Frederico';
SET SQL_SAFE_UPDATES=1;

SELECT * FROM alunos;

CREATE TABLE professores (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    materia VARCHAR(50)
);

INSERT INTO professores (nome, materia)
VALUES
('Eduardo Freire', 'Português'),
('Josivelto Ortiga', 'Matemática'),
('Amadeu Soares', 'História');

SELECT * FROM professores;
