create table Departamento(
	codigo int primary key,
	descrição varchar(200) not null,
	qtdefuncionarios int not null
);

create table Empregado(
	codigo int primary key,
	nome varchar(100) not null,
	funcao varchar(100) not null,
	salario int not null,
	detpto int not null,
	foreign key (detpto) references Departamento(codigo) on update cascade
);

insert into Departamento values(1, 'Comida', 90);
insert into Departamento values(2, 'Gás', 15);
insert into Departamento values(3, 'Eletricidade', 29);
insert into Departamento values(4, 'Tratamento de água', 06);
insert into Departamento values(5, 'Gerenciamento', 10);

insert into Empregado values(15, 'Pedro', 'Analista', 2000, 4);
insert into Empregado values(96, 'Julios', 'Pai', 1750, 5);
insert into Empregado values(36, 'Maria', 'Condutora', 3900, 3);
insert into Empregado values(26, 'Caio', 'Cheirador', 6000, 2);
insert into Empregado values(8, 'Lucas', 'Boracha', 2800, 3)