package POJOS;

import java.sql.Date;

/**
 *
 * @author Luis
 */
public class Productos {

    private int idProduct, idReceta, idPresent;
    private String codProduct, descripcion;
    private float precio, costoUnit;
    private char status;

    public int getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(int idProduct) {
        this.idProduct = idProduct;
    }

    public int getIdReceta() {
        return idReceta;
    }

    public void setIdReceta(int idReceta) {
        this.idReceta = idReceta;
    }

    public int getIdPresent() {
        return idPresent;
    }

    public void setIdPresent(int idPresent) {
        this.idPresent = idPresent;
    }

    public String getCodProduct() {
        return codProduct;
    }

    public void setCodProduct(String codProduct) {
        this.codProduct = codProduct;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setNombreProduct(String descripcion) {
        this.descripcion = descripcion;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

    public void setCostoUnit(float costoUnit) {
        this.costoUnit = costoUnit;
    }

    public float getCostoUnit() {
        return costoUnit;
    }

    public char getStatus() {
        return status;
    }

    public void setStatus(char status) {
        this.status = status;
    }

}
