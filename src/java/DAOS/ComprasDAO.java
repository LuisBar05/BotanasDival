package DAOS;

import POJOS.Compras;
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
 */
public class ComprasDAO<T> implements IDAO {

    private List<Compras> myList = new LinkedList<>();

    @Override
    public List<Compras> Consultar(ResultSet rs) {
        try {
            while (rs.next()) {
                Compras compra = new Compras();
                compra.setIdCompra(rs.getInt("Id_Compra"));
                compra.setSubtotal(rs.getDouble("Subtotal"));
                compra.setImpuesto(rs.getDouble("Impuesto"));
                compra.setTotalCompra(rs.getDouble("Total_Compra"));
                compra.setFechaCompra(rs.getDate("Fecha_Compra"));
                compra.setStatus(rs.getString("Status").charAt(0));
                myList.add(compra);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ComprasDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return myList;
    }

    @Override
    public void Insertar(List<String> inserted, Statement st, String actionQuery) {
        String values = "values(" + inserted.get(0) + ", " + inserted.get(1) + ", " + inserted.get(2) + ", '"
                + inserted.get(3) + "', '" + inserted.get(4) + "')";
        actionQuery = actionQuery.concat(" (Subtotal, Impuesto, Total_Compra, Fecha_Compra, Status) ");

        try {
            st.executeUpdate(actionQuery.concat(values));
        } catch (SQLException ex) {
            Logger.getLogger(ComprasDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
