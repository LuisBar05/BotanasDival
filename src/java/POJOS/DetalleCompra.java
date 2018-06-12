package POJOS;

/**
 *
 * @author Luis
 */
public class DetalleCompra {

    private int idDetCompra, idCompra, idIngrediente;
    private float cantidad;
    private char status;

    /**
     * @return the idDetCompra
     */
    public int getIdDetCompra() {
        return idDetCompra;
    }

    /**
     * @param idDetCompra the idDetCompra to set
     */
    public void setIdDetCompra(int idDetCompra) {
        this.idDetCompra = idDetCompra;
    }

    /**
     * @return the idCompra
     */
    public int getIdCompra() {
        return idCompra;
    }

    /**
     * @param idCompra the idCompra to set
     */
    public void setIdCompra(int idCompra) {
        this.idCompra = idCompra;
    }

    /**
     * @return the idIngrediente
     */
    public int getIdIngrediente() {
        return idIngrediente;
    }

    /**
     * @param idIngrediente the idIngrediente to set
     */
    public void setIdIngrediente(int idIngrediente) {
        this.idIngrediente = idIngrediente;
    }

    /**
     * @return the cantidad
     */
    public float getCantidad() {
        return cantidad;
    }

    /**
     * @param cantidad the cantidad to set
     */
    public void setCantidad(float cantidad) {
        this.cantidad = cantidad;
    }

    /**
     * @return the status
     */
    public char getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(char status) {
        this.status = status;
    }

}
