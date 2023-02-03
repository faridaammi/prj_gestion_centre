package application.Models;

import application.Controllers.Connexion;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

public class Dashbord_statistique {

    private static final String SQL_GETTOTALCENTRES ="SELECT COUNT(*) FROM `centre` WHERE centre_archivee= 0;";
    private static final String SQL_GETTOTALORGANISMES ="SELECT COUNT(*) FROM `organisme` WHERE organisme_archivee = 0;";
    private static final String SQL_GETTOTALRESERVATIONACCEPTER ="SELECT COUNT(*) FROM `reservation` WHERE etats_Reservation = 'Confirmed';";
    private static final String SQL_GETTOTALRESERVATIONANNULER ="SELECT COUNT(*) FROM `reservation` WHERE etats_Reservation = 'Cancelled';";
    private static final String SQL_GETRECENTRESERVATION ="SELECT date_Reservation,organisme.nom_Organisme,centre.nomCentre,dateDebut_Reservation,dateFin_Reservation FROM `reservation` JOIN organisme ON organisme.id_Organisme= reservation.id_Organisme JOIN centre ON centre.idCentre = reservation.idCentre ORDER BY date_Reservation DESC  LIMIT 5;";
    private static final String SQL_GETDATAFORLINECHART ="SELECT MONTHNAME(date_Reservation) as Month, COUNT(*) as Total FROM `reservation` WHERE YEAR(date_Reservation) = YEAR(CURRENT_DATE) GROUP BY MONTHNAME(date_Reservation) ORDER BY FIELD(Month, 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December');" ;
    private String organisme_nom;
    private String centre_nom;
    private int num_salle;
    private Date date_reservation;
    private Date date_debut;
    private Date date_fin;

    public String getOrganisme_nom() {
        return organisme_nom;
    }

    public void setOrganisme_nom(String organisme_nom) {
        this.organisme_nom = organisme_nom;
    }

    public String getCentre_nom() {
        return centre_nom;
    }

    public void setCentre_nom(String centre_nom) {
        this.centre_nom = centre_nom;
    }

    public int getNum_salle() {
        return num_salle;
    }

    public void setNum_salle(int num_salle) {
        this.num_salle = num_salle;
    }

    public Date getDate_reservation() {
        return date_reservation;
    }

    public void setDate_reservation(Date date_reservation) {
        this.date_reservation = date_reservation;
    }

    public Date getDate_debut() {
        return date_debut;
    }

    public void setDate_debut(Date date_debut) {
        this.date_debut = date_debut;
    }

    public Date getDate_fin() {
        return date_fin;
    }

    public void setDate_fin(Date date_fin) {
        this.date_fin = date_fin;
    }
    public Dashbord_statistique(){}

    public Dashbord_statistique(String organisme_nom, String centre_nom, int num_salle, Date date_reservation, Date date_debut, Date date_fin) {
        this.organisme_nom = organisme_nom;
        this.centre_nom = centre_nom;
        this.num_salle = num_salle;
        this.date_reservation = date_reservation;
        this.date_debut = date_debut;
        this.date_fin = date_fin;
    }

    public static ArrayList<String> GetTolalinfo(){
        ArrayList<String> Totalstatistique = new ArrayList<>();
        try {
            Connection con = Connexion.getConnection();
            ResultSet resultSet = con.createStatement().executeQuery(SQL_GETTOTALCENTRES);
            resultSet.next();
            Totalstatistique.add(String.valueOf(resultSet.getInt(1)));
            resultSet = con.createStatement().executeQuery(SQL_GETTOTALORGANISMES);
            resultSet.next();
            Totalstatistique.add(String.valueOf(resultSet.getInt(1)));
            resultSet = con.createStatement().executeQuery(SQL_GETTOTALRESERVATIONACCEPTER);
            resultSet.next();
            Totalstatistique.add(String.valueOf(resultSet.getInt(1)));
            resultSet = con.createStatement().executeQuery(SQL_GETTOTALRESERVATIONANNULER);
            resultSet.next();
            Totalstatistique.add(String.valueOf(resultSet.getInt(1)));
            con.close();


        }
        catch (Exception ex){
            System.out.println("ERROR :"+ex.getMessage());
        }

        return Totalstatistique;
    }
    public static ObservableList<Dashbord_statistique> getreservationlist(){
        ArrayList<Dashbord_statistique> list = new ArrayList<>();
        Dashbord_statistique dashbordinfo;
        try {
            Connection con = Connexion.getConnection();
            ResultSet resultSet = con.createStatement().executeQuery(SQL_GETRECENTRESERVATION);
            while (resultSet.next()){
                dashbordinfo = new Dashbord_statistique(resultSet.getString("nom_Organisme"), resultSet.getString("nomCentre"),23,resultSet.getDate("date_Reservation"),resultSet.getDate("dateDebut_Reservation"),resultSet.getDate("dateFin_Reservation"));
                list.add(dashbordinfo);
            }
            con.close();

        }
        catch (Exception ex ){
            System.out.println("ERROR :"+ex.getMessage());

        }

        return FXCollections.observableArrayList(list);
    }
    public  static ArrayList<Data_Charts> getdataforlinechart(){
        ArrayList<Data_Charts> Data_linechart= new ArrayList<Data_Charts>();
        try {
            Connection con = Connexion.getConnection();
            ResultSet resultSet = con.createStatement().executeQuery(SQL_GETDATAFORLINECHART);
            while (resultSet.next()){
                Data_linechart.add(new Data_Charts(resultSet.getString(1),resultSet.getInt(2)));
            }

        }
        catch (Exception ex ){

        }

        return  Data_linechart;
    }

}
