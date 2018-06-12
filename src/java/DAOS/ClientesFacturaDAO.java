package DAOS;

import POJOS.ClientesFactura;
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
public class ClientesFacturaDAO<T> implements IDAO {

    private List<ClientesFactura> myList = new LinkedList<>();

    @Override
    public List<ClientesFactura> Consultar(ResultSet rs) {
        try {
            while (rs.next()) {
                ClientesFactura client = new ClientesFactura();
                client.setIdClient(rs.getInt("Id_Cliente"));
                client.setApePat(rs.getString("Apellido_Pat"));
                client.setApeMat(rs.getString("Apellido_Mat"));
                client.setNombre(rs.getString("Nombre(s)"));
                client.setRFC(rs.getString("RFC"));
                client.setTelefono(rs.getString("Telefono"));
                client.setEmail(rs.getString("Email"));
                client.setStatus(rs.getString("Status").charAt(0));
                myList.add(client);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ClientesFacturaDAO.class.getName()).log(Level.SEVERE, null, ex);
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

        System.out.println(values);

        actionQuery = actionQuery.concat(" (Apellido_Pat, Apellido_Mat, `Nombre(s)`, RFC, Telefono, Email, Status) ");

        try {
            st.executeUpdate(actionQuery.concat(values));
        } catch (SQLException ex) {
            ex.printStackTrace();
            Logger.getLogger(ClientesFacturaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
