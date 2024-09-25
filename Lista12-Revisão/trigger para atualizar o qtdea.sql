create or replace function atualizar()
returns trigger as $$
BEGIN
update disciplina set qtdea = qtdea + 1
	where codigo = new.codd;
return new;
END;
$$ LANGUAGE plpgsql;

create trigger qtdaluno
after
insert
on turma for each row 
execute function atualizar()
