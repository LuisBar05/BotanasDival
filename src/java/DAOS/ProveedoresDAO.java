package DAOS;

import POJOS.Proveedores;
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
public class ProveedoresDAO<T> implements IDAO {

    private List<Proveedores> myList = new LinkedList<>();

    @Override
    public List<Proveedores> Consultar(ResultSet rs) {
        try {
            while (rs.next()) {
                Proveedores prov = new Proveedores();
                prov.setIdProv(rs.getInt("Id_Proveedor"));
                prov.setNombreProv(rs.getString("Nombre_Prov"));
                prov.setDomicilio(rs.getString("Domicilio"));
                prov.setCiudad(rs.getString("Ciudad"));
                prov.setCP(rs.getString("CP"));
                prov.setTelefono(rs.getString("Telefono"));
                prov.setStatus(rs.getString("Status").charAt(0));
                myList.add(prov);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProveedoresDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return myList;
    }

    @Override
    public void Insertar(List<String> inserted, Statement st, String actionQuery) {
        String values = "values('";
        for (int i = 0; i < inserted.size(); i++) {
            if (i != inserted.size() - 1) {
                values = values.concat(inserted.get(i)).concat("', '");
            } else {
                values = values.concat(inserted.get(i)).concat("')");
            }
        }

        actionQuery = actionQuery.concat(" (Nombre_Prov, Domicilio, Ciudad, CP, Telefono, Status) ");

        try {
            st.executeUpdate(actionQuery.concat(values));
        } catch (SQLException ex) {
            Logger.getLogger(ProveedoresDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
