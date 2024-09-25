create table Funcao(
	codigo int primary key,
	descricao varchar(200) not null,
	salario int not null
);

create table Funcionario(
	codigo int primary key,
	nome varchar(100) not null,
	cod_funcao int not null,
	dataadmissao date not null,
	foreign key (cod_funcao) references Funcao(codigo)
);

create table Peca(
	codigo int primary key,
	nome varchar(100) not null,
	descrição varchar(200) not null,
	qtdeestoque int not null
);

create table Composicao(
	idpecacomposta int,
	idpecaparte int,
	quantidade int,
	primary key(idpecacomposta, idpecaparte, quantidade),
	foreign key (idpecaparte) references Peca(codigo)
)