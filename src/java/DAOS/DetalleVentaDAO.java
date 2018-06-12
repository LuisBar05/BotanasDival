package DAOS;

import POJOS.DetalleVenta;
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
public class DetalleVentaDAO<T> implements IDAO {

    private List<DetalleVenta> myList = new LinkedList<>();

    @Override
    public List<DetalleVenta> Consultar(ResultSet rs) {
        try {
            while (rs.next()) {
                DetalleVenta detVta = new DetalleVenta();
                detVta.setIdDetVta(rs.getInt("Id_DetVenta"));
                detVta.setIdVta(rs.getInt("Id_Venta"));
                detVta.setCodProduct(rs.getString("Cod_Producto"));
                detVta.setCantidad(rs.getInt("Cantidad"));
                detVta.setStatus(rs.getString("Status").charAt(0));
                myList.add(detVta);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DetalleVentaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return myList;
    }

    @Override
    public void Insertar(List<String> inserted, Statement st, String actionQuery) {
        String values = "values(" + inserted.get(0) + ", '" + inserted.get(1) + "', " + inserted.get(2) + ", '" + inserted.get(3) + "')";
        actionQuery = actionQuery.concat(" (Id_Venta, Cod_Producto, Cantidad, Status) ");

        try {
            st.executeUpdate(actionQuery.concat(values));
        } catch (SQLException ex) {
            Logger.getLogger(DetalleVentaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
