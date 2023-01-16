package application.Models;

import java.util.Date;

public class Responsable extends Utilisateur {

    public Responsable(int id_utilisateur, String motdepass_utilisateur, String nom_utilisateur, String adresse, String email_utilisateur, int tele_utilisateur, int etat_utilisateur, Date date_de_creation, Date date_de_validation, int IP_utilisateur, long token) {
        super(id_utilisateur, motdepass_utilisateur, nom_utilisateur, adresse, email_utilisateur, tele_utilisateur, etat_utilisateur, date_de_creation, date_de_validation, IP_utilisateur, token);
    }
}
