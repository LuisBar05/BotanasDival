package POJOS;

import java.sql.Date;

/**
 *
 * @author Luis
 */
public class Ingredientes {

    private int idIngred, idUniMed, idProv;
    private float cantidad, precioCompra;
    private String nombreIngred;
    private Character status;

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

    public int getIdUniMed() {
        return idUniMed;
    }

    public void setIdUniMed(int idUniMed) {
        this.idUniMed = idUniMed;
    }

    public int getIdProv() {
        return idProv;
    }

    public void setIdProv(int idProv) {
        this.idProv = idProv;
    }

    public double getPrecioCompra() {
        return precioCompra;
    }

    public void setPrecioCompra(float precioCompra) {
        this.precioCompra = precioCompra;
    }

    public String getNombreIngred() {
        return nombreIngred;
    }

    public void setNombreIngred(String nombreIngred) {
        this.nombreIngred = nombreIngred;
    }

    public Character getStatus() {
        return status;
    }

    public void setStatus(Character status) {
        this.status = status;
    }

}
