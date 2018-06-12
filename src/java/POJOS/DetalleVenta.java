package POJOS;

/**
 *
 * @author Luis
 */
public class DetalleVenta {

    private int idDetVta, idVta, cantidad;
    private String codProduct;
    private char status;

    public int getIdDetVta() {
        return idDetVta;
    }

    public void setIdDetVta(int idDetVta) {
        this.idDetVta = idDetVta;
    }

    public int getIdVta() {
        return idVta;
    }

    public void setIdVta(int idVta) {
        this.idVta = idVta;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public String getCodProduct() {
        return codProduct;
    }

    public void setCodProduct(String codProduct) {
        this.codProduct = codProduct;
    }

    public char getStatus() {
        return status;
    }

    public void setStatus(char status) {
        this.status = status;
    }

}
