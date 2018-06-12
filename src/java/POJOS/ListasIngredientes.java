package POJOS;

/**
 *
 * @author Luis
 */
public class ListasIngredientes {

    private int idListIngred, idReceta, idIngred;
    private float cantidad;
    private char status;

    public int getIdListIngred() {
        return idListIngred;
    }

    public void setIdListIngred(int idListIngred) {
        this.idListIngred = idListIngred;
    }

    public int getIdReceta() {
        return idReceta;
    }

    public void setIdReceta(int idReceta) {
        this.idReceta = idReceta;
    }

    public int getIdIngred() {
        return idIngred;
    }

    public void setIdIngred(int idIngred) {
        this.idIngred = idIngred;
    }

    public float getCantidad() {
        return cantidad;
    }

    public void setCantidad(float cantidad) {
        this.cantidad = cantidad;
    }

    public char getStatus() {
        return status;
    }

    public void setStatus(char status) {
        this.status = status;
    }

}
