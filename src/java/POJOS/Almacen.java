package POJOS;

import java.sql.Date;

/**
 *
 * @author Luis
 */
public class Almacen {

    private int idAlmacen, idIngred, cantidad;
    private char status;
    private Date fechaCaducidad;

    public void setIdAlmacen(int idAlmacen) {
        this.idAlmacen = idAlmacen;
    }

    public int getIdAlmacen() {
        return idAlmacen;
    }

    public void setIdIngred(int idIngred) {
        this.idIngred = idIngred;
    }

    public int getIdIngred() {
        return idIngred;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setStatus(char status) {
        this.status = status;
    }

    public char getStatus() {
        return status;
    }

    public void setFechaCaducidad(Date fechaCaducidad) {
        this.fechaCaducidad = fechaCaducidad;
    }

    public Date getFechaCaducidad() {
        return fechaCaducidad;
    }

}
