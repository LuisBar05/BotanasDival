package DAOS;

import POJOS.DetalleCompra;
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
public class DetalleCompraDAO<T> implements IDAO {

    private List<DetalleCompra> myList = new LinkedList<>();

    @Override
    public List<DetalleCompra> Consultar(ResultSet rs) {
        try {
            while (rs.next()) {
                DetalleCompra detComp = new DetalleCompra();
                detComp.setIdCompra(rs.getInt("Id_DetCompra"));
                detComp.setIdCompra(rs.getInt("Id_Compra"));
                detComp.setIdIngrediente(rs.getInt("Id_Ingrediente"));
                detComp.setCantidad(rs.getFloat("Cantidad"));
                detComp.setStatus(rs.getString("Status").charAt(0));
                myList.add(detComp);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DetalleCompraDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return myList;
    }

    @Override
    public void Insertar(List<String> inserted, Statement st, String actionQuery) {
        String values = "values(" + inserted.get(0) + ", " + inserted.get(1) + ", " + inserted.get(2)
                + ", '" + inserted.get(3) + "')";
        actionQuery = actionQuery.concat(" (Id_Compra, Id_Ingrediente, Cantidad, Status) ");

        try {
            st.executeUpdate(actionQuery.concat(values));
        } catch (SQLException ex) {
            Logger.getLogger(DetalleCompraDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void Actualizar(List<String> changedRow, Statement st, String actionQuery) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
