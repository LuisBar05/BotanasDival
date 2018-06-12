package POJOS;

/**
 *
 * @author Luis
 */
public class ClientesFactura {

    private int idClient;
    private String nombre, apeMat, apePat, RFC, telefono, eMail;
    private char status;

    public void setIdClient(int idClient) {
        this.idClient = idClient;
    }

    public int getIdClient() {
        return idClient;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getNombre() {
        return nombre;
    }

    public void setApeMat(String apeMat) {
        this.apeMat = apeMat;
    }

    public String getApeMat() {
        return apeMat;
    }

    public void setApePat(String apePat) {
        this.apePat = apePat;
    }

    public String getApePat() {
        return apePat;
    }

    public void setRFC(String RFC) {
        this.RFC = RFC;
    }

    public String getRFC() {
        return RFC;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setEmail(String eMail) {
        this.eMail = eMail;
    }

    public String getEmail() {
        return eMail;
    }

    public void setStatus(char status) {
        this.status = status;
    }

    public char getStatus() {
        return status;
    }

}
