create or replace trigger mod_in_cli after insert or update of nombre,
provincia on tcliente
begin
	if inserting then
		dbms_output.put_line('Se ha insertado un cliente ');
	end if;
	if updating then 
		dbms_output.put_line('Se ha modificado un cliente ');
	end if;
end;
/