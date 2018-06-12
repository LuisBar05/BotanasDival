package DAOS;

import POJOS.Status;
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
public class StatusDAO<T> implements IDAO {

    private List<Status> myList = new LinkedList<>();

    @Override
    public List<Status> Consultar(ResultSet rs) {
        try {
            while (rs.next()) {
                Status st = new Status();
                st.setIdStatus(rs.getInt("Id_Status"));
                st.setStatus(rs.getString("Status").charAt(0));
                st.setDescripcionStatus(rs.getString("Descripcion_Status"));
                myList.add(st);
            }
        } catch (SQLException ex) {
            Logger.getLogger(StatusDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return myList;
    }

    @Override
    public void Insertar(List<String> inserted, Statement st, String actionQuery) {
        String values = "values('" + inserted.get(0) + "', '" + inserted.get(1) + "')";
        actionQuery = actionQuery.concat(" (Status, Descripcion_Status) ");

        try {
            st.executeUpdate(actionQuery.concat(values));
        } catch (SQLException ex) {
            Logger.getLogger(StatusDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
