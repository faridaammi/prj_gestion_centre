package application.Models;
import java.awt.image.BufferedImage;
import java.util.Date;

public class Organisme {
    private int id_organisme;
    private String code_organisme;
    private String nom_organisme;
    private  String type_organisme;
    private String status_organisme;
    private String date_decreation;
    private String telephone;
    private  String email;
    private String president_organisme;
    private BufferedImage  logo_organisme;

    public String getDate_decreation() {
        return date_decreation;
    }

    public void setDate_decreation(String date_decreation) {
        this.date_decreation = date_decreation;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }





    public int getId_organisme() {
        return id_organisme;
    }

    public String getCode_organisme() {
        return code_organisme;
    }

    public String getNom_organisme() {
        return nom_organisme;
    }

    public String getType_organisme() {
        return type_organisme;
    }

    public String getStatus_organisme() {
        return status_organisme;
    }

    public String getPresident_organisme() {
        return president_organisme;
    }

    public BufferedImage getLogo_organisme() {
        return logo_organisme;
    }

    public void setId_organisme(int id_organisme) {
        this.id_organisme = id_organisme;
    }

    public void setCode_organisme(String code_organisme) {
        this.code_organisme = code_organisme;
    }

    public void setNom_organisme(String nom_organisme) {
        this.nom_organisme = nom_organisme;
    }

    public void setType_organisme(String type_organisme) {
        this.type_organisme = type_organisme;
    }

    public void setStatus_organisme(String status_organisme) {
        this.status_organisme = status_organisme;
    }

    public void setPresident_organisme(String president_organisme) {
        this.president_organisme = president_organisme;
    }

    public void setLogo_organisme(BufferedImage logo_organisme) {
        this.logo_organisme = logo_organisme;
    }

    public Organisme(int id_organisme, String code_organisme, String nom_organisme, String type_organisme, String status_organisme, String date_decreation, String telephone, String email, String president_organisme) {
        this.id_organisme = id_organisme;
        this.code_organisme = code_organisme;
        this.nom_organisme = nom_organisme;
        this.type_organisme = type_organisme;
        this.status_organisme = status_organisme;
        this.date_decreation = date_decreation;
        this.telephone = telephone;
        this.email = email;
        this.president_organisme = president_organisme;
       // this.logo_organisme = logo_organisme;
    }

    @Override
    public String toString() {
        return "Organisme{" +
                "id_organisme=" + id_organisme +
                ", code_organisme=" + code_organisme +
                ", nom_organisme='" + nom_organisme + '\'' +
                ", type_organisme='" + type_organisme + '\'' +
                ", status_organisme='" + status_organisme + '\'' +
                ", date_decreation=" + date_decreation +
                ", telephone='" + telephone + '\'' +
                ", email='" + email + '\'' +
                ", president_organisme='" + president_organisme + '\'' +
                ", logo_organisme=" + logo_organisme +
                '}';
    }
}
