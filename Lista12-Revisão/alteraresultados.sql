create or replace function aletararesultados()
returns void as $$
begin
	UPDATE turma
    SET resultado = CASE 
                        WHEN nota >= 6 THEN 'aprovado'
                        ELSE 'reprovado'
                    END;
end;
$$ language plpgsql