Use DB_Dival;
Drop view if exists vw_ingredientescaducados;
Create view vw_ingredientescaducados as
	Select ingredientes.Nombre_Ingrediente, almacen.Fecha_Caducidad, almacen.Cantidad, compras.Fecha_Compra, proveedores.Nombre_Prov
    from ((((ingredientes
    Left Join almacen ON ingredientes.Id_Ingrediente=almacen.Id_Ingrediente)
    Left Join proveedores ON ingredientes.Id_Proveedor=proveedores.Id_Proveedor)
    Left Join detalle_compra ON ingredientes.Id_Ingrediente=detalle_compra.Id_Ingrediente)
    Left Join compras ON detalle_compra.Id_Compra=compras.Id_Compra)
    Where almacen.Fecha_Caducidad <=curdate()
    Order by almacen.Fecha_Caducidad DESC;