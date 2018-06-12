package DAOS;

import POJOS.UnidadesMedida;
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
public class UnidadesMedidaDAO<T> implements IDAO {

    private List<UnidadesMedida> myList = new LinkedList<>();
    private UnidadesMedida um;

    @Override
    public List<UnidadesMedida> Consultar(ResultSet rs) {
        try {
            while (rs.next()) {
                um = new UnidadesMedida();
                um.setIdUniMed(rs.getInt("Id_UniMed"));
                um.setDescripcionUniMed(rs.getString("Descripcion_UniMed"));
                um.setStatus(rs.getString("Status").charAt(0));
                myList.add(um);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UnidadesMedidaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return myList;
    }

    @Override
    public void Insertar(List<String> inserted, Statement st, String actionQuery) {
        um = new UnidadesMedida();
        um.setDescripcionUniMed(inserted.get(0));
        um.setStatus(inserted.get(1).charAt(0));

        String values = "values('" + um.getDescripcionUniMed() + "', '" + um.getStatus() + "')";
        actionQuery = actionQuery.concat(" (Descripcion_UniMed, Status) ");
        try {
            st.executeUpdate(actionQuery.concat(values));
        } catch (SQLException ex) {
            Logger.getLogger(UnidadesMedidaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
