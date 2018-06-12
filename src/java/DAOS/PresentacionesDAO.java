package DAOS;

import POJOS.Presentaciones;
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
public class PresentacionesDAO<T> implements IDAO {

    private List<Presentaciones> myList = new LinkedList<>();

    @Override
    public List<Presentaciones> Consultar(ResultSet rs) {
        try {
            while (rs.next()) {
                Presentaciones pres = new Presentaciones();
                pres.setIdPresent(rs.getInt("Id_Presentacion"));
                pres.setCantidad(rs.getFloat("Cantidad"));
                pres.setIdUniMed(rs.getInt("Id_UniMed"));
                pres.setStatus(rs.getString("Status").charAt(0));
                myList.add(pres);
            }
        } catch (SQLException ex) {
            Logger.getLogger(PresentacionesDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return myList;
    }

    @Override
    public void Insertar(List<String> inserted, Statement st, String actionQuery) {
        String values = "values(" + inserted.get(0) + ", " + inserted.get(1) + ", '" + inserted.get(2) + "')";
        actionQuery = actionQuery.concat(" (Cantidad, Id_UniMed, Status) ");

        try {
            st.executeUpdate(actionQuery.concat(values));
        } catch (SQLException ex) {
            Logger.getLogger(PresentacionesDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
