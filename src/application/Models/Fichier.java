package application.Models;

public class Fichier {
   private static int Id_Fichier;
         private String   Nom_Fichier;

    public static int getId_Fichier() {
        return Id_Fichier;
    }

    public static void setId_Fichier(int id_Fichier) {
        Id_Fichier = id_Fichier;
    }

    public String getNom_Fichier() {
        return Nom_Fichier;
    }

    @Override
    public String toString() {
        return "Fichier{" +
                "Nom_Fichier='" + Nom_Fichier + '\'' +
                '}';
    }

    public void setNom_Fichier(String nom_Fichier) {
        Nom_Fichier = nom_Fichier;
    }
}
