create database corinthians;

use corinthians;

create table cadastroUsuario (
idCadastro int primary key auto_increment,
nome varchar(45) not null,
cpf char(14) not null,
email varchar(70) not null,
senha varchar(100) not null
);

create table loginUsuario (
idLogin int auto_increment,
email varchar(70) not null,
senha varchar(100) not null,
fkUsuario int,
foreign key (fkUsuario) references cadastroUsuario(idCadastro),
primary key (idLogin, fkUsuario)
)auto_increment = 100;

create table interacao (
idInteracao int primary key auto_increment,
dataHora datetime not null,
acertos int not null,
fkUsuario int not null,
foreign key (fkUsuario) references cadastroUsuario(idCadastro)
);
