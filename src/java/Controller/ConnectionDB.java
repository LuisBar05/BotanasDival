package Controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Luis
 */
public class ConnectionDB {

    private String baseDatos = "db_dival";
    private String máquina = "localhost";
    private String usuario = "root";
    private String password = "BalbyReny210897";
    private int puerto = 3306;
    private String servidor = "";
    private Connection conexion = null;

    public ConnectionDB() {
        this.servidor = "jdbc:mysql://" + this.máquina + ":" + this.puerto + "/" + this.baseDatos;

        //Registrar Driver
        try {
            Class.forName("org.gjt.mm.mysql.Driver");
        } catch (ClassNotFoundException cnfe) {
            System.err.println("ERROR AL REGISTRAR EL DRIVER");
            System.exit(0);
        }

        //Establecer conexión con el servidor
        try {
            conexion = DriverManager.getConnection(this.servidor, this.usuario, this.password);
        } catch (SQLException sqle) {
            System.err.println("ERROR AL CONECTAR CON EL SERVIDOR");
            System.exit(0);
        }

    }

    public void setConexion(Connection conexion) {
        this.conexion = conexion;
    }

    public Connection getConexion() {
        return conexion;
    }
}
