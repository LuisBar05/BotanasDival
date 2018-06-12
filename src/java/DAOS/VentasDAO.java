package DAOS;

import POJOS.Ventas;
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
public class VentasDAO<T> implements IDAO {

    private List<Ventas> myList = new LinkedList<>();

    @Override
    public List<Ventas> Consultar(ResultSet rs) {
        try {
            while (rs.next()) {
                Ventas venta = new Ventas();
                venta.setIdVta(rs.getInt("Id_Venta"));
                venta.setSubtotal(rs.getFloat("Subtotal"));
                venta.setImpuesto(rs.getFloat("Impuesto"));
                venta.setTotalVta(rs.getFloat("Total_Vta"));
                venta.setFechaVta(rs.getDate("Fecha_Vta"));
                venta.setStatus(rs.getString("Status").charAt(0));
                myList.add(venta);
            }
        } catch (SQLException ex) {
            Logger.getLogger(VentasDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return myList;
    }

    @Override
    public void Insertar(List<String> inserted, Statement st, String actionQuery) {
        String values = "values(" + inserted.get(0) + ", " + inserted.get(1) + ", " + inserted.get(2) + ", '"
                + inserted.get(3) + "', '" + inserted.get(4) + "')";
        actionQuery = actionQuery.concat(" (Subtotal, Impuesto, Total_Vta, Fecha_Vta, Status) ");

        try {
            st.executeUpdate(actionQuery.concat(values));
        } catch (SQLException ex) {
            Logger.getLogger(VentasDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void Actualizar(List<String> changedRow, Statement st, String actionQuery) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
