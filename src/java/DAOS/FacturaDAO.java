package DAOS;

import POJOS.Factura;
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
public class FacturaDAO<T> implements IDAO {

    private List<Factura> myList = new LinkedList<>();

    @Override
    public List<Factura> Consultar(ResultSet rs) {
        try {
            while (rs.next()) {
                Factura fact = new Factura();
                fact.setIdFactura(rs.getInt("Id_Factura"));
                fact.setIdClient(rs.getInt("Id_Cliente"));
                fact.setIdCompra(rs.getInt("Id_Compra"));
                fact.setStatus(rs.getString("Status").charAt(0));
                myList.add(fact);
            }
        } catch (SQLException ex) {
            Logger.getLogger(FacturaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return myList;
    }

    @Override
    public void Insertar(List<String> inserted, Statement st, String actionQuery) {
        String values = "values(" + inserted.get(0) + ", " + inserted.get(1) + ", '" + inserted.get(2) + "')";
        actionQuery = actionQuery.concat(" (Id_Cliente, Id_Compra, Status) ");

        try {
            st.executeUpdate(actionQuery.concat(values));
        } catch (SQLException ex) {
            Logger.getLogger(FacturaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
