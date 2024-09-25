create view AlunoSituacao as
select a.nome, d.nome as disciplina, t.nota, t.freq, t.resultado
from turma t
join aluno a on a.mat = t.mat
join disciplina d on d.codigo = t.codd