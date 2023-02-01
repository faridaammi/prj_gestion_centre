package application.Models;

import application.Controllers.Connexion;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

public class HistoriqueResponsable extends Employe{
    private int id_responsable;
    public int getId_responsable() {
        return id_responsable;
    }

    public void setId_responsable(int id_responsable) {
        this.id_responsable = id_responsable;
    }
    public HistoriqueResponsable(int id_responsable, String nom_Employe, String prenom_Employe, String profession_Employe, Date dateNaissance_Employe, String adresse, String email_utilisateur, int tele_utilisateur, Date date_de_creation) {
        super(adresse, email_utilisateur, tele_utilisateur, date_de_creation, nom_Employe, prenom_Employe, profession_Employe, dateNaissance_Employe);
        this.id_responsable=id_responsable;
    }


    static ArrayList<HistoriqueResponsable> lHResponsable ;
    public static ObservableList<HistoriqueResponsable> ListeHistoriqueResponsable() throws SQLException {
        lHResponsable=new ArrayList<HistoriqueResponsable>();
        Connection con= Connexion.getConnection();
        HistoriqueResponsable responsablecopy;
        try {
            ResultSet resultSet=con.createStatement().executeQuery("SELECT `id_responsablecopy`, `nomEmploye`, `prenomEmploye`, `professionEmploye`, `dateNaissanceEmploye`,`adresse`,`tele_utilisateur`,`email_utilisateur`,`datecreation_utiisateur` FROM `employe` e JOIN `utilisateur` u ON e.id_utlisateur=u.id_utlisateur JOIN `responsable_copy` ON `id_employecopy`=`idEmploye`;");
            while (resultSet.next()){
                //(int id_Employe, String nom_Employe, String prenom_Employe, String profession_Employe, Date dateNaissance_Employe,String adresse, String email_utilisateur, int tele_utilisateur, Date date_de_creation)
                responsablecopy = new HistoriqueResponsable(resultSet.getInt("id_responsablecopy"),resultSet.getString("nomEmploye"),resultSet.getString("prenomEmploye")
                        ,resultSet.getString("professionEmploye"),resultSet.getDate("dateNaissanceEmploye")
                        ,resultSet.getString("adresse"),resultSet.getString("email_utilisateur"),resultSet.getInt("tele_utilisateur")
                        ,resultSet.getDate("datecreation_utiisateur"));
                lHResponsable.add(responsablecopy);

            }
        }catch (Exception e)
        {System.out.println("ERROR :"+e.getMessage());}
        finally {
            con.close();
        }
        return  FXCollections.observableArrayList(lHResponsable);
    }
}
