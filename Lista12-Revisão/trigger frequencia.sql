create or replace function aprovacao()
returns trigger as $$
begin
	if(new.freq < 75) then 
	new.nota := 0;
	elseif((new.freq >= 75) and (new.nota != 0)) then
	raise exception 'Inserção cancelada';
	end if;
return new;
end;
$$ Language plpgsql;

create trigger verifica
after insert on turma
for each row
execute procedure aprovacao()