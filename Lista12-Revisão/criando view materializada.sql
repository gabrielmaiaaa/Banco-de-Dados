create materialized view prerequisitos as
select d1.nome as disciplina, d2.nome as prerequisito
from disciplina d1
join requisito r on r.codd = d1.codigo
join disciplina d2 on r.codr = d2.codigo

insert into requisito values('COM07', 'MAT08')