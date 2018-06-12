Use DB_Dival;
Drop trigger if exists tg_bu_descontinuar_receta;
DELIMITER $$
Create trigger tg_bu_descontinuar_receta before update on recetas
For each row
Begin
    If NEW.status = 'B' Then
		Update productos Set status='B' Where productos.Id_Receta = new.Id_Receta;
		Update inventario Set status='B' Where inventario.Cod_Producto = productos.Cod_Producto AND productos.Status = 'B';
        Update listas_ingredientes Set status='B' Where listas_ingredientes.Id_Receta = new.Id_Receta;
	End If;
END;
$$    
    