package DAOS;

import POJOS.Inventario;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Luis
 * @param <T>
 */
public class InventarioDAO<T> implements IDAO {

    private List<Inventario> myList = new LinkedList<>();

    @Override
    public List<Inventario> Consultar(ResultSet rs) {
        try {
            while (rs.next()) {
                Inventario inv = new Inventario();
                inv.setIdInventario(rs.getInt("Id_Inventario"));
                inv.setFechaRegistro(rs.getDate("Fecha_Registro"));
                inv.setCodProduct(rs.getString("Cod_Producto"));
                inv.setCantidad(rs.getInt("Cantidad"));
                inv.setFechaElaboracion(rs.getDate("Fecha_Elaboracion"));
                inv.setFechaCaducidad(rs.getDate("Fecha_Caducidad"));
                inv.setStatus(rs.getString("Status").charAt(0));
                myList.add(inv);
            }
        } catch (SQLException ex) {
            Logger.getLogger(InventarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return myList;
    }

    @Override
    public void Insertar(List<String> inserted, Statement st, String actionQuery) {
        String values = "values('" + inserted.get(0) + "', '" + inserted.get(1) + "', " + inserted.get(2) + ", '" + inserted.get(3)
                + "', '" + inserted.get(4) + "', '" + inserted.get(5) + "')";
        actionQuery = actionQuery.concat(" (Fecha_Registro, Cod_Producto, Cantidad, Fecha_Elaboracion, Fecha_Caducidad, Status) ");

        try {
            st.executeUpdate(actionQuery.concat(values));
        } catch (SQLException ex) {
            Logger.getLogger(InventarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void Actualizar(List<String> changedRow, Statement st, String actionQuery) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
