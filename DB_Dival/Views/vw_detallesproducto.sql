Use DB_Dival;
Drop view if exists vw_detallesproducto;
Create view vw_detallesproducto as
	Select vw_ventasdeldia.Cod_Producto, count(vw_ventasdeldia.Cod_Producto) as Unidades_Vendidas,
    SUM(vw_ventasdeldia.Precio) as Total_Vendido from (vw_ventasdeldia
    Left Join productos ON vw_ventasdeldia.Cod_Producto=productos.Cod_Producto)
    Group By vw_ventasdeldia.Cod_Producto
    Order By vw_ventasdeldia.Cod_Producto;