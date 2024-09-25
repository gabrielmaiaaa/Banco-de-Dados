create materialized view Individuo as
select d.descrição, e.nome, e.salario, e.funcao
from departamento d join empregado e on
d.codigo = e.detpto