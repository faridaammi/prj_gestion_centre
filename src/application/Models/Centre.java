package application.Models;

import application.Controllers.Connexion;
import application.Controllers.organisme_formController;
import javafx.beans.Observable;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.scene.control.Alert;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

public class Centre {
    private final String SQL_INSERT =" INSERT INTO  `centre`( `nomCentre`, `adresseCentre`, `descriptionCentre`, `idEmploye`) VALUES (?,?,?,?) ";
    private String nom_centre;
    private String adresse_centre;
    private String description_centre;
    private int  id_employe;


    public Centre(String nom_centre, String adresse_centre, String description_centre,int id_employe) {
        this.nom_centre = nom_centre;
        this.adresse_centre = adresse_centre;
        this.description_centre = description_centre;
        this.id_employe = id_employe;
    }

    public int getId_employe() {
        return id_employe;
    }

    public void setId_employe(int id_employe) {
        this.id_employe = id_employe;
    }

    public static ArrayList<Responsable> getListeResponsable() {
        return ListeResponsable;
    }

    public static void setListeResponsable(ArrayList<Responsable> listeResponsable) {
        ListeResponsable = listeResponsable;
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

    private static ArrayList<Responsable> ListeResponsable;
    public static ArrayList<Responsable> Charger_combo()
    {
        ListeResponsable =new ArrayList<>();
        Connection con = Connexion.getConnection();
        try {
            final String remplicage_combox ="SELECT `nomEmploye` ,r.id_responsable  FROM `employe` e JOIN `responsable` r ON e.idEmploye=r.id_employe ";

            PreparedStatement cmd = con.prepareStatement(remplicage_combox);
            ResultSet resultSet = cmd.executeQuery();
            while (resultSet.next()){
                String s=resultSet.getString("nomEmploye");
                System.out.println(s);
                ListeResponsable.add(new Responsable(resultSet.getInt("id_responsable"),resultSet.getString("nomEmploye"))) ;    }
            System.out.println(ListeResponsable.get(0));

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return ListeResponsable;



    }
    public int getidrespobyname(String nom_respo){
        for (Responsable respo: ListeResponsable) {
            if (respo.getNom_Employe()==nom_respo){
                return  respo.getId_responsable();
            }
        }
        return -1;
    }

    public  void ajouter (String nom_respo)
    { Connection con = Connexion.getConnection();
        try {
            int id_respo= getidrespobyname(nom_respo);
            PreparedStatement cmd = con.prepareStatement(SQL_INSERT);
            cmd.setString(1,getNom_centre());
            cmd.setString(2,getAdresse_centre());
            cmd.setString(3,getDescription_centre());
            //cmd.setString(4,getId_employe());


        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

}



