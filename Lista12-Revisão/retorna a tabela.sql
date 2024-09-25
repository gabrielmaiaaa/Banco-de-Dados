DROP FUNCTION IF EXISTS listar(situ varchar);

create or replace function listar(situ varchar)
returns varchar as $$
begin
	select mat, nome, cpf, email
	from aluno
	where situacao = situ;
end;
$$ language plpgsql