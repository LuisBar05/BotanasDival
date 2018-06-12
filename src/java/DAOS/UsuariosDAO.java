package DAOS;

import POJOS.Usuarios;
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
public class UsuariosDAO<T> implements IDAO {

    private List<Usuarios> myList = new LinkedList<>();

    @Override
    public List<Usuarios> Consultar(ResultSet rs) {
        try {
            while (rs.next()) {
                Usuarios user = new Usuarios();
                user.setIdUsuario(rs.getInt("Id_Usuario"));
                user.setNombreUsuario(rs.getString("Nombre_Usuario"));
                user.seteMail(rs.getString("Email"));
                user.setContraseña(rs.getString("Contraseña"));
                user.setTipoUsuario(rs.getString("Tipo_Usuario"));
                user.setFechaCreacion(rs.getDate("Fecha_Creacion"));
                user.setStatus(rs.getString("Status").charAt(0));
                myList.add(user);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UsuariosDAO.class.getName()).log(Level.SEVERE, null, ex);
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

        actionQuery = actionQuery.concat(" (Nombre_Usuario, Email, Contraseña, Tipo_Usuario, Fecha_Creacion, Status) ");

        try {
            st.executeUpdate(actionQuery.concat(values));
        } catch (SQLException ex) {
            ex.printStackTrace();
            Logger.getLogger(UsuariosDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void Actualizar(List<String> changedRow, Statement st, String actionQuery) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
