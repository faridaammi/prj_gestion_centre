package application.Models;

import application.Controllers.Connexion;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

public class Details_reservation {
    private int id_Reservation;
    private Date date_debut;
    private Date date_fin;
    private Date date_reservation;
    private String type;
    private String etats;
    private String centre;
    private String code_organisme;
    private String organisme;
    private String president;
    private String numero_tele;

    public Details_reservation(int id_Reservation, Date date_debut, Date date_fin, Date date_reservation,
                               String type, String etats, String centre, String code_organisme, String organisme,
                               String president) {
        this.id_Reservation = id_Reservation;
        this.date_debut = date_debut;
        this.date_fin = date_fin;
        this.date_reservation = date_reservation;
        this.type = type;
        this.etats = etats;
        this.centre = centre;
        this.code_organisme = code_organisme;
        this.organisme = organisme;
        this.president = president;
//        this.numero_tele = numero_tele;
    }

    public int getCode_reservation() {
        return id_Reservation;
    }

    public void setCode_reservation(int code_reservation) {
        this.id_Reservation = code_reservation;
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

    public Date getDate_reservation() {
        return date_reservation;
    }

    public void setDate_reservation(Date date_reservation) {
        this.date_reservation = date_reservation;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getEtats() {
        return etats;
    }

    public void setEtats(String etats) {
        this.etats = etats;
    }

    public String getCentre() {
        return centre;
    }

    public void setCentre(String centre) {
        this.centre = centre;
    }

    public String getCode_organisme() {
        return code_organisme;
    }

    public void setCode_organisme(String code_organisme) {
        this.code_organisme = code_organisme;
    }

    public String getOrganisme() {
        return organisme;
    }

    public void setOrganisme(String organisme) {
        this.organisme = organisme;
    }

    public String getPresident() {
        return president;
    }

    public void setPresident(String president) {
        this.president = president;
    }

    public String getNumero_tele() {
        return numero_tele;
    }

    public void setNumero_tele(String numero_tele) {
        this.numero_tele = numero_tele;
    }

    static ArrayList<Details_reservation> lst_reservation;

    public static ObservableList<Details_reservation> getlistDetails(int id){
        lst_reservation = new ArrayList<>();
        Connection con = Connexion.getConnection();
        Details_reservation details_reservation;
        try{
            ResultSet resultSet = con.createStatement().executeQuery("SELECT reservation.id_Reservation as 'id_Reservation'," +
                    "reservation.dateDebut_Reservation,reservation.dateFin_Reservation,reservation.date_Reservation," +
                    "reservation.type_Reservation,reservation.etats_Reservation,centre.nomCentre," +
                    "organisme.code_Organisme,organisme.nom_Organisme,organisme.president_Organisme " +
                    "FROM `reservation` join centre on reservation.idCentre = centre.idCentre join organisme " +
                    "on organisme.id_Organisme = reservation.id_Organisme where reservation.id_Reservation = "+id+";");
            while (resultSet.next()){
                details_reservation = new Details_reservation(
                        resultSet.getInt("id_Reservation"),
                        resultSet.getDate("dateDebut_Reservation"),
                        resultSet.getDate("dateFin_Reservation"),
                        resultSet.getDate("date_Reservation"),
                        resultSet.getString("type_Reservation"),
                        resultSet.getString("etats_Reservation"),
                        resultSet.getString("nomCentre"),
                        resultSet.getString("code_Organisme"),
                        resultSet.getString("nom_Organisme"),
                        resultSet.getString("president_Organisme"));
                lst_reservation.add(details_reservation);
            }
            con.close();
        }catch (Exception ex){
            System.out.println("ERROR :"+ex.getMessage());
        }
        return  FXCollections.observableArrayList(lst_reservation);
    }
}
