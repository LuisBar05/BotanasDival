package DAOS;

import POJOS.ListasIngredientes;
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
public class ListasIngredientesDAO<T> implements IDAO {

    private List<ListasIngredientes> myList = new LinkedList<>();

    @Override
    public List<ListasIngredientes> Consultar(ResultSet rs) {
        try {
            while (rs.next()) {
                ListasIngredientes listIngred = new ListasIngredientes();
                listIngred.setIdListIngred(rs.getInt("Id_ListasIngred"));
                listIngred.setIdReceta(rs.getInt("Id_Receta"));
                listIngred.setIdIngred(rs.getInt("Id_Ingrediente"));
                listIngred.setCantidad(rs.getFloat("Cantidad"));
                listIngred.setStatus(rs.getString("Status").charAt(0));
                myList.add(listIngred);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ListasIngredientesDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return myList;
    }

    @Override
    public void Insertar(List<String> inserted, Statement st, String actionQuery) {
        String values = "values(" + inserted.get(0) + ", " + inserted.get(1) + ", " + inserted.get(2) + ", '" + inserted.get(3) + "')";
        actionQuery = actionQuery.concat(" (Id_Receta, Id_Ingrediente, Cantidad, Status) ");

        try {
            st.executeUpdate(actionQuery.concat(values));
        } catch (SQLException ex) {
            Logger.getLogger(ListasIngredientesDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void Actualizar(List<String> changedRow, Statement st, String actionQuery) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
