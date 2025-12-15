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











