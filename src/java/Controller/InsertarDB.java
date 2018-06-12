package Controller;

import DAOS.*;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Luis
 */
public class InsertarDB {

    private static Statement st;
    private static String actionQuery;
    private static ConnectionDB connectDb;

    public static void insertarRegistro(String tabla, List<String> inserted) {
        connectDb = new ConnectionDB();
        actionQuery = "insert into ".concat(tabla);

        try {
            st = connectDb.getConexion().createStatement();
        } catch (SQLException ex) {
            Logger.getLogger(InsertarDB.class.getName()).log(Level.SEVERE, null, ex);
        }

        switch (tabla) {
            case "almacen":
                new AlmacenDAO().Insertar(inserted, st, actionQuery);
                break;

            case "categorias":
                new CategoriasDAO().Insertar(inserted, st, actionQuery);
                break;

            case "clientes_factura":
                new ClientesFacturaDAO().Insertar(inserted, st, actionQuery);
                break;

            case "compras":
                new ComprasDAO().Insertar(inserted, st, actionQuery);
                break;

            case "detalle_compra":
                new DetalleCompraDAO().Insertar(inserted, st, actionQuery);
                break;

            case "detalle_vta":
                new DetalleVentaDAO().Insertar(inserted, st, actionQuery);
                break;

            case "factura":
                new FacturaDAO().Insertar(inserted, st, actionQuery);
                break;

            case "forma_pago":
                new FormaPagoDAO().Insertar(inserted, st, actionQuery);
                break;

            case "ingredientes":
                new IngredientesDAO().Insertar(inserted, st, actionQuery);
                break;

            case "inventario":
                new InventarioDAO().Insertar(inserted, st, actionQuery);
                break;

            case "listas_ingredientes":
                new ListasIngredientesDAO().Insertar(inserted, st, actionQuery);
                break;

            case "presentaciones":
                new PresentacionesDAO().Insertar(inserted, st, actionQuery);
                break;

            case "productos":
                new ProductosDAO().Insertar(inserted, st, actionQuery);
                break;

            case "proveedores":
                new ProveedoresDAO().Insertar(inserted, st, actionQuery);
                break;

            case "recetas":
                new RecetasDAO().Insertar(inserted, st, actionQuery);
                break;

            case "status":
                new StatusDAO().Insertar(inserted, st, actionQuery);
                break;

            case "unidades_medida":
                new CategoriasDAO().Insertar(inserted, st, actionQuery);
                break;

            case "usuarios":
                new UsuariosDAO().Insertar(inserted, st, actionQuery);
                break;

            case "ventas":
                new VentasDAO().Insertar(inserted, st, actionQuery);
                break;

            default:
                throw new IllegalArgumentException("Consulta no válida para: " + tabla);

        }

        try {
            st.close();
            connectDb.getConexion().close();
        } catch (SQLException sqle) {
            System.err.println("ERROR AL INTENTAR CERRAR LA CONEXIÓN");
        }
    }

}
