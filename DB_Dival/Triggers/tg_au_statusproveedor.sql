Use DB_Dival;
Drop trigger if exists tg_au_statusproveedor;
DELIMITER !!
Create trigger tg_au_statusproveedor After Update on proveedores
For each row
BEGIN
	IF NEW.status='B' then
		UPDATE ingredientes SET status='B' WHERE ingredientes.Id_Proveedor=NEW.Id_Proveedor;
	END IF;
	IF NEW.status='I' then
		UPDATE	ingredientes SET status='I' WHERE ingredientes.Id_Proveedor=NEW.Id_Proveedor;
	END IF;
	IF NEW.status='D' then
		UPDATE	ingredientes SET status='D' WHERE ingredientes.Id_Proveedor=NEW.Id_Proveedor;
	END IF;
END;
!!
