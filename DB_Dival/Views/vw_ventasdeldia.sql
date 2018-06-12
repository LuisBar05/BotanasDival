Use DB_Dival;
Drop view if exists vw_ventasdeldia;
Create view vw_ventasdeldia as
	Select ventas.Id_Venta, categorias.Nombre_Categoria, detalle_venta.Cod_Producto, productos.Descripcion, productos.Precio
    from ((((Ventas
    Inner Join detalle_venta ON ventas.Id_Venta=detalle_venta.Id_Venta)
    Inner Join productos ON detalle_venta.Cod_Producto=productos.Cod_Producto)
    Inner Join recetas ON productos.Id_Receta=recetas.Id_Receta)
    Inner Join categorias ON recetas.Id_Categoria=categorias.Id_Categoria)
    Where ventas.Fecha_Vta = curdate()
    Order By ventas.Id_Venta ASC;