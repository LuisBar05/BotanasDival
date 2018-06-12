package DAOS;

import POJOS.Ingredientes;
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
public class IngredientesDAO<T> implements IDAO {

    private List<Ingredientes> myList = new LinkedList<>();

    @Override
    public List<Ingredientes> Consultar(ResultSet rs) {
        try {
            while (rs.next()) {
                Ingredientes ingred = new Ingredientes();
                ingred.setIdIngred(rs.getInt("Id_Ingrediente"));
                ingred.setNombreIngred(rs.getString("Nombre_Ingrediente"));
                ingred.setCantidad(rs.getFloat("Cantidad"));
                ingred.setIdUniMed(rs.getInt("Id_UniMed"));
                ingred.setIdProv(rs.getInt("Id_Proveedor"));
                ingred.setPrecioCompra(rs.getFloat("Precio_Compra"));
                ingred.setStatus(rs.getString("Status").charAt(0));
                myList.add(ingred);
            }

        } catch (SQLException ex) {
            Logger.getLogger(IngredientesDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return myList;
    }

    @Override
    public void Insertar(List<String> inserted, Statement st, String actionQuery) {
        String values = "values('" + inserted.get(0) + "', " + inserted.get(1) + ", " + inserted.get(2)
                + ", " + inserted.get(3) + ", " + inserted.get(4) + ", '" + inserted.get(5) + "')";

        actionQuery = actionQuery.concat(" (Nombre_Ingrediente, Cantidad, Id_UniMed, Id_Proveedor"
                + ", Precio_Compra, Status) ");

        try {
            st.executeUpdate(actionQuery.concat(values));
        } catch (SQLException ex) {
            Logger.getLogger(IngredientesDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @Override
    public void Actualizar(List<String> changedRow, Statement st, String actionQuery) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
