create database SGE;

use SGE;

/*criando a primeira tabela*/
create table Alunos (
	id_Aluno int auto_increment primary key,
    nome varchar(100),
    data_nasc date

);

alter table Alunos
ADD column  id_curso int;

alter table Alunos
add constraint fk_alunos_curso
foreign key (id_curso) references Cursos(id_curso);


/*criando a segunda tabela*/
create table Cursos (
	id_curso int auto_increment primary key,
    nome_curso varchar(75),
    carga_horaria int,
    disciplinas varchar(75),
    horarios datetime
);

/*Adicionando coluna na segunda tabela*/
alter table Cursos
ADD column preco decimal(10,2);

/*Inserir valores na tabela*/
insert into cursos(nome_curso, preco)
values
("Engenharia Da Computação", 3518.10),
("Análise Desenvolvimento De Sistemas", 2758),
("Ciência Da Computação", 1800);

insert into Alunos(id_aluno, nome, data_nasc)
values
(12, "Maikon","2000-02-25"),
(32, "Lanaildo", "1999-03-19"),
(16, "Junielson", "1988-12-12"); 











