create materialized view Composto as
select c.idpecacomposta, p.nome, c.quantidade
from composicoes c join pecas p on	c.idpecaparte = p.codigo 