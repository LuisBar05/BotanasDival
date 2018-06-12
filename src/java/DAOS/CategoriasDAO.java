package DAOS;

import POJOS.Categorias;
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
public class CategoriasDAO<T> implements IDAO {

    private List<Categorias> myList = new LinkedList<>();
    private Categorias cat;

    @Override
    public List<Categorias> Consultar(ResultSet rs) {
        try {
            while (rs.next()) {
                cat = new Categorias();
                cat.setIdCat(rs.getInt("Id_Categoria"));
                cat.setNombreCat(rs.getString("Nombre_Categoria"));
                cat.setStatus(rs.getString("Status").charAt(0));
                myList.add(cat);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CategoriasDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return myList;
    }

    @Override
    public void Insertar(List<String> inserted, Statement st, String actionQuery) {
        cat = new Categorias();
        cat.setNombreCat(inserted.get(0));
        cat.setStatus(inserted.get(1).charAt(0));

        String values = "values('" + cat.getNombreCat() + "', '" + cat.getStatus() + "')";
        actionQuery = actionQuery.concat(" (Nombre_Categoria, Status) ");

        try {
            st.executeUpdate(actionQuery.concat(values));
        } catch (SQLException ex) {
            Logger.getLogger(CategoriasDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @Override
    public void Actualizar(List<String> changedRow, Statement st, String actionQuery) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
