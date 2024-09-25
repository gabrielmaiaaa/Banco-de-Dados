create table aluno(
	mat int not null unique,
	nome varchar(100) not null,
	cpf varchar(20) not null unique,
	email varchar(100) not null,
	situacao varchar(50) not null
);

create table disciplina(
	codigo varchar(10) primary key,
	nome varchar(50) not null,
	descricao varchar(100) not null,
	qtdea int not null
);

create table turma(
	codigo varchar(10) primary key,
	mat int not null,
	codd varchar(10) not null,
	nota int not null,
	freq int not null check (freq between 1 and 100),
	resultado varchar(50) not null,
	foreign key (mat) references aluno(mat),
	foreign key (codd) references disciplina(codigo)
);

create table requisito(
	codd varchar(10) not null,
	codr varchar(10) not null,
	foreign key (codd) references disciplina(codigo),
	foreign key (codr) references disciplina(codigo)
)