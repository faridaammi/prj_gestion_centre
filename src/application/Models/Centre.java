package application.Models;

public class Centre {
    private int id_centre;
    private String nom_centre;
    private String adresse_centre;

    public Centre(int id_centre, String nom_centre, String adresse_centre, String description_centre) {
        this.id_centre = id_centre;
        this.nom_centre = nom_centre;
        this.adresse_centre = adresse_centre;
        this.description_centre = description_centre;
    }

    public int getId_centre() {
        return id_centre;
    }

    public void setId_centre(int id_centre) {
        this.id_centre = id_centre;
    }

    public String getNom_centre() {
        return nom_centre;
    }

    public void setNom_centre(String nom_centre) {
        this.nom_centre = nom_centre;
    }

    public String getAdresse_centre() {
        return adresse_centre;
    }

    public void setAdresse_centre(String adresse_centre) {
        this.adresse_centre = adresse_centre;
    }

    public String getDescription_centre() {
        return description_centre;
    }

    public void setDescription_centre(String description_centre) {
        this.description_centre = description_centre;
    }

    private String description_centre;
}

