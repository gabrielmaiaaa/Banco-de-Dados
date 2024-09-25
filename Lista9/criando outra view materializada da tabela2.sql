create materialized view Dados as
select d.descrição, d.qtdefuncionarios, max(e.salario), min(e.salario), avg(e.salario)
from departamento d join empregado e on
d.codigo = e.detpto
group by d.descrição, d.qtdefuncionarios