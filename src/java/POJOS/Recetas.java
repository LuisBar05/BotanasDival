package POJOS;

/**
 *
 * @author Luis
 */
public class Recetas {

    private int idReceta, idCat, idUniMed;
    private String descripcion;
    private float merma, costoKilo;
    private char status;

    public int getIdReceta() {
        return idReceta;
    }

    public void setIdReceta(int idReceta) {
        this.idReceta = idReceta;
    }

    public int getIdCat() {
        return idCat;
    }

    public void setIdCat(int idCat) {
        this.idCat = idCat;
    }

    public int getIdUniMed() {
        return idUniMed;
    }

    public void setIdUniMed(int idUniMed) {
        this.idUniMed = idUniMed;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public float getMerma() {
        return merma;
    }

    public void setMerma(float merma) {
        this.merma = merma;
    }

    public float getCostoKilo() {
        return costoKilo;
    }

    public void setCostoKilo(float costoKilo) {
        this.costoKilo = costoKilo;
    }

    public char getStatus() {
        return status;
    }

    public void setStatus(char status) {
        this.status = status;
    }

}
