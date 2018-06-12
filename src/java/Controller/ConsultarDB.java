package Controller;

import DAOS.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

/**
 *
 * @author Luis
 */
public class ConsultarDB {

    private static Statement st;
    private static ResultSet rs;
    private static String query;
    private static ConnectionDB connectDb;

    public static <T> List getConsulta(String tabla) {
        List<T> myList = new LinkedList<>();
        connectDb = new ConnectionDB();

        try {
            st = connectDb.getConexion().createStatement();
            query = "select * from ".concat(tabla);
            rs = st.executeQuery(query);
        } catch (SQLException sqle) {
            System.err.println("HA OCURRIDO UN ERROR");
        }

        switch (tabla) {
            case "almacen":
                myList = new AlmacenDAO().Consultar(rs);
                break;

            case "categorias":
                myList = new CategoriasDAO().Consultar(rs);
                break;

            case "clientes_factura":
                myList = new ClientesFacturaDAO().Consultar(rs);
                break;

            case "compras":
                myList = new ComprasDAO().Consultar(rs);
                break;

            case "detalle_compra":
                myList = new DetalleCompraDAO().Consultar(rs);
                break;

            case "detalle_venta":
                myList = new DetalleVentaDAO().Consultar(rs);
                break;

            case "factura":
                myList = new FacturaDAO().Consultar(rs);
                break;

            case "forma_pago":
                myList = new FormaPagoDAO().Consultar(rs);
                break;

            case "ingredientes":
                myList = new IngredientesDAO().Consultar(rs);
                break;

            case "inventario":
                myList = new InventarioDAO().Consultar(rs);
                break;

            case "listas_ingredientes":
                myList = new ListasIngredientesDAO().Consultar(rs);
                break;

            case "presentaciones":
                myList = new PresentacionesDAO().Consultar(rs);
                break;

            case "productos":
                myList = new ProductosDAO().Consultar(rs);
                break;

            case "proveedores":
                myList = new ProveedoresDAO().Consultar(rs);
                break;

            case "recetas":
                myList = new RecetasDAO().Consultar(rs);
                break;

            case "status":
                myList = new StatusDAO().Consultar(rs);
                break;

            case "unidades_medida":
                myList = new UnidadesMedidaDAO().Consultar(rs);
                break;

            case "usuarios":
                myList = new UsuariosDAO().Consultar(rs);
                break;

            case "ventas":
                myList = new VentasDAO().Consultar(rs);
                break;

            default:
                throw new IllegalArgumentException("Consulta no válida para: " + tabla);
        }

        try {
            rs.close();
            st.close();
            connectDb.getConexion().close();
        } catch (SQLException sqle) {
            System.err.println("ERROR AL INTENTAR CERRAR LA CONEXIÓN");
        }

        return myList;
    }

}
