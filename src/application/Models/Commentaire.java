package application.Models;

import javafx.scene.chart.PieChart;

import java.util.Date;

public class Commentaire {
    private  int id_commentaire;
    private Date date_commentaire;
    private String descreption_commentaires;

    public Commentaire(int id_commentaire, Date date_commentaire, String descreption_commentaires) {
        this.id_commentaire = id_commentaire;
        this.date_commentaire = date_commentaire;
        this.descreption_commentaires = descreption_commentaires;
    }

    public int getId_commentaire() {
        return id_commentaire;
    }

    public void setId_commentaire(int id_commentaire) {
        this.id_commentaire = id_commentaire;
    }

    public Date getDate_commentaire() {
        return date_commentaire;
    }

    public void setDate_commentaire(Date date_commentaire) {
        this.date_commentaire = date_commentaire;
    }

    public String getDescreption_commentaires() {
        return descreption_commentaires;
    }

    public void setDescreption_commentaires(String descreption_commentaires) {
        this.descreption_commentaires = descreption_commentaires;
    }

    @Override
    public String toString() {
        return "Commentaire{" +
                "id_commentaire=" + id_commentaire +
                ", date_commentaire=" + date_commentaire +
                ", descreption_commentaires='" + descreption_commentaires + '\'' +
                '}';
    }
}
