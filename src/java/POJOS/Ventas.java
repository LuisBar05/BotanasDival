package POJOS;

import java.util.Date;

/**
 *
 * @author Luis
 */
public class Ventas {

    private int idVta;
    private float subtotal, impuesto, totalVta;
    private Date fechaVta;
    private char status;

    public void setIdVta(int id_vta) {
        this.idVta = id_vta;
    }

    public int getIdVta() {
        return idVta;
    }

    public void setSubtotal(float subtotal) {
        this.subtotal = subtotal;
    }

    public double getSubtotal() {
        return subtotal;
    }

    public void setImpuesto(float impuesto) {
        this.impuesto = impuesto;
    }

    public double getImpuesto() {
        return impuesto;
    }

    public void setTotalVta(float totalVta) {
        this.totalVta = totalVta;
    }

    public double getTotalVta() {
        return totalVta;
    }

    public void setFechaVta(Date fechaVta) {
        this.fechaVta = fechaVta;
    }

    public Date getFechaVta() {
        return fechaVta;
    }

    public void setStatus(char status) {
        this.status = status;
    }

    public char getStatus() {
        return status;
    }

}
