/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAOS.AlmacenDAO;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Luis
 */
public class ActualizarDB {

    private static Statement st;
    private static String actionQuery;
    private static ConnectionDB connectDb;

    public static void actualizarRegistro(String tabla, List<String> changedRow) {
        connectDb = new ConnectionDB();
        actionQuery = "update ".concat(tabla);

        try {
            st = connectDb.getConexion().createStatement();
        } catch (SQLException ex) {
            Logger.getLogger(ActualizarDB.class.getName()).log(Level.SEVERE, null, ex);
        }

        switch (tabla) {
            case "almacen":
                new AlmacenDAO().Actualizar(changedRow, st, actionQuery);
                break;

            case "categorias":
                break;

            case "clientes_factura":
                break;

            case "compras":
                break;

            case "detalle_compra":
                break;

            case "detalle_venta":
                break;

            case "factura":
                break;

            case "forma_pago":
                break;

            case "ingredientes":
                break;

            case "inventario":
                break;

            case "listas_ingredientes":
                break;

            case "presentaciones":
                break;

            case "productos":
                break;

            case "proveedores":
                break;

            case "recetas":
                break;

            case "status":
                break;

            case "unidades_medida":
                break;

            case "usuarios":
                break;

            case "ventas":
                break;

            default:
                throw new IllegalArgumentException("Consulta no válida para: " + tabla);
        }

        try {
            st.close();
            connectDb.getConexion().close();
        } catch (SQLException ex) {
            Logger.getLogger(ActualizarDB.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
