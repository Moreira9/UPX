drop database if exists Vango;
create database Vango;
use Vango;

create table Cadastro(
	id int primary key auto_increment,
    nome varchar(45) not null,
    data_de_nascimneto date not null,
    email varchar(255) not null,
    celular varchar(45) not null,
    senha varchar(45) not null,
    logradouro varchar(45),
    numeroCasa varchar(45),
    cep varchar(8),
    alunoOuMotorista varchar(45)
    
);
create table Instituicoes(
	id int primary key auto_increment,
    nome varchar(45) not null


);

create table Aluno(
	id int primary key auto_increment,
    cadastro_id int,
    instituicoes_id int,

    foreign key (cadastro_id) references Cadastro(id),
    foreign key (instituicoes_id) references Instituicoes(id)

);


create table Motorista(
	id int primary key auto_increment,
    cnh varchar(45),
    modelo_van varchar(45),
    placa varchar(7),
    valor float,
    assentos int,
    cadastro_id int,
    
     foreign key (cadastro_id) references Cadastro(id)

    
    
);


create table instituicoes_has_motorista(
	instituicoes_id int,
    motorista_id int,
	
    foreign key (instituicoes_id) references Instituicoes(id),
    foreign key (motorista_id) references  Motorista(id)
    
    
);


