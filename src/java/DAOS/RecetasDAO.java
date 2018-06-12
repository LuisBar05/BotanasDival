package DAOS;

import POJOS.Recetas;
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
public class RecetasDAO<T> implements IDAO {

    private List<Recetas> myList = new LinkedList<>();

    @Override
    public List<Recetas> Consultar(ResultSet rs) {
        try {
            while (rs.next()) {
                Recetas rec = new Recetas();
                rec.setIdReceta(rs.getInt("Id_Receta"));
                rec.setIdCat(rs.getInt("Id_Categoria"));
                rec.setDescripcion(rs.getString("Descripcion"));
                rec.setMerma(rs.getFloat("Merma"));
                rec.setIdUniMed(rs.getInt("Id_UniMed"));
                rec.setCostoKilo(rs.getFloat("Costo_Kilo"));
                rec.setStatus(rs.getString("Status").charAt(0));
                myList.add(rec);
            }
        } catch (SQLException ex) {
            Logger.getLogger(RecetasDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return myList;
    }

    @Override
    public void Insertar(List<String> inserted, Statement st, String actionQuery) {
        String values = "values(" + inserted.get(0) + ", '" + inserted.get(1) + "', " + inserted.get(2) + ", " + inserted.get(3)
                + ", " + inserted.get(4) + ", '" + inserted.get(5) + "')";
        actionQuery = actionQuery.concat(" (Id_Categoria, Descripcion, Merma, Id_UniMed, Costo_Kilo, Status) ");

        try {
            st.executeUpdate(actionQuery.concat(values));
        } catch (SQLException ex) {
            Logger.getLogger(RecetasDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void Actualizar(List<String> changedRow, Statement st, String actionQuery) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
