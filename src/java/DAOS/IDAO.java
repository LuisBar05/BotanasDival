package DAOS;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

/**
 *
 * @author Luis
 */
public interface IDAO {

    public List Consultar(ResultSet rs);

    public void Insertar(List<String> inserted, Statement st, String actionQuery);

    public void Actualizar(List<String> changedRow, Statement st, String actionQuery);
}
