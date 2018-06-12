package DAOS;

import POJOS.FormaPago;
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
public class FormaPagoDAO<T> implements IDAO {

    private List<FormaPago> myList = new LinkedList<>();

    @Override
    public List<FormaPago> Consultar(ResultSet rs) {
        try {
            while (rs.next()) {
                FormaPago fp = new FormaPago();
                fp.setIdFormaPago(rs.getInt("Id_FormaPago"));
                fp.setTipoPago(rs.getString("Tipo_Pago"));
                fp.setStatus(rs.getString("Status").charAt(0));
                myList.add(fp);
            }
        } catch (SQLException ex) {
            Logger.getLogger(FormaPagoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return myList;
    }

    @Override
    public void Insertar(List<String> inserted, Statement st, String actionQuery) {
        String values = "values('" + inserted.get(0) + "', '" + inserted.get(1) + "')";
        actionQuery = actionQuery.concat(" (Tipo_Pago, Status) ");

        try {
            st.executeUpdate(actionQuery.concat(values));
        } catch (SQLException ex) {
            Logger.getLogger(FormaPagoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void Actualizar(List<String> changedRow, Statement st, String actionQuery) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
