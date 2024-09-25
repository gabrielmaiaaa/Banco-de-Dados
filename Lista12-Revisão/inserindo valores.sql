insert into aluno values(2022005, 'Julios', '111.222.333-44', 'julios@gmail.com', 'Frequenta');
insert into aluno values(2022018, 'Maria', '444.333.222-11', 'maria@gmail.com', 'Frequenta');

insert into disciplina values('MAT01', 'Calculo A', 'Menos calculos', 0);
insert into disciplina values('MAT08', 'Calculo D', 'Muitos calculos', 1);
insert into disciplina values('COM07', 'Programação OO', 'Orientando os alunos', 0);
insert into disciplina values('COM01', 'Programação lógica', 'Básico da programação', 2);

insert into turma values('B02', '2022005', 'MAT08', 8, 87, 'Aprovado');
insert into turma values('D97', '2022005', 'COM01', 3, 56, 'Reprovado');
insert into turma values('J76', '2022018', 'COM01', 6, 100, 'Aprovada');
insert into turma values('A01', '2022018', 'MAT01', 4.5, 69, 'Reprovado');

insert into requisito values('MAT08', 'MAT01');
insert into requisito values('COM07', 'COM01')