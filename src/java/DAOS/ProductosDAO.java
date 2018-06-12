package DAOS;

import POJOS.Productos;
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
public class ProductosDAO<T> implements IDAO {

    private List<Productos> myList = new LinkedList<>();

    @Override
    public List<Productos> Consultar(ResultSet rs) {
        try {
            while (rs.next()) {
                Productos prod = new Productos();
                prod.setIdProduct(rs.getInt("Id_Producto"));
                prod.setCodProduct(rs.getString("Cod_Producto"));
                prod.setNombreProduct(rs.getString("Descripcion"));
                prod.setIdReceta(rs.getInt("Id_Receta"));
                prod.setIdPresent(rs.getInt("Id_Presentacion"));
                prod.setPrecio(rs.getFloat("Precio"));
                prod.setPrecio(rs.getFloat("Costo_Unit"));
                prod.setStatus(rs.getString("Status").charAt(0));
                myList.add(prod);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductosDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return myList;
    }

    @Override
    public void Insertar(List<String> inserted, Statement st, String actionQuery) {
        String values = "values('" + inserted.get(0) + "', '" + inserted.get(1) + "', " + inserted.get(2) + ", " + inserted.get(3)
                + ", " + inserted.get(4) + ", " + inserted.get(5) + ", '" + inserted.get(6) + "')";
        actionQuery = actionQuery.concat(" (Cod_Producto, Descripcion, Id_Receta, Id_Presentacion, Precio"
                + ", Costo_Unit, Status) ");

        try {
            st.executeUpdate(actionQuery.concat(values));
        } catch (SQLException ex) {
            Logger.getLogger(ProductosDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
