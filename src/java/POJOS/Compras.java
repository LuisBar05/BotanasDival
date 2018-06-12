package POJOS;

import java.sql.Date;

/**
 *
 * @author Luis
 */
public class Compras {

    private int idCompra;
    private double subtotal, impuesto, totalCompra;
    private Date fechaCompra;
    private char status;

    public void setIdCompra(int idCompra) {
        this.idCompra = idCompra;
    }

    public int getIdCompra() {
        return idCompra;
    }

    public void setSubtotal(double subtotal) {
        this.subtotal = subtotal;
    }

    public double getSubtotal() {
        return subtotal;
    }

    public void setImpuesto(double impuesto) {
        this.impuesto = impuesto;
    }

    public double getImpuesto() {
        return impuesto;
    }

    public void setTotalCompra(double totalCompra) {
        this.totalCompra = totalCompra;
    }

    public double getTotalCompra() {
        return totalCompra;
    }

    public void setFechaCompra(Date fechaCompra) {
        this.fechaCompra = fechaCompra;
    }

    public Date getFechaCompra() {
        return fechaCompra;
    }

    public void setStatus(char status) {
        this.status = status;
    }

    public char getStatus() {
        return status;
    }

}
