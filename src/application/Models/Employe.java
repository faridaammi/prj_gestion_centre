package application.Models;

import java.util.Date;

public class Employe extends Utilisateur{
    private int id_Employe;
    private String nom_Employe;
    private String prenom_Employe;
    private String profession_Employe;
    private Date dateNaissance_Employe;

    public Employe(){}
    public Employe(String nom_Employe){ this.nom_Employe = nom_Employe;}
    public Employe(String adresse, String email_utilisateur, int tele_utilisateur, Date date_de_creation, String nom_Employe, String prenom_Employe, String profession_Employe, Date dateNaissance_Employe,String motdepass_utilisateur) {
        super(adresse, email_utilisateur, tele_utilisateur, date_de_creation,motdepass_utilisateur);
        this.nom_Employe = nom_Employe;
        this.prenom_Employe = prenom_Employe;
        this.profession_Employe = profession_Employe;
        this.dateNaissance_Employe = dateNaissance_Employe;
    }

    public int getId_Employe() {
        return id_Employe;
    }

    public String getNom_Employe() {
        return nom_Employe;
    }

    public String getPrenom_Employe() {
        return prenom_Employe;
    }

    public String getProfession_Employe() {
        return profession_Employe;
    }

    public Date getDateNaissance_Employe() {
        return dateNaissance_Employe;
    }

    public void setId_Employe(int id_Employe) {
        this.id_Employe = id_Employe;
    }

    public void setNom_Employe(String nom_Employe) {
        this.nom_Employe = nom_Employe;
    }

    public void setPrenom_Employe(String prenom_Employe) {
        this.prenom_Employe = prenom_Employe;
    }

    public void setProfession_Employe(String profession_Employe) {
        this.profession_Employe = profession_Employe;
    }

    public void setDateNaissance_Employe(Date dateNaissance_Employe) {
        this.dateNaissance_Employe = dateNaissance_Employe;
    }

    public String toString(){
        return "";
    }
}
