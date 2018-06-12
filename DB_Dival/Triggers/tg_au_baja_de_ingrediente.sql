Use DB_Dival;
Drop trigger if exists tg_au_baja_de_ingrediente;
Delimiter ??
Create trigger tg_au_baja_de_ingrediente after update on ingredientes
For each row
Begin
	If NEW.status='B' Then
		Update listas_ingredientes set status = 'B' Where listas_ingredientes.Id_Ingrediente = NEW.Id_Ingrediente;
        Update almacen Set status = 'B' Where almacen.Id_Ingrediente = NEW.Id_Ingrediente;
	End if;
End;
??