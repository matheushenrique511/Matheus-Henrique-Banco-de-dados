/* Criando o banco de dados */
create database SGE;

use SGE;

/* Tabela Alunos */
create table Alunos (
	id_Aluno int auto_increment primary key,
    nome varchar(100),
    data_nasc date
);

alter table Alunos
add column id_curso int;

alter table Alunos
add constraint fk_alunos_curso
foreign key (id_curso) references Cursos(id_curso);

/* Tabela Cursos */
create table Cursos (
	id_curso int auto_increment primary key,
    nome_curso varchar(75),
    carga_horaria int,
    disciplinas varchar(75),
    horarios datetime
);

alter table Cursos
add column preco decimal(10,2);

/* Tabela Professor */
create table Professores (
	id_professor int auto_increment primary key,
    nome varchar(100),
    data_nasc date,
    especialidade varchar(100)
);

alter table Professores
add column id_curso int;

alter table Professores
add constraint fk_professores_curso
foreign key (id_curso) references Cursos(id_curso);

/* Tabela Funcionario */
create table Funcionarios (
	id_funcionario int auto_increment primary key,
    nome varchar(100),
    data_nasc date,
    cargo varchar(50),
    salario decimal(10,2)
);

/* Inserindo dados */
insert into Cursos (nome_curso, preco)
values
("Engenharia da Computação", 3518.10),
("Análise e Desenvolvimento de Sistemas", 2758.00),
("Ciência da Computação", 1800.00);

insert into Alunos (nome, data_nasc, id_curso)
values
("Maikon", "2000-02-25", 1),
("Lanaildo", "1999-03-19", 2),
("Junielson", "1988-12-12", 3);

insert into Professores (nome, data_nasc, especialidade, id_curso)
values
("Carlos Silva", "1980-05-10", "Programação", 2),
("Ana Souza", "1975-08-22", "Redes de Computadores", 1);

insert into Funcionarios (nome, data_nasc, cargo, salario)
values
("Maria Oliveira", "1990-11-15", "Secretária", 2500.00),
("João Pereira", "1985-04-03", "Auxiliar Administrativo", 2200.00);
