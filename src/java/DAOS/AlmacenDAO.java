package DAOS;

import POJOS.Almacen;
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
public class AlmacenDAO<T> implements IDAO {

    private List<Almacen> myList = new LinkedList<>();
    private Almacen alm;

    @Override
    public List<Almacen> Consultar(ResultSet rs) {
        try {
            while (rs.next()) {
                alm = new Almacen();
                alm.setIdAlmacen(rs.getInt("Id_Almacen"));
                alm.setIdIngred(rs.getInt("Id_Ingrediente"));
                alm.setCantidad(rs.getInt("Cantidad"));
                alm.setFechaCaducidad(rs.getDate("Fecha_Caducidad"));
                alm.setStatus(rs.getString("Status").charAt(0));
                myList.add(alm);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AlmacenDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return myList;
    }

    @Override
    public void Insertar(List<String> inserted, Statement st, String actionQuery) {
        String values = "values(" + inserted.get(0) + ", " + inserted.get(1) + ", '"
                + inserted.get(2) + "', '" + inserted.get(3) + "')";

//        for (int i = 0; i < inserted.size(); i++) {
//            if (i != inserted.size() - 1) {
//                if(inserted.get(i).equals("now()"))
//                    values = values.concat(inserted.get(i)).concat(", '");
//                values = values.concat(inserted.get(i)).concat("', '");
//            } else {
//                values = values.concat(inserted.get(i)).concat("')");
//            }
//        }
        actionQuery = actionQuery.concat(" (Id_Ingrediente, Cantidad, Fecha_Caducidad, Status) ");
        try {
            st.executeUpdate(actionQuery.concat(values));
        } catch (SQLException ex) {
            Logger.getLogger(AlmacenDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @Override
    public void Actualizar(List<String> changedRow, Statement st, String actionQuery) {
        String idRow = changedRow.get(0);
        String setValues = " set Id_Ingrediente=" + changedRow.get(1) + ", Cantidad=" + changedRow.get(2)
                + ", Fecha_Caducidad='" + changedRow.get(3) + "', Status='" + changedRow.get(4) + "' ";

        actionQuery = actionQuery.concat(setValues).concat("where Id_Almacen=" + idRow);

        try {
            st.executeUpdate(actionQuery);
        } catch (SQLException ex) {
            Logger.getLogger(AlmacenDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
